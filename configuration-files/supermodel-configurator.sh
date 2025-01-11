#!/bin/bash

systemSupermodel="/var/lib/flatpak/app/com.supermodel3.Supermodel/x86_64/stable/active/files/bin"
userSupermodel="$HOME/.local/share/flatpak/app/com.supermodel3.Supermodel/current/active/files/bin"

mkdir -p $HOME/.supermodel/Analysis $HOME/.supermodel/Log $HOME/.supermodel/NVRAM

    if [ -d $systemSupermodel ]; then
        cp -r /var/lib/flatpak/app/com.supermodel3.Supermodel/x86_64/stable/active/files/bin/Assets $HOME/.supermodel
        cp -r /var/lib/flatpak/app/com.supermodel3.Supermodel/x86_64/stable/active/files/bin/Config $HOME/.supermodel
        cp -r /var/lib/flatpak/app/com.supermodel3.Supermodel/x86_64/stable/active/files/bin/Docs $HOME/.supermodel
        echo "Supermodel configurations copied"
    elif [ -d $userSupermodel ]; then
        cp -r $HOME/.local/share/flatpak/app/com.supermodel3.Supermodel/current/active/files/bin/Config $HOME/.supermodel
        cp -r $HOME/.local/share/flatpak/app/com.supermodel3.Supermodel/current/active/files/bin/Assets $HOME/.supermodel
        cp -r $HOME/.local/share/flatpak/app/com.supermodel3.Supermodel/current/active/files/bin/Docs $HOME/.supermodel
        "Supermodel configurations copied"
    else
        echo "Supermodel install not found"
    fi


