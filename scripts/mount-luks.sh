#!/bin/bash

# This script will use `linsk` to mount a ext4 LUKS-encrypted drive
# to a Alpine Linux VM and expose it to the file system as a network drive.
#
# To login to the network drive,
# use `linsk` as the username and the password `linsk` generates.

sudo /$HOME/stuff/linsk/linsk run -l dev:/dev/disk4 vdb1
