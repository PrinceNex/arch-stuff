#!/usr/bin/env bash

passwd
cd ~
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri --noconfirm

