#!/bin/bash

# ---
# References : 
# 
#  https://wiki.debian.org/fr/wl
# 
# ---
# 
sudo apt-get update -y

# ----
# Command below is assumend to install : 
#   - broadcom-sta-dkms
#   - wireless-tools
# 
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

# sudo apt-get install -y wireless-tools

# ---

sudo apt-get install -f
sudo dpkg-reconfigure broadcom-sta-dkms

sudo find /lib/modules/$(uname -r)/updates

sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma

sudo modprobe wl

