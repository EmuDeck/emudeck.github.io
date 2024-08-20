#!/bin/bash

while [ "$FINISHED" != "true" ]; do
    PASS=$(kdialog --title "PCSX2" --password "Enter your sudo password")
    if [[ $? -ne 0 ]]; then
        exit 1
    fi

    if ( echo "$PASS" | sudo -S -k true ); then
        FINISHED="true"
        echo "$PASS" | sudo -S -v
    else
        kdialog --title="PCSX2" --msgbox "Incorrect Password"
    fi
done


echo "$PASS" | sudo "$HOME/Applications/squashfs-root/usr/bin/pcsx2-qt"

