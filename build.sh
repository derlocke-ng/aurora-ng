#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
rpm-ostree install screen https://kojipkgs.fedoraproject.org/packages/kernel/6.9.9/200.fc40/x86_64/kernel-core-6.9.9-200.fc40.x86_64.rpm

# this would install a package from rpmfusion
rpm-ostree install vlc https://rpm.tuxedocomputers.com/fedora/40/x86_64/base/tuxedo-drivers-4.5.3-1.noarch.rpm https://rpm.tuxedocomputers.com/fedora/40/x86_64/base/tuxedo-control-center_2.1.12.rpm

#### Example for enabling a System Unit File

systemctl enable podman.socket
