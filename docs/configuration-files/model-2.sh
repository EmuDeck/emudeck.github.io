#!/usr/bin/bash
# model2.sh
source $HOME/.config/EmuDeck/backend/functions/all.sh
# Get SELFPATH
SELFPATH="$( realpath "${BASH_SOURCE[0]}" )"

# Get EXE
EXE="\"/usr/bin/bash\" \"${SELFPATH}\""

# NAME
NAME="Model2"

# AppID.py
APPIDPY="$toolsPath/appID.py"

# Proton Launcher Script
PROTONLAUNCH="$toolsPath/proton-launch.sh"

# Model 2 exe location
MODEL2="$romsPath/model2/EMULATOR.EXE"

# APPID
APPID=$( /usr/bin/python "${APPIDPY}" "${EXE}" "${NAME}" )

# Proton Version
PROTONVER="7.0"

# Call the Proton launcher script and give the arguments

cd "$romsPath/model2"

echo "${PROTONLAUNCH}" -p "${PROTONVER}" -i "${APPID}" -- "${MODEL2}" "${@}" >> "${LOGFILE}"

"${PROTONLAUNCH}" -p "${PROTONVER}" -i "${APPID}" -- "${MODEL2}" "${@}"
