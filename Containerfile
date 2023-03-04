ARG FEDORA_MAJOR_VERSION=37
FROM quay.io/fedora-ostree-desktops/silverblue:${FEDORA_MAJOR_VERSION} AS final

COPY usr /usr

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

# Override default RPMs and install additional ones
RUN rpm-ostree override remove \
      toolbox firefox firefox-langpacks && \
    rpm-ostree install distrobox gnome-tweaks just \
  && \
    rm -rf /var/* /tmp/* && \
    ostree container commit

# Configure systemd services
RUN sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf \
  && \
    rm -rf /var/* /tmp/* && \
    ostree container commit
