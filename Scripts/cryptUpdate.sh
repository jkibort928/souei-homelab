#!/usr/bin/env bash

# Main Drive
MAIN_LUKS_UUID="96c658f4-c9c6-46a0-b43c-04744252641b"
sudo systemd-cryptenroll --wipe-slot=tpm2 /dev/disk/by-uuid/$MAIN_LUKS_UUID
sudo systemd-cryptenroll --tpm2-device=auto --tpm2-pcrs=7 /dev/disk/by-uuid/$MAIN_LUKS_UUID

sudo rpm-ostree initramfs-etc --force-sync
