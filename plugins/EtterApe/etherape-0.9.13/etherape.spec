# Note that this is NOT a relocatable package

%define  RELEASE 1
%define  rel     %{?CUSTOM_RELEASE} %{!?CUSTOM_RELEASE:%RELEASE}

# define an appropriate suffix for the packages
%if 0%{?mdkversion}
%define sys	mdv%{mandriva_release}
%endif
%if 0%{?suse_version} 
%define sys	suse%{suse_version}
%endif
%if 0%{?sles_version}
%define sys	sles%{sles_version}
%endif
%if 0%{?fedora} 
%define sys	fdv%{fedora}
%endif
%if 0%{?rhel_version}
%define sys	rhel%{rhel_version}
%endif
%if 0%{?centos_version}
%define sys	centos%{centos_version}
%endif

Name:           etherape
Summary:        Graphical network viewer modeled after etherman
Version:        0.9.13
Release:        %{rel}.obs%{sys}
License:        GPLv2+
URL:            http://etherape.sourceforge.net/
Source:         http://prdownloads.sourceforge.net/%{name}/%{name}-%{version}.tar.gz
Autoreqprov:    on

%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version}
Group:          Applications/System
%else
%if 0%{?suse_version} || 0%{?sles_version}
Group:          Productivity/Networking/Diagnostic
%else
Group:          Monitoring
%endif
%endif

#%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version}
#BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)
#%else
BuildRoot:      %{_tmppath}/%{name}-%{version}
#%endif

#Docdir: %{prefix}/doc

BuildRequires: libpcap-devel
BuildRequires: gettext
BuildRequires: autoconf
BuildRequires: pkgconfig
%if 0%{?centos_version} < 600
BuildRequires: scrollkeeper
%else
BuildRequires: rarian
%endif

%if 0%{?mdkversion}
BuildRequires: libglade2.0-devel
BuildRequires: libgnomeui2-devel
BuildRequires: gnome-doc-utils
BuildRequires: desktop-file-utils
#%if 0%{?opensuse_bs}
# only for suse build service
BuildRequires: polkit-gnome
%if 0%{?mdkversion} <= 201000
BuildRequires: pulseaudio-esound-compat
%endif
#%endif
%else
BuildRequires: libglade2-devel
BuildRequires: libgnomeui-devel
%endif

%if 0%{?suse_version} || 0%{?sles_version}
BuildRequires: pkgconfig
BuildRequires: gnome-doc-utils-devel
BuildRequires: docbook_4
BuildRequires: fdupes
BuildRequires: update-desktop-files
BuildRequires: sed
%endif
%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version} 
BuildRequires: gnome-doc-utils
BuildRequires: scrollkeeper
%if 0%{?centos_version} && 0%{?centos_version} < 600
BuildRequires(post): scrollkeeper
BuildRequires(postun): scrollkeeper
%endif
%endif

%description
Etherape is a graphical network monitor for Unix modeled after
etherman. Featuring link level, ip and tcp modes, it displays network
activity graphically. Hosts and links change in size with traffic. 
Color coded protocols display. It supports ethernet, fddi, ppp, slip, wlan
and other devices. It can filter traffic to be shown, and can read traffic 
from a file as well as live from the network. 


%prep
%setup -q
%if 0%{?suse_version} || 0%{?sles_version}
%__sed -ie "s#http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd#file:///usr/share/sgml/docbook/dtd/4.2/docbookx.dtd#" doc/C/etherape.xml
%__cat >> etherape.desktop.in << _EOF_
X-KDE-SubstituteUID=true
X-KDE-Username=root
_EOF_
%endif

%build
%if 0%{?suse_version} || 0%{?sles_version}
%configure --with-pic --disable-scrollkeeper
# apparently opensuse has a broken xmllib configuration, missing an alias
# for omf dtd
%__sed -ie "s#--dtdvalid 'http://scrollkeeper.sourceforge.net/dtds/scrollkeeper-omf-1.0/scrollkeeper-omf.dtd'#--dtdvalidfpi \\\"-//OMF//DTD Scrollkeeper OMF Variant V1.0//EN\\\"#" doc/Makefile
%else
%if 0%{?fedora} || 0%{?rhel_version} || 0%{?centos_version}
# fedora/redhat/centos use a different dtd ...
gnome-doc-prepare --force --automake
autoreconf
%endif
%configure --bindir=%{_sbindir}  --disable-scrollkeeper
%endif
%__make %{?_smp_flags}

%check
%__make check

%install
%__rm -rf %{buildroot}
%__mkdir %{buildroot}
%__make install DESTDIR=%{buildroot}
%find_lang %{name}

%if 0%{?suse_version} || 0%{?sles_version}
#%suse_update_desktop_file %{name} System Network
%fdupes %{buildroot}
%endif

%clean
%{__rm} -rf %{buildroot}

%files -f %{name}.lang
%defattr(-, root, root)
%dir %{_sysconfdir}/etherape
%config(noreplace) %{_sysconfdir}/etherape/services
%{_datadir}/applications/etherape.desktop
%{_datadir}/%{name}
%{_datadir}/pixmaps/etherape.png
%if 0%{?suse_version} || 0%{?sles_version}
%{_bindir}/etherape
%else
%{_sbindir}/etherape
%endif
%doc AUTHORS COPYING TODO ChangeLog NEWS README* FAQ ABOUT-NLS
%doc %{_mandir}/man1/%{name}.1*
%doc %{_datadir}/omf/%{name}
%docdir %{_datadir}/gnome/help/%{name}
%doc %{_datadir}/gnome/help/%{name}/**

%post
%if 0%{?centos_version} && 0%{?centos_version} < 600
scrollkeeper-update -q -o %{_datadir}/omf/%{name} || :
%endif

%postun
%if 0%{?centos_version} && 0%{?centos_version} < 600
scrollkeeper-update -q || :
%endif


%changelog
* Tue Feb 15 2011 R.Ghetta <bchiara@users.sf.net>
- adapting for OpenSUSE build service

* Sun Jan 3 2010 R.Ghetta <bchiara@users.sf.net>
- change manual build

* Sat May 6 2006 R.Ghetta <bchiara@users.sf.net>
- a bit of modernization

* Mon Apr 3 2000 Juan Toledo <toledo@sourceforge.net>
- Initial spec file copied from electric eyes

