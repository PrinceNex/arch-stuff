#!/usr/bin/env bash

timedatectl set-ntp true

pacstrap /mnt base base-devel linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

mv ../arch-stuff /mnt/

arch-chroot /mnt

