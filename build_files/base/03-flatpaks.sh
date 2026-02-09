#!/usr/bin/bash

ARCH=$(uname -m)

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
flatpak install --system -y --noninteractive flathub \
    org.gnome.Calendar \
    org.gnome.Snapshot \
    org.gnome.Connections \
    org.gnome.Contacts \
    org.gnome.Maps \
    org.gnome.Loupe \
    org.gnome.Weather \
    com.mattjakeman.ExtensionManager \
    org.gnome.Firmware \
    org.gnome.Rhythmbox3 \
    org.mozilla.firefox \
    org.videolan.VLC

if [[ $ARCH == "aarch64" ]]; then
    flatpak install --system -y --noninteractive flathub org.gnome.Evolution
else if [[ $ARCH == "x86_64" || $ARCH == "amd64" ]]; then
    flatpak install --system -y --noninteractive flathub org.mozilla.Thunderbird
fi