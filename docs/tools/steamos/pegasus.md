# Pegasus is a front-end application to manage all of your ROMs.

Website: [https://pegasus-frontend.org/](https://pegasus-frontend.org/)

Pegasus Wiki: [https://pegasus-frontend.org/docs/](https://pegasus-frontend.org/docs/) 

***

## Pegasus Table of Contents

1. [Getting started with Pegasus](#getting-started-with-pegasus)
    - [Configuration](#pegasus-configuration)
    - [Pegasus Folder Locations](#pegasus-folder-locations)
    - [How to Update Pegasus](#how-to-update-pegasus)
    - [How to Launch Pegasus in Desktop Mode](#how-to-launch-pegasus-in-desktop-mode)
    - [Hotkeys](#pegasus-hotkeys)

2. [Emulator Configurations](#emulator-configurations)
    - [How to Configure RPCS3 to Work With Pegasus](../../emulators/steamos/rpcs3.md#how-to-configure-rpcs3-to-work-with-es-de-and-pegasus)
    - [How to Configure ScummVM to Work with Pegasus](../../emulators/steamos/scummvm.md#how-to-configure-scummvm-to-work-with-es-de-pegasus-and-steam-rom-manager)
    - [How to Configure Vita3K to Work With Pegasus](../../emulators/steamos/vita3k.md#how-to-configure-vita3k-to-work-with-es-de-and-pegasus)


***

## Getting started with Pegasus
[Back to the Top](#pegasus-table-of-contents)

***

### Configuration
[Back to the Top](#pegasus-table-of-contents)

* Type of Tool: Binary Package 
* Executable Location: `/home/deck/Applications/pegasus-fe`
* Scraped Media Location: `Emulation/roms`
    * A `media` folder is located in each ROM folder
* Config Location: `/home/deck/.config/pegasus-frontend`

Note: `~/.config` is a hidden folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click "view hidden files" to see these folders.

***

### Pegasus Folder Locations
[Back to the Top](#pegasus-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`


`$HOME/.config/pegasus-frontend`

```
pegasus-frontend/
├── config
│   ├── game_dirs.txt
│   ├── settings.txt
│   └── themes
├── game_dirs.txt
├── lastrun.log
├── settings.txt
├── stats.db
├── themes
│   └── gameOS
└── theme_settings
    ├── gameOS.json
    ├── pegasus-theme-9999999-in-1-poly.json
    ├── pegasus-theme-grid.json
    └── skylineOS.json
```




***

### How to Update Pegasus
[Back to the Top](#pegasus-table-of-contents)

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `pegasus-fe`
    * Refer to [How to Swap Out AppImages and Binaries](../../file-management/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions

***

### How to Launch Pegasus in Desktop Mode
[Back to the Top](#pegasus-table-of-contents)

* Launch the Binary Package: `/home/deck/Applications/pegasus-fe`
* Launch Pegasus from `Steam` after adding it via the `Pegasus` parser in `Steam Rom Manager`
* Launch `Pegasus Binary` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)

***

### Pegasus Hotkeys
[Back to the Top](#pegasus-table-of-contents)

See [Emulator Frontends Button Combinations Profile](../../controls-and-hotkeys/steamos/hotkeys.md#emulator-frontends-button-combinations-profile) and [Emulator Frontends Radial Menu Profile](../../controls-and-hotkeys/steamos/hotkeys.md#emulator-frontends-radial-menu-profile) for more information. 

***

## Emulator Configurations
[Back to the Top](#pegasus-table-of-contents)
