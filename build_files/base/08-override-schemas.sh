#!/usr/bin/bash

set -eoux pipefail

rsync -rvK /ctx/system_files/usr/share/backgrounds/ /usr/share/backgrounds/
rsync -rvK /ctx/system_files/usr/share/gnome-background-properties/ /usr/share/gnome-background-properties/

tee /etc/dconf/db/local.d/01-tuqueos-defaults << EOF
[org.gnome.desktop.background]
picture-uri='file:///usr/share/backgrounds/jasper.jpg'
picture-uri-dark='file:///usr/share/backgrounds/jasper.jpg'

[org/gnome/Chess]
height=550
last-played-as='white'
maximized=false
width=700

[org/gnome/Ptyxis]
default-columns=uint32 86
default-profile-uuid='9559f421ac4e8a13a3e958c2695b07f2'
font-name='Source Code Pro 14'
interface-style='dark'
profile-uuids=['9559f421ac4e8a13a3e958c2695b07f2']
restore-session=true
restore-window-size=false
use-system-font=false
window-size=(uint32 86, uint32 24)

[org/gnome/TextEditor]
show-line-numbers=true

[org/gnome/Weather]
locations=[<(uint32 2, <('Toronto', 'CYTZ', true, [(0.76154532446909495, -1.3857914260834978)], [(0.76212711252195475, -1.3860823201099277)])>)>]
window-height=506
window-maximized=false
window-width=587

[org/gnome/calendar]
active-view='month'
window-maximized=true
window-size=(768, 600)

[org/gnome/control-center]
last-panel='power'
window-state=(980, 640, false)

[org/gnome/desktop/app-folders]
folder-children=['System', 'Utilities', 'YaST', 'Pardus']

[org/gnome/desktop/app-folders/folders/Pardus]
categories=['X-Pardus-Apps']
name='X-Pardus-Apps.directory'
translate=true

[org/gnome/desktop/app-folders/folders/System]
apps=['org.gnome.baobab.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.Logs.desktop', 'org.freedesktop.MalcontentControl.desktop', 'org.gnome.SystemMonitor.desktop', 'org.gnome.Firmware.desktop']
name='X-GNOME-Shell-System.directory'
translate=true

[org/gnome/desktop/app-folders/folders/Utilities]
apps=['org.gnome.Connections.desktop', 'org.gnome.Papers.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Loupe.desktop']
name='X-GNOME-Shell-Utilities.directory'
translate=true

[org/gnome/desktop/app-folders/folders/YaST]
categories=['X-SuSE-YaST']
name='suse-yast.directory'
translate=true

[org/gnome/desktop/background]
color-shading-type='solid'
picture-options='zoom'
picture-uri='file:///usr/share/backgrounds/jasper.jpg'
picture-uri-dark='file:///usr/share/backgrounds/jasper.jpg'
primary-color='#a14f8c'
secondary-color='#200735'

[org/gnome/desktop/calendar]
show-weekdate=true

[org/gnome/desktop/input-sources]
current=uint32 0
sources=[('xkb', 'us')]

[org/gnome/desktop/interface]
clock-format='12h'
clock-show-weekday=true
enable-animations=true
enable-hot-corners=false

[org/gnome/desktop/notifications]
application-children=['org-gnome-ptyxis', 'org-gnome-software', 'gnome-power-panel', 'gnome-about-panel', 'org-gnome-characters', 'org-gnome-nautilus', 'org-gnome-rhythmbox3', 'org-mozilla-firefox', 'org-gnome-texteditor', 'com-mattjakeman-extensionmanager']

[org/gnome/desktop/notifications/application/com-mattjakeman-extensionmanager]
application-id='com.mattjakeman.ExtensionManager.desktop'

[org/gnome/desktop/notifications/application/gnome-about-panel]
application-id='gnome-about-panel.desktop'

[org/gnome/desktop/notifications/application/gnome-power-panel]
application-id='gnome-power-panel.desktop'

[org/gnome/desktop/notifications/application/org-gnome-characters]
application-id='org.gnome.Characters.desktop'

[org/gnome/desktop/notifications/application/org-gnome-nautilus]
application-id='org.gnome.Nautilus.desktop'

