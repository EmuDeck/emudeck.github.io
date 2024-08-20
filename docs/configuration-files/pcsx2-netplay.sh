#!/bin/bash
PATH=$HOME/Applications/Distrobox/bin/:$PATH
xhost +si:localuser:$USER

if ! distrobox list | grep -q "| pcsx2 "; then
    curl -sSL https://raw.githubusercontent.com/EmuDeck/emudeck.github.io/main/docs/configuration-files/pcsx2-distrobox.sh | bash
fi

$HOME/Applications/Distrobox/bin/distrobox-enter -n pcsx2 -- "$HOME/Applications/squashfs-root/usr/bin/pcsx2-qt"

