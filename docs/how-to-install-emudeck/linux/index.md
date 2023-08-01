# How to Install EmuDeck for Linux

> ⚠️ These are for x86_64 devices **ONLY** ⚠️

[TOC]

***

## Prerequisites 

### Arch based (Includes Endeavour, Manjaro, etc.)

```sh
sudo pacman -Sy bash flatpak fuse2 git jq steam unzip zenity     
```

### Debian based (Includes Ubuntu, Pop!_OS, Mint, etc.)

```sh
sudo apt-get install bash flatpak git jq libfuse2 rsync unzip zenity      
```

Install Steam as directed by your OS.

### Fedora based (Includes RHEL, CentOS, Nobara, etc.)

```sh
sudo dnf install bash flatpak fuse git jq rsync unzip zenity   
```

Install Steam as directed by your OS.

### OpenSUSE based

```sh
sudo zypper install bash flatpak git jq libfuse2 unzip rsync steam zenity
```

### Void based

```sh
sudo xbps-install -S bash flatpak fuse git jq rsync steam unzip zenity
```

***

## Text Guides

### Arch

```sh
curl -L https://raw.githubusercontent.com/dragoonDorise/EmuDeck/main/install.sh | bash
```

Alternatively, use the [AUR Package](https://aur.archlinux.org/packages/emudeck) with the AUR helper of your choice.

### Debian/Ubuntu

### Fedora


***
