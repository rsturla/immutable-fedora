ARG FEDORA_MAJOR_VERSION=37
FROM quay.io/fedora-ostree-desktops/silverblue:${FEDORA_MAJOR_VERSION} AS final

COPY usr /usr
COPY etc /etc

# Install RPM Fusion repositories
RUN rpm-ostree install \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && \
  rpm-ostree install \
  rpmfusion-nonfree-release  \
  rpmfusion-free-release  \
  --uninstall=rpmfusion-free-release-$(rpm -E %fedora)-1.noarch  \
  --uninstall=rpmfusion-nonfree-release-$(rpm -E %fedora)-1.noarch \
  && \
  rm -rf /var/* /tmp/* && \
  ostree container commit

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
  toolbox firefox firefox-langpacks && \
  rpm-ostree install \
  distrobox \
  gnome-tweaks \
  just \
  libvirt virt-manager \
  chromium \
  && \
  wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && \
  chmod +x /usr/bin/yq \
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
