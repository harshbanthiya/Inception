#!/bin/bash
# Update Repository Index
sudo apt-get update

# Install packages to build kernel modules (uname -r means kernel version)
sudo apt-get install -y build-essential dkms linux-headers-$(uname -r)

# Create a directory to mount optical images
sudo mkdir -p /mnt/cdrom

# Mount the optical image
sudo mount /dev/cdrom /mnt/cdrom

# Move to the mounted directory
cd /mnt/cdrom

# Run the executable file of Guest Image directly (nox11 sets the xterm screen not to appear)
sudo sh ./VBoxLinuxAdditions.run —nox11

# Restart
sudo shutdown -r now