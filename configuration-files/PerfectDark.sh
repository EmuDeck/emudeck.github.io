#!/bin/bash

xhost +si:localuser:$USER
export PATH=$HOME/.local/bin:$PATH

cd "$HOME/Applications/pd-i686-linux"

$HOME/.local/bin/distrobox-enter -n ubuntu -- "$HOME/Applications/pd-i686-linux/pd"
