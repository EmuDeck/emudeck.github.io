# DuckStation is a Sony Playstation 1 emulator. 

Website: [https://www.duckstation.org/](https://www.duckstation.org/)

Github: [https://github.com/stenzek/duckstation](https://www.duckstation.org/)

Compatibility List: [https://docs.google.com/spreadsheets/d/1H66MxViRjjE5f8hOl5RQmF5woS1murio2dsLn14kEqo/edit#gid=0](https://docs.google.com/spreadsheets/d/1H66MxViRjjE5f8hOl5RQmF5woS1murio2dsLn14kEqo/edit#gid=0)

***

## DuckStation Table of Contents

1. [Getting Started with DuckStation](#getting-started-with-duckstation)
      - [Configuration](#duckstation-configuration)
      - [DuckStation Folder Locations](#duckstation-folder-locations)
      - [How to Update DuckStation](#how-to-update-duckstation)
      - [How to Launch DuckStation in Desktop Mode](#how-to-launch-duckstation-in-desktop-mode)
      - [File Formats](#duckstation-file-formats)
      - [Configuring DuckStation to work alongside Retroarch's Beetle HW PSX core](#configuring-duckstation-to-work-alongside-retroarchs-beetle-hw-psx-core)
      - [Hotkeys](#duckstation-hotkeys)

2. [DuckStation Tips and Tricks](#duckstation-tips-and-tricks)
      - [How to Optimize Storage (Compression Tool)](#how-to-optimize-storage-compression-tool)
      - [How to Manage Multiple Discs](#how-to-manage-multiple-discs)


***


## Getting Started with DuckStation
[Back to the Top](#duckstation-table-of-contents)

DuckStation is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/psx`. Place your BIOS directly in `Emulation/bios`. Read the [Configuration](#duckstation-configuration) section to learn more about DuckStation and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your PlayStation 1 ROMs:

* `EmulationStation-DE`
* `Sony PlayStation - DuckStation` 
* `Emulators`


***

### DuckStation Configuration
[Back to the Top](#duckstation-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.duckstation.DuckStation`
* ROM Location: `Emulation/roms/psx`
* BIOS Location: `Emulation/bios` 
    * **IMPORTANT:** Files go directly in this folder. Do not make or use a `PSX`, `PS1`, or any sort of folder here. DuckStation will not be able to find your bios files if they are in a folder. 
    * Required BIOS (Example set, one per region - US, Europe, Japan): `scph5500.bin`, `scph5501.bin`, `scph5502.bin `
* Saves: `Emulation/saves/duckstation/saves`
* Save States: `Emulation/saves/duckstation/states`

**Note:** 

* `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.
* Refer to: [https://en.wikipedia.org/wiki/PlayStation_models#Comparison_of_models](https://en.wikipedia.org/wiki/PlayStation_models#Comparison_of_models), for a full list of PSX bios
      * System Models and PSX BIOS have matching names

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### DuckStation Folder Locations
[Back to the Top](#duckstation-table-of-contents)

`$HOME/.var/app/org.duckstation.DuckStation`

```
org.duckstation.DuckStation/
├── cache
├── config
│   ├── duckstation
│   │   ├── cache
│   │   ├── cheats
│   │   ├── covers
│   │   ├── dump
│   │   ├── gamesettings
│   │   ├── inputprofiles
│   │   ├── playtime.dat
│   │   ├── screenshots
│   │   ├── settings.ini
│   │   ├── settings.ini.bak
│   │   ├── shaders
│   │   └── textures
│   ├── kdeglobals
│   ├── pulse
│   │   └── cookie
│   ├── QtProject.conf
│   └── user-dirs.dirs
└── data
    └── duckstation
        ├── settings.ini
        └── settings.ini.bak
```

***

### How to Update DuckStation
[Back to the Top](#duckstation-table-of-contents)

**How to Update DuckStation**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Run `Update Emulators & Tools` in `EmuDeck`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


### How to Launch DuckStation in Desktop Mode
[Back to the Top](#duckstation-table-of-contents)

**How to Launch DuckStation in Desktop Mode**

* Launch `DuckStation` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `duckstation.sh`
* Launch the emulator from `Steam` after adding it to Steam via the `Emulators` parser in `Steam ROM Manager`

***

### DuckStation File Formats
[Back to the Top](#duckstation-table-of-contents)

* .cue 
* .chd 
* .ecm 
* .iso 
* .m3u 
* .mds 
* .pbp

### Configuring DuckStation to work alongside Retroarch's Beetle HW PSX core
[Back to the Top](#duckstation-table-of-contents)

* ROM files for Retroarch's Beetle HW PSX core are shared with DuckStation in `Emulation/roms/psx`. 
* BIOS files for Retroarch's Beetle HW PSX core are shared with DuckStation in `Emulation/bios` (no subfolders).
* As long as you name your BIOS files in this format: `scph####.bin`(####'s are a placeholder), Retroarch's Beetle HW PSX core will work alongside DuckStation. 
* Be sure to rename your BIOS files and note the lowercase `scph`, lowercase `bin` in the example above.

**Note:** By default, EmulationStation-DE uses Retroarch's Beetle HW PSX core. Both Retroarch's Beetle HW PSX core and DuckStation should work if you have set everything up properly. 

To switch between the two in EmulationStation-DE, you can use the `Alternative Emulators` feature. Refer to https://github.com/dragoonDorise/EmuDeck/wiki/EmulationStation-DE#how-to-select-a-different-emulator-for-a-system, for instructions. 

***

### DuckStation Hotkeys
[Back to the Top](#duckstation-table-of-contents)

DuckStation comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - DuckStation`. The hotkeys below can only be used if you have the Steam Input profile active.

**Long Press** to activate hotkeys on the left trackpad radial menu. 

| Hotkey                    | DuckStation               |
|---------------------------|---------------------------|
| Save State                | Left Trackpad Touch Menu  |
| Load State                | Left Trackpad Touch Menu  |
| Next Save Slot            | Left Trackpad Touch Menu  |
| Previous Save Slot        | Left Trackpad Touch Menu  |
| Pause/Play                | Left Trackpad Touch Menu  |
| Quick Menu                | Left Trackpad Touch Menu  |
| Swap Disc                 | Left Trackpad Touch Menu  |
| Fast Forward (Toggle)     | Left Trackpad Touch Menu  |
| Fast Forward (Hold)       | `Select` + `R2`           |
| Rewind                    | `Select` + `L2`           |
| Increase Resolution Scale | `Start` + `DPAD Up`       |
| Decrease Resolution Scale | `Start` + `DPAD Down`     |
| Toggle Widescreen         | `Start` + `DPAD Right`    |
| Toggle PGXP               | `Start` + `DPAD Left`     |
| Toggle SoftwareRendering  | `Start` + `L3`            |
| Full Screen               | `Select` + `R3`           |  

**Note:** 

* [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile)
* [Steam Deck Button Layout](../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)


***

## DuckStation Tips and Tricks
[Back to the Top](#duckstation-table-of-contents)

***

### How to Optimize Storage (Compression Tool)
[Back to the Top](#duckstation-table-of-contents)

To optimize storage, you can use the `EmuDeck Compressor` within EmuDeck.  

The `EmuDeck Compressor` will compress your Playstation 1 ROMs from ISO or BIN/CUE to CHD. If your ROM is a BIN/CUE, the Compression Tool will only compress it if you have both the BIN and the CUE files for a ROM. If the ROM is in a zip file or is missing a paired BIN or CUE file, the Compression Tool will not detect the ROM. 

After running the `EmuDeck Compression Tool`, re-run Steam ROM Manager to update your ROM shortcuts to the newly compressed ROM. 

**Visual Reference:** <img src="https://user-images.githubusercontent.com/108900299/198798630-9cf85bc5-ff42-45c4-bceb-7fc4ac740c3c.png" height="300">


***

### How to Manage Multiple Discs
[Back to the Top](#duckstation-table-of-contents)

M3U files can be used to manage multiple discs for DuckStation. When the time comes to switch discs, use the Left Trackpad Touch Menu Hotkey. A full list of hotkeys and a tutorial on how to use Steam Input profiles can be found here: #hotkeys. 

[Learn how to create an M3U File](../../file-management/steamos/file-management.md#how-to-create-an-m3u-file) 

***