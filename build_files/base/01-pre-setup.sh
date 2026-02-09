#!/usr/bin/bash

set -eoux pipefail

# Enable EPEL, CRB, Flathub, & COPR Repos
dnf install -y epel-release && \
dnf config-manager --set-enabled crb && \
dnf copr enable -y sassam/trilliumOS && \

# Swap EL kernel with latest LTS kernel from COPR repo
dnf update -y kernel*

# Version Lock kernel packages
dnf versionlock add kernel*

# Add akmods secureboot key
# mkdir -p /etc/pki/akmods/certs
# curl --retry 15 -Lo /etc/pki/akmods/certs/akmods-ublue.der "https://github.com/ublue-os/akmods/raw/main/certs/public_key.der"