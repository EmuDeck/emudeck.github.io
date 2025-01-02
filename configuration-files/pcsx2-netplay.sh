#!/bin/bash
xhost +si:localuser:$USER
export -n SESSION_MANAGER

distrobox-enter -n pcsx2 -- pcsx2-qt
