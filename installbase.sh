apt-get update
apt-get install -y wget git
# 增加Proxmox 的源文件
echo "deb https://mirrors.ustc.edu.cn/proxmox/debian/pve trixie pve-no-subscription" > /etc/apt/sources.list.d/pve-no-subscription.list
# 增加 ceph 源文件 换源
echo "deb https://mirrors.ustc.edu.cn/proxmox/debian/ceph-squid trixie no-subscription" > /etc/apt/sources.list.d/ceph.list
wget -O /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg "https://enterprise.proxmox.com/debian/proxmox-release-bookworm.gpg"
wget -O /etc/apt/trusted.gpg.d/proxmox-release-trixie.gpg "https://enterprise.proxmox.com/debian/proxmox-release-trixie.gpg"

apt-get update
apt-get dist-upgrade -y
apt-get install -y devscripts autotools-dev autogen dh-autoreconf dkms doxygen check pkg-config \
            groff quilt automake autoconf libtool lintian libdevel-cycle-perl \
            libjson-perl libcommon-sense-perl liblinux-inotify2-perl libio-stringy-perl \
            libstring-shellquote-perl rpm2cpio libsqlite3-dev sqlite3 \
            libglib2.0-dev librrd-dev librrds-perl rrdcached libdigest-hmac-perl \
            libxml-parser-perl gdb libcrypt-openssl-random-perl \
            libcrypt-openssl-rsa-perl libnet-ldap-perl libauthen-pam-perl \
            libjson-xs-perl libterm-readline-gnu-perl oathtool libmime-base32-perl \
            liboath0 libpci-dev texi2html libsdl1.2-dev libgnutls28-dev \
            libspice-protocol-dev xfslibs-dev libnuma-dev libaio-dev \
            libusbredirparser-dev glusterfs-common \
            libusb-1.0-0-dev librbd-dev libpopt-dev bridge-utils numactl \
            glusterfs-common ceph-common libgoogle-perftools4 \
            libfile-chdir-perl lvm2 glusterfs-client liblockfile-simple-perl \
            libsystemd-dev libio-multiplex-perl \
            libnetfilter-log-dev ipset socat libsasl2-dev libogg-dev \
            libfilesys-df-perl libcrypt-ssleay-perl \
            libfile-readbackwards-perl libanyevent-perl libanyevent-http-perl \
            unzip liblocale-po-perl libfile-sync-perl cstream \
            lzop dtach hdparm gdisk parted \
            liblzma-dev dosfstools mtools libxen-dev libfuse-dev libcpg-dev libquorum-dev \
            libcmap-dev libuuid-perl libqb-dev libapparmor-dev docbook2x libcap-dev \
            dh-apparmor graphviz libseccomp-dev libglib-perl libgtk3-perl libnss3-dev \
            libdlm-dev libudev-dev asciidoc-dblatex source-highlight libiscsi-dev \
            libiscsi7 librsvg2-bin libarchive-dev libgpgme-dev libcurl4-gnutls-dev \
            libtest-mockmodule-perl libjemalloc-dev libjpeg-dev
            
apt-get install -y proxmox-default-kernel

apt-get install -y docutils-common fonts-font-awesome libacl1-dev libattr1-dev libcap-ng-dev \
            libcap2-bin libegl-dev libepoxy-dev libfdt-dev libfdt1 libgbm-dev \
            libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 \
            libjs-sphinxdoc libjs-underscore liborc-0.4-0 libpixman-1-dev \
            libproxmox-backup-qemu0 libproxmox-backup-qemu0-dev libslirp-dev libslirp0 \
            libspice-server-dev libspice-server1 liburing-dev liburing2 libva-drm2 \
            libva2 libvirglrenderer-dev libvirglrenderer1 libvulkan1 libzstd-dev meson \
            ninja-build python-babel-localedata python3-alabaster python3-babel \
            python3-docutils python3-imagesize python3-jinja2 python3-markupsafe \
            python3-packaging python3-pip-whl python3-pygments python3-roman \
            python3-setuptools python3-setuptools-whl python3-snowballstemmer \
            python3-sphinx python3-sphinx-rtd-theme python3-tz python3-venv \
            python3-venv sphinx-common sphinx-rtd-theme-common

git config --global url."https://github.com/tianocore/edk2-subhook.git".insteadOf https://github.com/Zeex/subhook.git

apt update && apt install build-* bc dosfstools iasl mtools nasm \
          python3 python3-pexpect qemu-utils uuid-dev xorriso curl -y
apt-get update
apt-get install -y libacl1-dev libaio-dev libattr1-dev libcap-ng-dev libcurl4-gnutls-dev libepoxy-dev libfdt-dev libgbm-dev libgnutls28-dev libiscsi-dev libjpeg-dev libnuma-dev libpci-dev libpixman-1-dev libproxmox-backup-qemu0-dev librbd-dev libsdl1.2-dev libseccomp-dev libslirp-dev libspice-protocol-dev libspice-server-dev libsystemd-dev liburing-dev libusb-1.0-0-dev libusbredirparser-dev libvirglrenderer-dev meson python3-sphinx python3-sphinx-rtd-theme quilt xfslibs-dev
apt install -y dh-python asciidoc-base bison dwarves flex libdw-dev libelf-dev libiberty-dev libslang2-dev lz4 python3-dev xmlto rsync gawk
apt-get autoremove -y
uname -a
df -h
