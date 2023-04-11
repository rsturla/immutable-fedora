# Robert's Fedora Silverblue Image

This is an OCI image based on Fedora Silverblue that is tuned for my personal use-cases.
The image is built twice daily and is available for anybody to rebase to.

## Features

- Security
  - [x] Automated Flatpak updates
  - [x] Automated OS updates
  - [x] Automated RPM updates
  - [x] [ClamAV](https://www.clamav.net/)
- GNOME Customizations
  - [x] [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
  - [x] [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
  - [x] [AppIndicator](https://extensions.gnome.org/extension/615/appindicator-support/)
- Development Tools
  - [x] [Podman](https://podman.io/getting-started/installation)
  - [x] [VS Code](https://code.visualstudio.com/)
  - [x] [Distrobox](https://github.com/89luca89/distrobox)
- Productivity Tools
  - [x] [Chromium](https://www.chromium.org/Home)
  - [x] [1Password](https://1password.com/)
  - [x] [Virtual Machine Manager](https://virt-manager.org/)
  - [x] [OpenVPN3](https://openvpn.net/cloud-docs/owner/connectors/connector-user-guides/openvpn-3-client-for-linux.html)

## Usage

To use this image, you must first install [Fedora Silverblue](https://silverblue.fedoraproject.org/), where you can then
run the following command:

```bash
$ rpm-ostree rebase ostree-unverified-registry:ghcr.io/rsturla/silverblue:stable
```

This will rebase your system to the latest stable version of Fedora Silverblue with my customizations.
We also provide an image for Fedora Silverblue 38, which uses the latest GNOME version, but this version is currently in
pre-release, so it is not recommended for production use.

```bash
$ rpm-ostree rebase ostree-unverified-registry:ghcr.io/rsturla/silverblue:38
```

A complete list of available tags can be found [here](https://github.com/rsturla/immutable-fedora/pkgs/container/silverblue).

You can also install the image using the [ISO](https://github.com/rsturla/immutable-fedora/releases), where you will always be on the latest version of your
chosen major release.

## Development

To build this image, you can either use Docker or Podman. The following commands will build the image:

```bash
# Docker
$ docker build -t ghcr.io/rsturla/silverblue:development -f Containerfile .

# Podman
$ podman build -t ghcr.io/rsturla/silverblue:development .
```

Although this repository is configured to build pull request images you are able to rebase to. Just check out the
GitHub job runs for the image tag.
