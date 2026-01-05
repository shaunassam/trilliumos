#!/usr/bin/bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo && \
flatpak install --system -y --noninteractive flathub \
org.mozilla.firefox/x86_64/stable \
org.mozilla.Thunderbird/x86_64/stable \
com.mattjakeman.ExtensionManager \
com.ranfdev.DistroShelf/x86_64/stable \
app/org.gnome.Firmware/x86_64/stable \
app/com.github.tchx84.Flatseal/x86_64/stable \
runtime/org.gtk.Gtk3theme.adw-gtk3/x86_64/stable \
runtime/org.gtk.Gtk3theme.adw-gtk3-darkx86_64/stable
