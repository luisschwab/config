#!/bin/bash

# Usage: mount-luks-lvm.sh <drive name> <LUKS partition>
# This script will use `linsk` to mount a ext4 LUKS-encrypted drive with LVM
# to a Alpine Linux VM, and expose it to the file system as a network drive.
#
# To mount the network drive, Finder > Go > Connect to Server, then
# use `linsk` as the user and the password provided in the CLI.

sudo /$HOME/stuff/linsk/linsk run dev:"$1" --luks-container "$2" mapper/ubuntu--vg-ubuntu--lv
