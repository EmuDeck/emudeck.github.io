#!/bin/bash
PATH=$HOME/Applications/Distrobox/bin/:$PATH
mkdir -p $HOME/Applications/Distrobox && curl -sS https://raw.githubusercontent.com/EmuDeck/emudeck.github.io/main/docs/configuration-files/set_up.sh -o $HOME/Applications/Distrobox/set_up.sh && chmod +x $HOME/Applications/Distrobox/set_up.sh

source $HOME/Applications/Distrobox/set_up.sh
podmanDownload
addSubIDGID
distroboxDownload

curl -sS https://raw.githubusercontent.com/EmuDeck/emudeck.github.io/main/docs/configuration-files/pcsx2.ini -o $HOME/Applications/Distrobox/pcsx2.ini && cd $HOME/Applications/Distrobox && podman system migrate && distrobox assemble create --file "$HOME/Applications/Distrobox/pcsx2.ini"

