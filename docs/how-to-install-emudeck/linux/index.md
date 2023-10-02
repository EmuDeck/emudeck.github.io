# How to Install EmuDeck for Linux

> ⚠️ These are for x86_64 devices **ONLY** ⚠️

[TOC]

***

## Prerequisites 

### Arch based (Includes Endeavour, Manjaro, etc.)

```sh
sudo pacman -Sy bash flatpak fuse2 git jq steam unzip zenity     
```

### ChimeraOS

No additional prerequisites need to be installed. For ChimeraOS tweaks to ensure EmuDeck works properly, see [ChimeraOS](#chimeraos). 

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
sudo xbps-install -Syv void-repo-nonfree void-repo-multilib
sudo xbps-install -Syv libgcc-32bit libstdc++-32bit libdrm-32bit libglvnd-32bit mesa-dri-32bit
sudo xbps-install -Syv bash flatpak fuse git jq rsync steam unzip zenity jq xmlstarlet
```

***

## Text Guides

### Distro Agnostic 

1. Open a terminal and enter the following:

```sh
curl -L https://raw.githubusercontent.com/dragoonDorise/EmuDeck/main/install.sh | bash
```

### Arch

Either use the [Distro Agnostic](#distro-agnostic) guide or use the [AUR Package](https://aur.archlinux.org/packages/emudeck) with the AUR helper of your choice.

***

## Distro Specific Guides

### ChimeraOS Tweaks

[https://github.com/ChimeraOS/chimeraos/wiki/EmuDeck](https://github.com/ChimeraOS/chimeraos/wiki/EmuDeck)

***

## Tested and Working Linux Distros

Any distro **not listed** in the table below **has not** been tested. 

**Key**

* Check mark/✓: Works great without any issue
* Tilde/~: Works but requires additional set up
* X mark/x: Does not work

| Distro      | Compatibility                 |
|-------------|-------------------------------|
| Arch        | ✓                             |
| ChimeraOS   | ~ See [ChimeraOS Tweaks](#chimeraos-tweaks) |
| EndeavourOS | ✓                             |
| Fedora      | ✓                             |
| Nobara      | ✓                             |
| Ubuntu      | ✓                             |
| Void Linux  | ✓                             |

***
