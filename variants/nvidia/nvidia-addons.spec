Name:           nvidia-addons
Version:        0.4
Release:        1%{?dist}
Summary:        Additional files for nvidia driver support

License:        MIT

BuildArch:      noarch
Supplements:    mokutil policycoreutils

Source0:        public_key.der
Source1:        nvidia-container-runtime.repo
Source2:        config-rootless.toml
Source3:        nvidia-container.pp

%description
Adds various runtime files for nvidia support. These include a key for importing with mokutil to enable secure boot for nvidia kernel modules

%prep
%setup -q -c -T


%build
# Have different name for *.der in case kmodgenca is needed for creating more keys
install -Dm0644 %{SOURCE0} %{buildroot}%{_datadir}/nvidia/%{_sysconfdir}/pki/akmods/certs/akmods-nvidia.der
install -Dm0644 %{SOURCE1} %{buildroot}%{_datadir}/nvidia/%{_sysconfdir}/yum.repos.d/nvidia-container-runtime.repo
install -Dm0644 %{SOURCE2} %{buildroot}%{_datadir}/nvidia/%{_sysconfdir}/nvidia-container-runtime/config-rootless.toml
install -Dm0644 %{SOURCE3} %{buildroot}%{_datadir}/nvidia/%{_datadir}/selinux/packages/nvidia-container.pp

sed -i 's@enabled=1@enabled=0@g' %{buildroot}%{_datadir}/nvidia/%{_sysconfdir}/yum.repos.d/nvidia-container-runtime.repo

install -Dm0644 %{buildroot}%{_datadir}/nvidia/%{_sysconfdir}/pki/akmods/certs/akmods-nvidia.der            %{buildroot}%{_sysconfdir}/pki/akmods/certs/akmods-nvidia.der
install -Dm0644 %{buildroot}%{_datadir}/nvidia/%{_sysconfdir}/yum.repos.d/nvidia-container-runtime.repo     %{buildroot}%{_sysconfdir}/yum.repos.d/nvidia-container-runtime.repo
install -Dm0644 %{buildroot}%{_datadir}/nvidia/%{_sysconfdir}/nvidia-container-runtime/config-rootless.toml %{buildroot}%{_sysconfdir}/nvidia-container-runtime/config-rootless.toml
install -Dm0644 %{buildroot}%{_datadir}/nvidia/%{_datadir}/selinux/packages/nvidia-container.pp             %{buildroot}%{_datadir}/selinux/packages/nvidia-container.pp

%files
%attr(0644,root,root) %{_datadir}/nvidia/%{_sysconfdir}/pki/akmods/certs/akmods-nvidia.der
%attr(0644,root,root) %{_datadir}/nvidia/%{_sysconfdir}/yum.repos.d/nvidia-container-runtime.repo
%attr(0644,root,root) %{_datadir}/nvidia/%{_sysconfdir}/nvidia-container-runtime/config-rootless.toml
%attr(0644,root,root) %{_datadir}/nvidia/%{_datadir}/selinux/packages/nvidia-container.pp
%attr(0644,root,root) %{_sysconfdir}/pki/akmods/certs/akmods-nvidia.der
%attr(0644,root,root) %{_sysconfdir}/yum.repos.d/nvidia-container-runtime.repo
%attr(0644,root,root) %{_sysconfdir}/nvidia-container-runtime/config-rootless.toml
%attr(0644,root,root) %{_datadir}/selinux/packages/nvidia-container.pp
