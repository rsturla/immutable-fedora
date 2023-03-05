# Personal Fedora Silverblue

This is an OCI image based on Fedora Silverblue that is tuned for my personal use-cases.
The image is built twice daily and is available for anybody to rebase to.


## Features

- Automated updates
  - [x] Flatpaks
  - [x] OS updates
  - [x] RPMs
- GNOME Customizations
  - [x] [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
  - [x] [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
  - [x] [AppIndicator](https://extensions.gnome.org/extension/615/appindicator-support/)


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

We will be able to provide a custom ISO in the future, when [this upstream issue](rhinstaller/anaconda#4561) is
resolved.


## Development

To build this image, you can either use Docker or Podman.  The following commands will build the image:

```bash
# Docker
$ docker build -t ghcr.io/rsturla/silverblue:development -f Containerfile .

# Podman
$ podman build -t ghcr.io/rsturla/silverblue:development .
```

Although this repository is configured to build pull request images you are able to rebase to.  Just check out the
GitHub job runs for the image tag.
