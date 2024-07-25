#!/bin/bash


echo "Uninstalling Gamescope Flatpak if it exists"
flatpak remove org.freedesktop.Platform.VulkanLayer.gamescope -y

cd /tmp

echo "Cloning Gamescope GitHub repo"
git clone https://github.com/flathub/org.freedesktop.Platform.VulkanLayer.gamescope.git

cd "org.freedesktop.Platform.VulkanLayer.gamescope"

echo "Checking out 3.14.2"
git checkout 2a8ab98c2881d5a1262712093d051434a1a7d6f4

echo "Installing Flatpak Builder"
flatpak install org.flatpak.Builder --user -y

echo "Building the Gamescope Flatpak"
flatpak run org.flatpak.Builder --user --jobs=4 --install ./_build ./org.freedesktop.Platform.VulkanLayer.gamescope.yml --user -y

echo "Masking the Gamescope Flatpak"
flatpak mask --user org.freedesktop.Platform.VulkanLayer.gamescope


echo "Deleting cloned Gamescope repository"
rm -rf "/tmp/org.freedesktop.Platform.VulkanLayer.gamescope"

echo "Gamescope Flatpak successfully installed."
