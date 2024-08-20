#!/bin/bash
PATH=$HOME/Applications/Distrobox/bin/:$PATH

if ! distrobox list | grep -q "| pcsx2 "; then
    curl -sSL https://raw.githubusercontent.com/EmuDeck/emudeck.github.io/main/docs/configuration-files/pcsx2-distrobox.sh | bash
fi

while [ "$FINISHED" != "true" ]; do
    # Prompt for sudo/admin password
    PASS=$(zenity --title="PCSX2" --width=300 --height=100 --entry --hide-text --text="Enter your sudo password")
    if [[ $? -ne 0 ]]; then
        exit 1
    fi

    # Check if the password is correct
    if ( echo "$PASS" | sudo -S -k true ); then
        FINISHED="true"
    else
        zenity --title="PCSX2" --width=150 --height=40 --info --text "Incorrect Password"
    fi
done

xhost +si:localuser:$USER
$HOME/Applications/Distrobox/bin/distrobox-enter -n pcsx2 --  echo "$PASS" | sudo "$HOME/Applications/squashfs-root/usr/bin/pcsx2-qt"

