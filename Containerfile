ARG FEDORA_MAJOR_VERSION=38
FROM quay.io/fedora-ostree-desktops/silverblue:${FEDORA_MAJOR_VERSION} AS final

ARG FEDORA_MAJOR_VERSION

COPY usr /usr
COPY etc /etc

# Configure systemd services
RUN sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf  && \
  systemctl enable rpm-ostreed-automatic.timer && \
  systemctl enable flatpak-system-update.timer && \
  systemctl unmask dconf-update.service && \
  systemctl enable dconf-update.service \
  && \
  sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/user.conf && \
  sed -i 's/#DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=15s/' /etc/systemd/system.conf \
  && \
  rm -rf /var/* /tmp/* && \
  ostree container commit

# Override default RPMs and install additional ones
RUN rpm-ostree override remove \
  toolbox \
  firefox firefox-langpacks \
  && \
  rpm-ostree install \
  distrobox \
  gnome-tweaks \
  just jq \
  libvirt virt-manager \
  chromium \
  zenity \
  && \
  rm -rf /var/* /tmp/* && \
  ostree container commit

# Customize GNOME
RUN rpm-ostree install \
  gnome-shell-extension-appindicator \
  gnome-shell-extension-dash-to-dock \
  gnome-shell-extension-blur-my-shell \
  yaru-theme \
  && \
  rm -rf /var/* /tmp/* && \
  ostree container commit

# Install OpenVPN3
RUN wget https://copr.fedorainfracloud.org/coprs/dsommers/openvpn3/repo/fedora-$(rpm -E %fedora)/dsommers-openvpn3-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/dsommers-openvpn3-fedora-$(rpm -E %fedora).repo && \
  rpm-ostree install \
  openvpn3 \
  kmod-ovpn-dco \
  && \
  rm -rf /etc/yum.repos.d/dsommers-openvpn3-fedora-$(rpm -E %fedora).repo \
  && \
  rm -rf /var/* /tmp/* && \
  ostree container commit

# Install Docker if Fedora 37 since it's not yet available on Fedora 38
RUN if [ "$FEDORA_MAJOR_VERSION" != "37" ]; then exit 0; fi \
  && \
  wget https://download.docker.com/linux/fedora/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo && \
  rpm-ostree install \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin \
  && \
  rm -f /etc/yum.repos.d/docker-ce.repo \
  && \
  systemctl enable docker.service \
  && \
  rm -rf /var/* /tmp/* && \
  ostree container commit

# Install Visual Studio Code
RUN rpm-ostree install \
  code \
  && \
  rm -f /etc/yum.repos.d/vscode.repo \
  && \
  rm -rf /var/* /tmp/* && \
  ostree container commit
