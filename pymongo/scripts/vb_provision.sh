#!/usr/bin/env bash

################################################################################################################
# 	NOTES:
#	1. 	18-Jan-2016
# 		not yet tested
#		comes from:
#		<http://blog.versioneye.com/2015/05/05/setting-up-a-dev-environment-with-vagrant/>
################################################################################################################

sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
sudo apt-get install gnome-icon-theme-full tango-icon-theme
sudo apt-get install -y linux-headers-`uname -r` dkms
sudo echo “allowed_users=anybody” > /etc/X11/Xwrapper.config