[org/gnome/desktop/notifications/application/org-gnome-ptyxis]
application-id='org.gnome.Ptyxis.desktop'

[org/gnome/desktop/notifications/application/org-gnome-rhythmbox3]
application-id='org.gnome.Rhythmbox3.desktop'

[org/gnome/desktop/notifications/application/org-gnome-software]
application-id='org.gnome.Software.desktop'

[org/gnome/desktop/notifications/application/org-gnome-texteditor]
application-id='org.gnome.TextEditor.desktop'

[org/gnome/desktop/notifications/application/org-mozilla-firefox]
application-id='org.mozilla.firefox.desktop'

[org/gnome/desktop/privacy]
report-technical-problems=false

[org/gnome/desktop/screensaver]
color-shading-type='solid'
picture-options='zoom'
picture-uri='file:///usr/share/backgrounds/jasper.jpg'
primary-color='#a14f8c'
secondary-color='#200735'

[org/gnome/desktop/session]
idle-delay=uint32 0

[org/gnome/desktop/wm/preferences]
button-layout='appmenu:minimize,maximize,close'

[org/gnome/evolution-data-server]
migrated=true

[org/gnome/gnome-system-monitor/proctree]
col-26-visible=false
col-26-width=0

[org/gnome/login-screen]
enable-fingerprint-authentication=false
enable-smartcard-authentication=false

[org/gnome/maps]
last-viewed-location=[0.0, 0.0]
map-type='MapsVectorSource'
transportation-type='pedestrian'
window-maximized=true
zoom-level=2

[org/gnome/nautilus/icon-view]
default-zoom-level='small-plus'

[org/gnome/nautilus/preferences]
default-folder-viewer='icon-view'
migrated-gtk-settings=true
search-filter-time-type='last_modified'

[org/gnome/nautilus/window-state]
initial-size=(890, 550)

[org/gnome/nm-applet/eap/bc366963-c685-413b-889a-0e727d368c37]
ignore-ca-cert=false
ignore-phase2-ca-cert=false

[org/gnome/nm-applet/eap/fa522556-c116-4b45-a27a-9ef7d067a75b]
ignore-ca-cert=false
ignore-phase2-ca-cert=false

[org/gnome/rhythmbox]
position=(26, 23)
size=(1104, 700)

[org/gnome/rhythmbox/player]
volume=1.0

[org/gnome/rhythmbox/plugins]
active-plugins=['rb', 'power-manager', 'notification', 'mtpdevice', 'mpris', 'iradio', 'ipod', 'generic-player', 'dbus-media-server', 'cd-recorder', 'audioscrobbler', 'audiocd', 'android', 'artsearch']
seen-plugins=['rb', 'webremote', 'replaygain', 'rbzeitgeist', 'pythonconsole', 'notification', 'mtpdevice', 'ipod', 'grilo', 'fmradio', 'dbus-media-server', 'daap', 'cd-recorder', 'audioscrobbler', 'artsearch', 'im-status', 'listenbrainz', 'lyrics', 'magnatune']

[org/gnome/rhythmbox/plugins/audioscrobbler/Last.fm]
scrobbling-enabled=true

[org/gnome/rhythmbox/plugins/audioscrobbler/Libre.fm]
scrobbling-enabled=true

[org/gnome/rhythmbox/plugins/iradio]
initial-stations-loaded=true

[org/gnome/rhythmbox/rhythmdb]
locations=['file:///var/home/student/Music']

[org/gnome/settings-daemon/plugins/color]
night-light-schedule-automatic=false

[org/gnome/settings-daemon/plugins/housekeeping]
donation-reminder-last-shown=int64 1767588085943437

[org/gnome/settings-daemon/plugins/power]
sleep-inactive-ac-timeout=3600
sleep-inactive-ac-type='nothing'

