#!/bin/bash


if [[ $(flatpak list --columns=application | grep "gamescope") ]]; then
    echo "Detected Gamescope Flatpak, uninstalling."
    flatpak remove org.freedesktop.Platform.VulkanLayer.gamescope -y
fi 

cd /tmp

echo "Cloning Gamescope GitHub repo"
git clone https://github.com/flathub/org.freedesktop.Platform.VulkanLayer.gamescope.git

cd "org.freedesktop.Platform.VulkanLayer.gamescope"

echo "Checking out 3.14.2"
git checkout 2a8ab98c2881d5a1262712093d051434a1a7d6f4

echo "Updating libevdev.yml source"
sed -i 's|https://freedesktop.org/software/libevdev/libevdev-1.13.1.tar.xz|https://distributions.freedesktop.org/software/libevdev/libevdev-1.13.1.tar.xz|' "/tmp/org.freedesktop.Platform.VulkanLayer.gamescope/modules/libevdev.yml"
sed -i 's|https://freedesktop.org/software/libevdev/libevdev-$version.tar.xz|https://distributions.freedesktop.org/software/libevdev/libevdev-$version.tar.xz|' "/tmp/org.freedesktop.Platform.VulkanLayer.gamescope/modules/libevdev.yml"

echo "Installing Flatpak Builder"
flatpak install org.flatpak.Builder --user -y

echo "Building the Gamescope Flatpak"
flatpak run org.flatpak.Builder --user --jobs=4 --install ./_build ./org.freedesktop.Platform.VulkanLayer.gamescope.yml --user -y

echo "Masking the Gamescope Flatpak"
flatpak mask --user org.freedesktop.Platform.VulkanLayer.gamescope

echo "Deleting cloned Gamescope repository"
rm -rf "/tmp/org.freedesktop.Platform.VulkanLayer.gamescope"


if [[ $(flatpak list --columns=application | grep "gamescope") ]]; then
    echo "Gamescope Flatpak successfully installed."
else 
    echo -e "\e[31mGamescope Flatpak failed to install.\e[0m"
fi 
