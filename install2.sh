#!/usr/bin/env bash
ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime

hwclock --systohc

rm /etc/locale.gen
cp locale.gen /etc/locale.gen
locale-gen

touch /etc/locale.conf
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

echo "Hostname? "
read HOSTNAME

touch /etc/hostname
echo "$HOSTNAME" >> /etc/hostname

echo "127.0.0.1	localhost" >> /etc/hosts
echo "::1	localhost" >> /etc/hosts
echo "127.0.1.1	$HOSTNAME.localdomain $HOSTNAME" >> /etc/hosts

echo "New Root Password: "
read PASSWORD

passwd $PASSWORD
