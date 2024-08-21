#!/bin/bash
xhost +si:localuser:$USER

distrobox-enter -n pcsx2 -- pcsx2-qt
