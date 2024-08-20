#!/bin/bash
unset GTK_IM_MODULE

while [ "$FINISHED" != "true" ]; do
    # Prompt for sudo/admin password
    PASS=$(zenity --title="PCSX2" --width=300 --height=100 --entry --hide-text --text="Enter your sudo password")
    if [[ $? -ne 0 ]]; then
        exit 1
    fi

    # Check if the password is correct
    if ( echo "$PASS" | sudo -S -k true ); then
        FINISHED="true"
        echo "$PASS" | sudo -S -v
    else
        zenity --title="PCSX2" --width=150 --height=40 --info --text "Incorrect Password"
    fi
done

echo "$PASS" | sudo "$HOME/Applications/squashfs-root/usr/bin/pcsx2-qt"

