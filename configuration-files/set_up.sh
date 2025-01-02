#!/bin/bash

podmanDownload(){

    if [[ ! -f "$HOME/Applications/Distrobox/bin/podman" ]]; then
        mkdir -p $HOME/Applications/Distrobox/bin
        DOWNLOADURL=$(curl -s https://api.github.com/repos/89luca89/podman-launcher/releases/latest | grep "browser_download_url" | grep "podman-launcher-amd64" | cut -d '"' -f 4)
        curl -L $DOWNLOADURL -o "$HOME/Applications/Distrobox/bin/podman"

        chmod +x "$HOME/Applications/Distrobox/bin/podman"

    fi

}

distroboxDownload(){


    if [[ ! -f "$HOME/Applications/Distrobox/bin/distrobox" ]]; then
        mkdir -p $HOME/Applications/Distrobox/bin
        curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix $HOME/Applications/Distrobox
    fi
}

addSubIDGID(){


    if ! grep -q "^$USER:100000:65536$" /etc/subuid || ! grep -q "^$USER:100000:65536$" /etc/subgid; then
        FINISHED="false"
        while [ "$FINISHED" != "true" ]; do
            # Prompt for sudo/admin password
            PASS=$(zenity --title="Podman Installer" --width=300 --height=100 --entry --hide-text --text="Enter your sudo password")
            if [[ $? -ne 0 ]]; then
                exit 1
            fi

            # Check if the password is correct
            if ( echo "$PASS" | sudo -S -k true ); then
                FINISHED="true"
            else
                zenity --title="Podman Installer" --width=150 --height=40 --info --text "Incorrect Password"
            fi
        done

        # Install distrobox
        curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local

        # Create necessary files and update user settings
        echo "$PASS" | sudo -S touch /etc/subuid /etc/subgid
        echo "$PASS" | sudo -S usermod --add-subuid 100000-165535 --add-subgid 100000-165535 $USER
    fi 

}