[org/gnome/shell]
app-picker-layout=[{'org.gnome.Extensions.desktop': <{'position': <0>}>, 'org.gnome.Yelp.desktop': <{'position': <1>}>, 'org.gnome.TextEditor.desktop': <{'position': <2>}>, 'System': <{'position': <3>}>, 'org.gnome.Tour.desktop': <{'position': <4>}>, 'com.mattjakeman.ExtensionManager.desktop': <{'position': <5>}>, 'org.gnome.tweaks.desktop': <{'position': <6>}>}]
disabled-extensions=@as []
enabled-extensions=['logomenu@aryan_k', 'appindicatorsupport@rgcjonas.gmail.com', 'dash-to-dock@micxgx.gmail.com', 'just-perfection-desktop@just-perfection', 'blur-my-shell@aunetx', 'BringOutSubmenuOfPowerOffLogoutButton@pratap.fastmail.fm', 'ding@rastersoft.com']
favorite-apps=['org.gnome.Nautilus.desktop', 'org.gnome.Ptyxis.desktop', 'org.mozilla.firefox.desktop', 'net.thunderbird.Thunderbird.desktop', 'org.gnome.Calendar.desktop', 'org.gnome.Contacts.desktop', 'org.gnome.Maps.desktop', 'org.gnome.Loupe.desktop', 'org.gnome.Rhythmbox3.desktop', 'vlc.desktop', 'org.gnome.Software.desktop', 'org.gnome.Settings.desktop']
last-selected-power-profile='performance'
welcome-dialog-last-shown-version='49.1'

[org/gnome/shell/extensions/Logo-menu]
menu-button-icon-image=0
show-lockscreen=true
show-power-options=true
symbolic-icon=false
use-custom-icon=false

[org/gnome/shell/extensions/blur-my-shell]
settings-version=2

[org/gnome/shell/extensions/blur-my-shell/appfolder]
brightness=0.59999999999999998
sigma=30

[org/gnome/shell/extensions/blur-my-shell/coverflow-alt-tab]
pipeline='pipeline_default'

[org/gnome/shell/extensions/blur-my-shell/dash-to-dock]
blur=true
override-background=true
pipeline='pipeline_default_rounded'

[org/gnome/shell/extensions/blur-my-shell/lockscreen]
pipeline='pipeline_default'

[org/gnome/shell/extensions/blur-my-shell/overview]
pipeline='pipeline_default'

[org/gnome/shell/extensions/blur-my-shell/panel]
brightness=0.59999999999999998
pipeline='pipeline_default'
sigma=30

[org/gnome/shell/extensions/blur-my-shell/screenshot]
pipeline='pipeline_default'

[org/gnome/shell/extensions/blur-my-shell/window-list]
brightness=0.59999999999999998
sigma=30

[org/gnome/shell/extensions/bring-out-submenu-of-power-off-logout]
hide-lock-button=true
hide-logout-button=true
hide-power-button=true
hide-restart-button=true
hide-suspend-button=true
hide-switch-user-button=true

[org/gnome/shell/extensions/dash-to-dock]
apply-custom-theme=true
background-opacity=0.80000000000000004
custom-theme-shrink=false
dash-max-icon-size=42
disable-overview-on-startup=true
dock-position='BOTTOM'
height-fraction=0.90000000000000002
preferred-monitor=-2
preferred-monitor-by-connector='Virtual-1'
show-apps-at-top=true
show-show-apps-button=true

[org/gnome/shell/extensions/ding]
check-x11wayland=true
show-network-volumes=true
show-trash=false
start-corner='top-right'

[org/gnome/shell/extensions/just-perfection]
clock-menu-position=0
clock-menu-position-offset=20
notification-banner-position=2
osd-position=3
power-icon=false
show-apps-button=true
startup-status=0
workspace-switcher-should-show=false

[org/gnome/shell/weather]
automatic-location=true
locations=[<(uint32 2, <('Toronto', 'CYTZ', true, [(0.76154532446909495, -1.3857914260834978)], [(0.76212711252195475, -1.3860823201099277)])>)>]

[org/gnome/shell/world-clocks]
locations=@av []

[org/gnome/software]
allow-updates=true
check-timestamp=int64 1769773581
download-updates=true
download-updates-notify=true
first-run=false
flatpak-purge-timestamp=int64 1769740922
update-notification-timestamp=int64 1767573812

[org/gnome/system/location]
enabled=false

[org/gnome/tweaks]
show-extensions-notice=false

[org/gtk/gtk4/settings/file-chooser]
show-hidden=false
sort-directories-first=true

[org/gtk/settings/file-chooser]
clock-format='12h'
EOF

dconf update
