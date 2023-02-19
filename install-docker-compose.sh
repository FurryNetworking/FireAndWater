zypper addrepo https://download.opensuse.org/repositories/Virtualization:containers/openSUSE_Tumbleweed_and_d_l_g/Virtualization:containers.repo
sudo zypper ar -cfp 90 https://ftp.fau.de/packman/suse/openSUSE_Tumbleweed/ packman
zypper addrepo https://download.opensuse.org/repositories/Base:System/standard/Base:System.repo
zypper refresh
zypper install glibc
zypper refresh
zypper install docker-compose
