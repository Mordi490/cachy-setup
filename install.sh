#!/bin/sh

# Mordi's CachyOS Auto Thingy (MCAT)

# Opting for the Luke Smith route: 2 repos, one installer, one config
ansi_art=`
    __  _______  ____  ____  ____
   /  |/  / __ \/ __ \/ __ \/  _/
  / /|_/ / / / / /_/ / / / // /
 / /  / / /_/ / _, _/ /_/ // /
/_/  /_/\____/_/ |_/_____/___/
`

clear 
echo -e "\n$ansi_art\n"

# Check for sudo privileges
if ! sudo -v; then
    echo "You need sudo privileges to run this installer"
    exit 1
if

sudo pacman -Sy --noconfirm --needed git

# test 123
echo "[*]Updating system..."
sudo pacman -Syu

echo "[*]Installing packages..."
xargs -a packages.txt sudo pacman -S --needed --noconfirm
