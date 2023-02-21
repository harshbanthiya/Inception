#!/bin/bash

# switch user
su -

# Add the user to the sudo group
sudo usermod -a -G sudo $intra_id

# Add the user to the root group
sudo usermod -a -G root $intra_id

# Modify /etc/sudoer using visudo
sudo visudo

# switch user
su - $intra_id