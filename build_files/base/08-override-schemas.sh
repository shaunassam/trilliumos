#!/usr/bin/bash

set -eoux pipefail

rsync -rvK /ctx/system_files/usr/share/backgrounds/ /usr/share/backgrounds/
rsync -rvK /ctx/system_files/usr/share/gnome-background-properties/ /usr/share/gnome-background-properties/

tee /etc/dconf/db/local.d/01-tuqueos-defaults << EOF
[org.gnome.desktop.background]
picture-uri='file:///usr/share/backgrounds/jasper.jpg'
picture-uri-dark='file:///usr/share/backgrounds/jasper.jpg'

[org/gnome/Ptyxis]
default-columns=uint32 86
default-profile-uuid='9559f421ac4e8a13a3e958c2695b07f2'
font-name='Red Hat Mono 14'
interface-style='dark'
profile-uuids=['9559f421ac4e8a13a3e958c2695b07f2']
restore-session=true
restore-window-size=false
use-system-font=false
window-size=(uint32 86, uint32 24)

[Profiles/9559f421ac4e8a13a3e958c2695b07f2]
palette='dracula'

[org/gnome/TextEditor]
show-line-numbers=true

[org/gnome/control-center]
last-panel='system'
window-state=(980, 640, false)

[org/gnome/desktop/app-folders]
folder-children=['System', 'Utilities', 'YaST', 'Pardus']

[org/gnome/desktop/app-folders/folders/Pardus]
categories=['X-Pardus-Apps']
name='X-Pardus-Apps.directory'
translate=true

[org/gnome/desktop/app-folders/folders/System]
apps=['org.gnome.baobab.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.Logs.desktop', 'org.freedesktop.MalcontentControl.desktop', 'org.gnome.SystemMonitor.desktop', 'org.gnome.Firmware.desktop']
name='System'
translate=false

[org/gnome/desktop/app-folders/folders/Utilities]
apps=['org.gnome.Connections.desktop', 'org.gnome.Papers.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Loupe.desktop']
name='Utilities'
translate=false

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
enable-fingerprint-authentication=true
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

[org/gnome/settings-daemon/plugins/color]
night-light-schedule-automatic=false

[org/gnome/settings-daemon/plugins/housekeeping]
donation-reminder-last-shown=int64 1767588085943437

[org/gnome/settings-daemon/plugins/power]
sleep-inactive-ac-timeout=3600
sleep-inactive-ac-type='nothing'

[org/gnome/shell]
app-picker-layout=[{'org.gnome.TextEditor.desktop': <{'position': <0>}>, 'System': <{'position': <1>}>, 'org.gnome.Tour.desktop': <{'position': <2>}>, 'com.mattjakeman.ExtensionManager.desktop': <{'position': <3>}>, 'org.gnome.tweaks.desktop': <{'position': <4>}>, 'org.gnome.Calculator.desktop': <{'position': <5>}>, 'org.gnome.Snapshot.desktop': <{'position': <6>}>, 'org.gnome.Characters.desktop': <{'position': <7>}>, 'org.gnome.clocks.desktop': <{'position': <8>}>, 'Utilities': <{'position': <9>}>, 'org.gnome.Rhythmbox3.desktop': <{'position': <10>}>}]
enabled-extensions=['dash-to-panel@jderose9.github.com', 'arcmenu@arcmenu.com', 'gsconnect@andyholmes.github.io', 'ding@rastersoft.com', 'appindicatorsupport@rgcjonas.gmail.com']
favorite-apps=['org.gnome.Nautilus.desktop', 'org.gnome.Ptyxis.desktop', 'org.mozilla.firefox.desktop', 'org.mozilla.Thunderbird.desktop', 'org.gnome.Evolution.desktop', 'org.gnome.TextEditor.desktop', 'org.gnome.Software.desktop']
last-selected-power-profile='performance'

[org/gnome/shell/extensions/arcmenu]
dash-to-panel-standalone=false
hide-overview-on-startup=true
menu-button-icon='fedora-logo-icon'
menu-button-icon-size=40
menu-button-padding=2
menu-layout='Elementary'
multi-monitor=false
pop-folders-data={'Library Home': 'Library Home', 'Utilities': 'Utilities'}
prefs-visible-page=0
recently-installed-apps=['org.gnome.Calendar.desktop', 'org.gnome.Snapshot.desktop', 'org.gnome.Connections.desktop', 'org.gnome.Contacts.desktop', 'org.mozilla.firefox.desktop']
search-entry-border-radius=(true, 25)
show-activities-button=true
update-notifier-project-version=70

[org/gnome/shell/extensions/dash-to-panel]
animate-appicon-hover-animation-extent={'RIPPLE': 4, 'PLANK': 4, 'SIMPLE': 1}
appicon-margin=3
appicon-padding=3
appicon-style='NORMAL'
dot-position='BOTTOM'
dot-style-focused='METRO'
dot-style-unfocused='METRO'
extension-version=72
global-border-radius=0
hide-overview-on-startup=true
hotkeys-overlay-combo='TEMPORARILY'
leftbox-padding=-1
panel-anchors='{"unknown-unknown":"MIDDLE"}'
panel-element-positions='{"unknown-unknown":[{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":false,"position":"stackedBR"},{"element":"rightBox","visible":false,"position":"stackedBR"},{"element":"activitiesButton","visible":true,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":true,"position":"stackedBR"}]}'
panel-lengths='{"unknown-unknown":100}'
panel-positions='{"unknown-unknown":"BOTTOM"}'
panel-sizes='{"unknown-unknown":42}'
prefs-opened=false
progress-show-count=true
show-apps-icon-side-padding=3
show-favorites=true
show-favorites-all-monitors=true
show-running-apps=true
status-icon-padding=3
trans-bg-color='#2e2e2e'
trans-border-use-custom-color=false
trans-border-width=1
trans-dynamic-anim-target=0.5
trans-panel-opacity=0.90000000000000002
trans-use-border=false
trans-use-custom-bg=true
trans-use-custom-opacity=false
trans-use-dynamic-opacity=false
tray-padding=3
window-preview-title-position='TOP'

[org/gnome/shell/extensions/gsconnect]
enabled=false
missing-openssl=false
name='localhost.localdomain'
show-indicators=false

[org/gnome/shell/extensions/gsconnect/preferences]
window-maximized=false
window-size=(640, 550)

[org/gnome/shell/extensions/ding]
add-volumes-opposite=false
check-x11wayland=true
dark-text-in-labels=false
show-home=true
show-network-volumes=true
show-trash=false
start-corner='top-right'

[org/gnome/shell/weather]
automatic-location=true
locations=@av []

[org/gnome/shell/world-clocks]
locations=@av []

[org/gnome/software]
allow-updates=true
check-timestamp=int64 1770141381
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
