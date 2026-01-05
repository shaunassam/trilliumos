#!/usr/bin/bash

#### Final configurations

systemctl enable smb nmb
systemctl enable gdm.service
systemctl enable firewalld.service
systemctl enable fwupd.service
systemctl enable dconf-update.service
