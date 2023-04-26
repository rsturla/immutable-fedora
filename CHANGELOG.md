# Changelog

## [1.3.0](https://github.com/rsturla/immutable-fedora/compare/v1.2.0...v1.3.0) (2023-04-17)


### Features

* Install Docker ([#40](https://github.com/rsturla/immutable-fedora/issues/40)) ([420a069](https://github.com/rsturla/immutable-fedora/commit/420a06913801c7817f878c7a8fc17a6c1f1ad418))


### Bug Fixes

* Create Steam devices udev rules ([#45](https://github.com/rsturla/immutable-fedora/issues/45)) ([cb07f97](https://github.com/rsturla/immutable-fedora/commit/cb07f974da5c6edd2ecb0cd71dc3766901342705))
* Install `xset` in nvidia images ([#46](https://github.com/rsturla/immutable-fedora/issues/46)) ([bf08782](https://github.com/rsturla/immutable-fedora/commit/bf08782aae860ebe3b4e65ed55d8ee3d407b02cd))
* Remove podman default configuration ([#43](https://github.com/rsturla/immutable-fedora/issues/43)) ([0a12e4b](https://github.com/rsturla/immutable-fedora/commit/0a12e4b15ce755b874e97a06a2f1a03d89aa79ec))

## [1.2.0](https://github.com/rsturla/immutable-fedora/compare/v1.1.0...v1.2.0) (2023-04-14)


### Features

* Add useful yum repositories ([#25](https://github.com/rsturla/immutable-fedora/issues/25)) ([6d45986](https://github.com/rsturla/immutable-fedora/commit/6d459868baeabe10a7a5b349c2a5d979d043e6d3))
* Create NVIDIA variant ([#36](https://github.com/rsturla/immutable-fedora/issues/36)) ([4ec8da7](https://github.com/rsturla/immutable-fedora/commit/4ec8da7dfe8dd19d1d3b3495d5de310c4c2ee6ac))
* Install clamav antivirus software ([#32](https://github.com/rsturla/immutable-fedora/issues/32)) ([92d637b](https://github.com/rsturla/immutable-fedora/commit/92d637b7a9be42cbebc52fee0a71b3c47e1a401e))
* Install development tools ([#28](https://github.com/rsturla/immutable-fedora/issues/28)) ([964fb38](https://github.com/rsturla/immutable-fedora/commit/964fb381f7568c09036dd1a93f8a7b1eee5d9d74))
* Install podman-desktop Flatpak ([#35](https://github.com/rsturla/immutable-fedora/issues/35)) ([9613fbb](https://github.com/rsturla/immutable-fedora/commit/9613fbbc8861a8bf2ca666b5b725f596c4a56ad8))


### Bug Fixes

* Access virt-manager using polkit rules ([#39](https://github.com/rsturla/immutable-fedora/issues/39)) ([08189b8](https://github.com/rsturla/immutable-fedora/commit/08189b8b52cb5c8a4fd2b09a207f63528dc8dc85))
* Add custom GNOME desktop wallpaper entry ([#30](https://github.com/rsturla/immutable-fedora/issues/30)) ([7b0ec3a](https://github.com/rsturla/immutable-fedora/commit/7b0ec3a6df2df83ce8f3a551060312728acf0149))
* Add default podman configuration for DevContainers ([#41](https://github.com/rsturla/immutable-fedora/issues/41)) ([04fb496](https://github.com/rsturla/immutable-fedora/commit/04fb496e025affeb0b07b79f71c41c5942395075))
* Apply custom background to dark mode ([#29](https://github.com/rsturla/immutable-fedora/issues/29)) ([4ba241c](https://github.com/rsturla/immutable-fedora/commit/4ba241cc1c6ca4162a19726ff5a06703a52f919c))
* Replace Docker with podman-docker ([#31](https://github.com/rsturla/immutable-fedora/issues/31)) ([183cb30](https://github.com/rsturla/immutable-fedora/commit/183cb30501f141ff0c94511d1237308c09e96222))
* Set yaru-dark theme by default ([#38](https://github.com/rsturla/immutable-fedora/issues/38)) ([4764e72](https://github.com/rsturla/immutable-fedora/commit/4764e726084718b6729b5d8340d14386e9124e70))
* Update firstboot to support RPMs, Flatpaks and user groups ([#27](https://github.com/rsturla/immutable-fedora/issues/27)) ([ef1960a](https://github.com/rsturla/immutable-fedora/commit/ef1960a4ec986f66027cc768a8bad5ef5e812d73))


### Miscellaneous

* Build NVIDIA ISOs during releases ([#42](https://github.com/rsturla/immutable-fedora/issues/42)) ([6b595e7](https://github.com/rsturla/immutable-fedora/commit/6b595e7369a7199f0cab562f7936e82ee4642726))
* Refactor GitHub Actions build workflows ([#37](https://github.com/rsturla/immutable-fedora/issues/37)) ([c7322a4](https://github.com/rsturla/immutable-fedora/commit/c7322a4489821ee6aaebebbc90fe6e2e32a418f3))
* Update README with latest tools and ISO information ([#34](https://github.com/rsturla/immutable-fedora/issues/34)) ([0aee865](https://github.com/rsturla/immutable-fedora/commit/0aee865e5ad227a03fccf37f78721d608be62cec))

## [1.1.0](https://github.com/rsturla/immutable-fedora/compare/v1.0.0...v1.1.0) (2023-04-03)


### Features

* Begin image customisation ([#3](https://github.com/rsturla/immutable-fedora/issues/3)) ([c5bd9b6](https://github.com/rsturla/immutable-fedora/commit/c5bd9b61f3279437752a196c070e8f4fb6fdd9e7))
* Create initial Containerfile configuration ([#1](https://github.com/rsturla/immutable-fedora/issues/1)) ([aba9ada](https://github.com/rsturla/immutable-fedora/commit/aba9ada7a7a933545dd00f21cc76a192baeca2eb))
* Enable Fedora Silverblue 38 builds ([#4](https://github.com/rsturla/immutable-fedora/issues/4)) ([597390e](https://github.com/rsturla/immutable-fedora/commit/597390e88c765b4664d74029d909f21d54e47d77))
* Generate ISO files for easy installation ([#19](https://github.com/rsturla/immutable-fedora/issues/19)) ([084a3a2](https://github.com/rsturla/immutable-fedora/commit/084a3a2f58e4812b644fbf9bca598cc90382113a))
* Install OpenVPN3 Command Line tools from COPR ([#18](https://github.com/rsturla/immutable-fedora/issues/18)) ([7d3775d](https://github.com/rsturla/immutable-fedora/commit/7d3775d8c76236092992bcc17e58c2daaaa57808))
* Install required apps for work, development and gaming ([#14](https://github.com/rsturla/immutable-fedora/issues/14)) ([c8933b2](https://github.com/rsturla/immutable-fedora/commit/c8933b20c714b27572dc30d1aba43cd8e5889b11))


### Bug Fixes

* Add firstboot script to justfile ([#13](https://github.com/rsturla/immutable-fedora/issues/13)) ([ea9fc4e](https://github.com/rsturla/immutable-fedora/commit/ea9fc4e962d6b90a05ffef74df0fa9caf9bd936b))
* Add missing Fedora 38 builds due to typo :man_facepalming:  ([#9](https://github.com/rsturla/immutable-fedora/issues/9)) ([076f23a](https://github.com/rsturla/immutable-fedora/commit/076f23ae463597c2a0475eaeb9be998306db48af))
* Disable GNOME Shell Extension version validation ([#15](https://github.com/rsturla/immutable-fedora/issues/15)) ([aac2ee6](https://github.com/rsturla/immutable-fedora/commit/aac2ee614a5bca0b767936690f3141a3606bbdb1))
* Generate Docker tags through a bash script ([#6](https://github.com/rsturla/immutable-fedora/issues/6)) ([2f34a01](https://github.com/rsturla/immutable-fedora/commit/2f34a013b67dbfa997f21828f035dcf77b36fe7c))
* Remove dconf theme preference ([#10](https://github.com/rsturla/immutable-fedora/issues/10)) ([266da64](https://github.com/rsturla/immutable-fedora/commit/266da64d7b9d859adf1ca0341d908b98ea7641e7))
* Replace Docker metadata flavors with tags ([#5](https://github.com/rsturla/immutable-fedora/issues/5)) ([dfc1dc8](https://github.com/rsturla/immutable-fedora/commit/dfc1dc8d2d4892fe9009dc112196ff2012a79e66))
* Some UI tweaks - new background and clean dconf configuration ([#17](https://github.com/rsturla/immutable-fedora/issues/17)) ([fb45c4f](https://github.com/rsturla/immutable-fedora/commit/fb45c4f1db90f2abf405a649195fb5ea8a77a9e4))
* Split Docker image tags in build step ([#7](https://github.com/rsturla/immutable-fedora/issues/7)) ([f7d42ef](https://github.com/rsturla/immutable-fedora/commit/f7d42ef01552fb40c94987952e2b93633a39f0ca))
* Update firstboot script to remove preinstalled system Flatpaks ([#12](https://github.com/rsturla/immutable-fedora/issues/12)) ([b4cbfb5](https://github.com/rsturla/immutable-fedora/commit/b4cbfb5e12e07f2f247fe29658adfa3130e19b43))


### Miscellaneous

* Configure repository automation ([#2](https://github.com/rsturla/immutable-fedora/issues/2)) ([440584a](https://github.com/rsturla/immutable-fedora/commit/440584a59014dffc748b5eac0a182e6a2eeb2636))
* Create automated release workflow ([#20](https://github.com/rsturla/immutable-fedora/issues/20)) ([8898661](https://github.com/rsturla/immutable-fedora/commit/88986618c5e6564c79d9e258a803ded67088c48d))
* Fix ISO generation conditions and variable dependencies ([#23](https://github.com/rsturla/immutable-fedora/issues/23)) ([066a13a](https://github.com/rsturla/immutable-fedora/commit/066a13a6463a728e346b01aaf08eaa4e55eafd19))
* **main:** release 1.0.0 ([#21](https://github.com/rsturla/immutable-fedora/issues/21)) ([6cdfc06](https://github.com/rsturla/immutable-fedora/commit/6cdfc0603b3deecc9b43b2502da41341916f0daf))
* Protect latest and stable tags from cleanup ([#8](https://github.com/rsturla/immutable-fedora/issues/8)) ([16d1457](https://github.com/rsturla/immutable-fedora/commit/16d145747e0f6d8094a07530bd55548fe9ee52ec))
* Update README.md with usage and development instructions ([#11](https://github.com/rsturla/immutable-fedora/issues/11)) ([738b0b0](https://github.com/rsturla/immutable-fedora/commit/738b0b0c3330171a1b22f050cac863d5520ee490))
* Update release-please changelog types from 'feat:' to 'feature:' ([#22](https://github.com/rsturla/immutable-fedora/issues/22)) ([7853556](https://github.com/rsturla/immutable-fedora/commit/7853556f3b4f521f2c8854c8d3b9a086a43753fb))

## 1.0.0 (2023-04-03)


### Features

* Begin image customisation ([#3](https://github.com/rsturla/immutable-fedora/issues/3)) ([c5bd9b6](https://github.com/rsturla/immutable-fedora/commit/c5bd9b61f3279437752a196c070e8f4fb6fdd9e7))
* Create initial Containerfile configuration ([#1](https://github.com/rsturla/immutable-fedora/issues/1)) ([aba9ada](https://github.com/rsturla/immutable-fedora/commit/aba9ada7a7a933545dd00f21cc76a192baeca2eb))
* Enable Fedora Silverblue 38 builds ([#4](https://github.com/rsturla/immutable-fedora/issues/4)) ([597390e](https://github.com/rsturla/immutable-fedora/commit/597390e88c765b4664d74029d909f21d54e47d77))
* Generate ISO files for easy installation ([#19](https://github.com/rsturla/immutable-fedora/issues/19)) ([084a3a2](https://github.com/rsturla/immutable-fedora/commit/084a3a2f58e4812b644fbf9bca598cc90382113a))
* Install OpenVPN3 Command Line tools from COPR ([#18](https://github.com/rsturla/immutable-fedora/issues/18)) ([7d3775d](https://github.com/rsturla/immutable-fedora/commit/7d3775d8c76236092992bcc17e58c2daaaa57808))
* Install required apps for work, development and gaming ([#14](https://github.com/rsturla/immutable-fedora/issues/14)) ([c8933b2](https://github.com/rsturla/immutable-fedora/commit/c8933b20c714b27572dc30d1aba43cd8e5889b11))


### Bug Fixes

* Add firstboot script to justfile ([#13](https://github.com/rsturla/immutable-fedora/issues/13)) ([ea9fc4e](https://github.com/rsturla/immutable-fedora/commit/ea9fc4e962d6b90a05ffef74df0fa9caf9bd936b))
* Add missing Fedora 38 builds due to typo :man_facepalming:  ([#9](https://github.com/rsturla/immutable-fedora/issues/9)) ([076f23a](https://github.com/rsturla/immutable-fedora/commit/076f23ae463597c2a0475eaeb9be998306db48af))
* Disable GNOME Shell Extension version validation ([#15](https://github.com/rsturla/immutable-fedora/issues/15)) ([aac2ee6](https://github.com/rsturla/immutable-fedora/commit/aac2ee614a5bca0b767936690f3141a3606bbdb1))
* Generate Docker tags through a bash script ([#6](https://github.com/rsturla/immutable-fedora/issues/6)) ([2f34a01](https://github.com/rsturla/immutable-fedora/commit/2f34a013b67dbfa997f21828f035dcf77b36fe7c))
* Remove dconf theme preference ([#10](https://github.com/rsturla/immutable-fedora/issues/10)) ([266da64](https://github.com/rsturla/immutable-fedora/commit/266da64d7b9d859adf1ca0341d908b98ea7641e7))
* Replace Docker metadata flavors with tags ([#5](https://github.com/rsturla/immutable-fedora/issues/5)) ([dfc1dc8](https://github.com/rsturla/immutable-fedora/commit/dfc1dc8d2d4892fe9009dc112196ff2012a79e66))
* Some UI tweaks - new background and clean dconf configuration ([#17](https://github.com/rsturla/immutable-fedora/issues/17)) ([fb45c4f](https://github.com/rsturla/immutable-fedora/commit/fb45c4f1db90f2abf405a649195fb5ea8a77a9e4))
* Split Docker image tags in build step ([#7](https://github.com/rsturla/immutable-fedora/issues/7)) ([f7d42ef](https://github.com/rsturla/immutable-fedora/commit/f7d42ef01552fb40c94987952e2b93633a39f0ca))
* Update firstboot script to remove preinstalled system Flatpaks ([#12](https://github.com/rsturla/immutable-fedora/issues/12)) ([b4cbfb5](https://github.com/rsturla/immutable-fedora/commit/b4cbfb5e12e07f2f247fe29658adfa3130e19b43))


### Miscellaneous

* Configure repository automation ([#2](https://github.com/rsturla/immutable-fedora/issues/2)) ([440584a](https://github.com/rsturla/immutable-fedora/commit/440584a59014dffc748b5eac0a182e6a2eeb2636))
* Create automated release workflow ([#20](https://github.com/rsturla/immutable-fedora/issues/20)) ([8898661](https://github.com/rsturla/immutable-fedora/commit/88986618c5e6564c79d9e258a803ded67088c48d))
* Protect latest and stable tags from cleanup ([#8](https://github.com/rsturla/immutable-fedora/issues/8)) ([16d1457](https://github.com/rsturla/immutable-fedora/commit/16d145747e0f6d8094a07530bd55548fe9ee52ec))
* Update README.md with usage and development instructions ([#11](https://github.com/rsturla/immutable-fedora/issues/11)) ([738b0b0](https://github.com/rsturla/immutable-fedora/commit/738b0b0c3330171a1b22f050cac863d5520ee490))
* Update release-please changelog types from 'feat:' to 'feature:' ([#22](https://github.com/rsturla/immutable-fedora/issues/22)) ([7853556](https://github.com/rsturla/immutable-fedora/commit/7853556f3b4f521f2c8854c8d3b9a086a43753fb))
