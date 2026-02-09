#!/usr/bin/bash

ARCH=$(uname -m)

# Install required packages for tuqueOS image
dnf group install -y \
    "Dial-up Networking Support" \
    "Hardware Support" \
    "Anaconda tools" \
    "Core" \
    "Fonts" \
    "GNOME" \
    "Guest Desktop Agents" \
    "Input Methods" \
    "Multimedia" \
    "Common NetworkManager submodules" \
    "Standard" \
    "Virtualization Hypervisor" \
    "Container Management" \
    "Printing Client" \
    "Image based rpm-ostree support"

    # "Guest Desktop Agents" \
    # "Guest Agents" \
    # "Multimedia" \
    # "Graphical Administration Tools" \
    # "System Tools" \
    # "Server with GUI" \
    # "Fonts" \
    # "GNOME Server Defaults" \
    # "GNOME" \
    # "Graphical Administration Tools" \
    # "Hardware Monitoring Utilities" \
    # "Headless Management" \
    # "Server product core" \
    # "Core" \
    # "Hardware Support" \
    # "Common NetworkManager submodules" \
    # "Standard" \

dnf install -y \
    gnome-tweaks \
    distrobox \
    vim-enhanced \
    samba \
    ntfs-3g \
    ntfsprogs \
    fuse-sshfs \
    git \
    ffmpeg-free \
    flac \
    faad2 \
    lame \
    libmad \
    vorbis-tools \
    gnome-shell-extension-dash-to-panel \
    gnome-shell-extension-appindicator \
    gnome-shell-extension-desktop-icons-ng \
    gnome-shell-extension-arc-menu \
    gnome-shell-extension-gsconnect \
    dnf-bootc \
    ostree

# Install Intel packages to optimize CPU & hardware
if [[ $ARCH == "x86_64" || $ARCH == "amd64" ]]; then
    dnf install -y \
        microcode_ctl \
        libva-intel-hybrid-driver \
        intel-gmmlib \
        intel-vsc-firmware
fi

# Remove unwanted packages
dnf remove -y subscription-manager \
	setroubleshoot \
    gnome-extensions-app \
    firefox \
    firefox-langpacks \
    gnome-shell-extension-background-logo \
    toolbox

# Replace distro-based logo with custom
rpm --erase --nodeps almalinux-logos
dnf -y install trilliumos-logos

# Install nerd-fonts
dnf -y copr enable che/nerd-fonts "centos-stream-10-$(arch)"
dnf -y copr disable che/nerd-fonts
dnf -y --enablerepo "copr:copr.fedorainfracloud.org:che:nerd-fonts" install \
	nerd-fonts