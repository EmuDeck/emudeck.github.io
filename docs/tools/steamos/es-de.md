# ES-DE is a front-end application to manage all of your ROMs.

## Introduction

EmuDeck installs ES-DE, which allows you to manage your ROMs through a single front-end application. It can either be used as an alternative or in tandem with Steam Rom Manager (an application that adds ROMs as game shortcuts to your Steam Library).

Website: [https://es-de.org/](https://es-de.org/)

**ES-DE Important Links**

* User Guide: [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md)
* FAQ: [https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)
* Releases: [https://gitlab.com/es-de/emulationstation-de/-/packages/](https://gitlab.com/es-de/emulationstation-de/-/packages/)

ES-DE currently scrapes art from [https://thegamesdb.net/](https://thegamesdb.net/) and [https://www.screenscraper.fr/](https://www.screenscraper.fr/).

Read the [Steam ROM Manager](../steamos/steam-rom-manager.md) page to learn more about Steam Rom Manager and how it can be used in tandem with ES-DE!


***

## ES-DE Table of Contents

1. [Getting started with ES-DE](#getting-started-with-es-de)
    - [Configuration](#es-de-configuration)
    - [ES-DE Folder Locations](#es-de-folder-locations)
    - [How to Update ES-DE](#how-to-update-es-de)
    - [How to Launch ES-DE in Desktop Mode](#how-to-launch-es-de-in-desktop-mode)
    - [How to add ES-DE to your Steam Library](#how-to-add-es-de-to-your-steam-library)
    - [Hotkeys](#es-de-hotkeys)

2. [ES-DE Tips and Tricks](#es-de-tips-and-tricks)
    - [Tips for Navigating ES-DE](#tips-for-navigating-es-de)
    - [How to Select a Different Emulator for a System](#how-to-select-a-different-emulator-for-a-system)
    - [How to Select a Different Emulator on a Per-Game Basis](#how-to-select-a-different-emulator-on-a-per-game-basis)
    - [How to Manage Multiple Discs](#how-to-manage-multiple-discs)
    - [How to Manage Multiple BIN and CUE files](#how-to-manage-multiple-bin-and-cue-files)
    - [How to Download Themes](#how-to-download-themes)

3. [Emulator Configurations](#emulator-configurations)
    - [How to Configure ScummVM to Work with Steam ROM Manager and ES-DE](../../emulators/steamos/scummvm.md#how-to-configure-scummvm-to-work-with-es-de-and-steam-rom-manager)
    - [How to Configure RPCS3 to Work With ES-DE and Pegasus](../../emulators/steamos/rpcs3.md#how-to-configure-rpcs3-to-work-with-es-de-and-pegasus)
    - [How to Configure Vita3K to Work With ES-DE and Pegasus](../../emulators/steamos/vita3k.md#how-to-configure-vita3k-to-work-with-es-de-and-pegasus)

***

## Getting started with ES-DE
[Back to the Top](#es-de-table-of-contents)

***

### ES-DE Configuration
[Back to the Top](#es-de-table-of-contents)

* Type of Tool: AppImage
* Executable Location: `/home/deck/Applications/ES-DE.AppImage`
* Scraped Media Location: `Emulation/tools/downloaded_media`
* Config Location: `/home/deck/ES-DE`

***

### ES-DE Folder Locations
[Back to the Top](#es-de-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

Do note that some of these paths have been adjusted from ES-DE's defaults. If you are reading ES-DE's [User Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md), make sure to also use the below file locations as a reference.

`$HOME/ES-DE`

```
ES-DE
├── collections
├── custom_systems
│   └── es_systems.xml
├── es_log.txt
├── es_settings.xml
├── gamelists
│   ├── atarilynx
│   │   └── gamelist.xml
│   ├── gc
│   │   └── gamelist.xml
│   ├── n3ds
│   │   └── gamelist.xml
│   ├── nds
│   │   └── gamelist.xml
│   ├── ps2
│   │   └── gamelist.xml
│   ├── psp
│   │   └── gamelist.xml
│   ├── psx
│   │   └── gamelist.xml
│   ├── saturn
│   │   └── gamelist.xml
│   ├── scummvm
│   │   └── gamelist.xml
│   └── wii
│       └── gamelist.xml
└── themes
    └── epic-noir-revisited-es-de
```

`Emulation/tools/downloaded_media`

This folder will also have your scraped media in folders corresponding to the system name.

```
downloaded_media/
└── CLEANUP
```


***

### How to Update ES-DE
[Back to the Top](#es-de-table-of-contents)


* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `ES-DE.AppImage`
    * Refer to [How to Swap Out AppImages and Binaries](../../file-management/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions
* Through the application's automatic updater
    * When you open ES-DE, you may be prompted for an update, accept the prompt to update the application
        * The automatic updater is only available on ES-DE versions `2.1.0` and up

***

### How to Launch ES-DE in Desktop Mode
[Back to the Top](#es-de-table-of-contents)


* Launch the AppImage in `/home/deck/Applications/ES-DE.AppImage`
* Launch ES-DE from `Steam` after adding it via the `ES-DE` parser in `Steam Rom Manager`
* Launch `ES-DE` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)

***

### How to Add ES-DE to your Steam Library
[Back to the Top](#es-de-table-of-contents)

In Desktop Mode, you can open `ES-DE` by opening the executable here: `Emulation/tools/EmulationStation-DE-x64_SteamDeck.AppImage`. However, it's recommended you add ES-DE to Steam through Steam ROM Manager so you can use it in Game Mode as a front-end for your ROMs.

**Here's How**

1. In Desktop Mode, open Steam Rom Manager
2. Turn all the parsers off except for `ES-DE`
    * It's recommended to turn on the `Emulators` parser as well so you can configure your Emulators directly in `Game Mode`
3. Click `Preview` in the top left of the application
4. Click `Generate app list`, wait a moment
5. Click `Save app list`, wait for a message to pop up: `Done adding/removing entries`
6. ES-DE will now be added to your Steam Library.

Watch the following GIF for a visual:

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/c165d87500dd88a51b8ec80c5173e0950aebfe25/GIFs/Adding%20EmulationStation-DE%20to%20Steam.gif?raw=true"/>


***

### ES-DE Hotkeys
[Back to the Top](#es-de-table-of-contents)

See [Emulator Frontends Button Combinations Profile](../../controls-and-hotkeys/steamos/hotkeys.md#emulator-frontends-button-combinations-profile) and [Emulator Frontends Radial Menu Profile](../../controls-and-hotkeys/steamos/hotkeys.md#emulator-frontends-radial-menu-profile) for more information. 

***

## ES-DE Tips and Tricks
[Back to the Top](#es-de-table-of-contents)

### Tips for Navigating ES-DE
[Back to the Top](#es-de-table-of-contents)

#### Quick-Jumping Through Menus

* If you use the shoulder and trigger buttons, you can quick-jump through all menus, including the gamelist view menus.

***

### How to Select a Different Emulator for a System
[Back to the Top](#es-de-table-of-contents)

1. In ES-DE, press the `Start` button
2. Scroll down and select `Other Settings`
3. Select `Alternative Emulators`
4. Scroll down to the system you would like to configure, press `B`, and select your preferred emulator.

Watch the following GIF for a visual:

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/8a63e0196e44930de6a3a328ea24429beea15673/GIFs/How%20to%20Select%20a%20Different%20Emulator%20for%20a%20System.gif?raw=true"/>

***

### How to Select a Different Emulator on a Per-Game Basis
[Back to the Top](#es-de-table-of-contents)

ES-DE allows you to pick alternative emulators on a per-game basis. This may come in handy when different emulators have different levels of compatibility. You can use this option to switch between Yuzu and Ryujinx on a per-game basis for the Nintendo Switch.

On a game in a console list, press the `select ` button, scroll down and select `EDIT THIS GAME'S METADATA`, scroll down and select `ALTERNATIVE EMULATOR`, pick which emulator you would like to use for that game.

**Note:** This feature is also required to get PrimeHack to work through ES-DE. For Primehack, place your `Metroid Prime Trilogy` ROM in the `wii` folder. Follow the above steps, and choose `PrimeHack [Standalone] ` for `Metroid Prime Trilogy`.

Watch the following GIF for a visual:

<img src="https://user-images.githubusercontent.com/108900299/193986411-74c137f0-c4d3-4c4a-a354-fd8f26fb546a.gif" height="400">

***

### How to Manage Multiple Discs
[Back to the Top](#es-de-table-of-contents)

Before selecting one of the methods below, it is highly recommended you use the EmuDeck compressor to compress your ROMs to a single compressed file (the file format varies depending on which system you are emulating). 

Do note that if you are using multi-disc games, the EmuDeck Compressor will instead create a compressed file per disc (combining the BIN and CUE files of each disc). You will still need to read through this section to learn how to "convert" these multi-disc games into a single entry. 

Regardless of whether or not you choose to compress your games, the two methods below will cover how to tidy your files in ES-DE and ensure that you only have **one entry** per game. 

***

#### Method 1:  Directories interpreted as files (Recommended)

1. Create an [M3U File](../../file-management/steamos/file-management.md#how-to-create-an-m3u-file)
2. Place all of your disc files with the M3U file in a folder
3. Rename the folder to match the M3U file exactly including the file extension `.m3u`
    * Example: <img src="https://user-images.githubusercontent.com/108900299/220529984-3a333b70-ad70-4815-8490-45236414cd9a.png" height="300">

**Note:**

* This method is not compatible with Steam ROM Manager. You may instead use [Method 2: Create an M3U file and hide each of the disc entries in ES-DE](#method-2-create-an-m3u-file-and-hide-each-of-the-disc-entries-in-emulationstation-de)
* Refer to [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files) for additional information

***

#### Method 2: Create an M3U file and hide each of the disc entries in ES-DE

1. Create an [M3U File](../../file-management/steamos/file-management.md#how-to-create-an-m3u-file)
2. In ES-DE, press `Start`, `Other Settings`, toggle `Show Hidden Games` off
    * <img src="https://user-images.githubusercontent.com/108900299/220525893-83723351-a594-4f40-b106-0170085139cd.png" height="300">
3. For each disc entry, press select, press `Edit This Game's Metadata`, scroll down, toggle on `Hidden`, press `Save`, `Apply`
4. Repeat for each disc entry

***

### How to Manage Multiple BIN and CUE files
[Back to the Top](#es-de-table-of-contents)

This section is intended only for single disc games. If your game contains multiple discs, see [How to Manage Multiple Discs](#how-to-manage-multiple-discs).

Before selecting one of the methods below, it is highly recommended you use the EmuDeck compressor to compress your ROMs to a single compressed file (the file format varies depending on which system you are emulating). 

If you choose to compress your games, the section below is **not necessary**.  

#### Method 1:  Directories interpreted as files (Recommended)

See [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files) to learn how. 

Do note that this method is not compatible with Steam ROM Manager. You may instead use [Method 2: Hide each of the BIN entries in ES-DE](#method-2-hide-each-of-the-bin-entries-in-emulationstation-de).

***

#### Method 2: Hide each of the BIN entries in ES-DE

If you are using BIN and CUE files, you will need to hide the BIN files and only keep the CUE entry. The CUE contains the information required to run each BIN file. 

1. In ES-DE, press `Start`, `Other Settings`, toggle `Show Hidden Games` off
    * <img src="https://user-images.githubusercontent.com/108900299/220525893-83723351-a594-4f40-b106-0170085139cd.png" height="300">
2. For each BIN entry, press select, press `Edit This Game's Metadata`, scroll down, toggle on `Hidden`, press `Save`, `Apply`
3. Repeat for each BIN entry


***

### How to Download Themes
[Back to the Top](#es-de-table-of-contents)

**Themes List:** [https://gitlab.com/es-de/themes/themes-list](https://gitlab.com/es-de/themes/themes-list)

#### Prerequisites

* ES-DE 2.0.1 or above
   * Update through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application

#### How to Download Themes

- [Method 1: Theme Downloader](#method-1-theme-downloader)
- [Method 2: Manual](#method-2-manual)

##### Method 1: Theme Downloader

1. Open ES-DE
2. Press `Start`
3. Scroll down to `UI Settings`
4. Select `Theme Downloader [Experimental]`
5. Select the theme(s) you would like to download
6. When you are finished, back out of this menu
7. On the `UI Settings` menu, press `Theme Set` and select your preferred theme

##### Method 2: Manual

MiSTer Menu will be used as an example in the below guide.

1. From the themes list: [https://gitlab.com/es-de/themes/themes-list](https://gitlab.com/es-de/themes/themes-list), select a theme under `EmulationStation Desktop Edition (ES-DE) - Themes`
    * <img src="https://user-images.githubusercontent.com/108900299/224575757-623672e6-12ff-4afc-80e3-230cc0ca8ac3.png" height="300">
2. Open the link for the respective theme, it will take you the respective theme section on the ES-DE themes page
3. Open the Github link, it will take you to a Github repository
    * <img src="https://user-images.githubusercontent.com/108900299/224561154-a4085184-0601-4b2e-9e6d-9fe69bebbcf9.png" height="300">
4. On the Github repository, press the green `Code` button in the top right
    * <img src="https://user-images.githubusercontent.com/108900299/224561062-9f50be3f-761c-4184-86e1-fa1cd5fbad2b.png" height="300">
5. Click `Download Zip`, download to a folder of your choice
    * <img src="https://user-images.githubusercontent.com/108900299/224561283-270d6c77-d2f0-4282-ad36-6c9e8f899a14.png" height="300">
6. Open the folder with the zipped theme, right click the theme, click `Extract`, `Extract archive here`
    * <img src="https://user-images.githubusercontent.com/108900299/224565489-9f50658a-aa48-4f09-b630-7735dad26566.png" height="300">
7. Move the unzipped theme folder to `/home/deck/.emulationstation/themes`
    * `~/.emulationstation` is an invisible folder by default. In Dolphin (file manager), click the hamburger button, ☰, in the top right, click `Show hidden files`
    * <img src="https://user-images.githubusercontent.com/108900299/224561598-8a3f27f2-5ade-4a13-ae4b-1eb740fadd55.png" height="300">
8. To use the theme: Open ES-DE in Game Mode, press the `Start` button, `UI Settings`, `Theme Set`, and select the theme you downloaded
    * <img src="https://user-images.githubusercontent.com/108900299/224561706-59d4dec1-2d0c-4c33-a1e8-3f5cf72c93a2.png" height="300">

***

## Emulator Configurations
[Back to the Top](#es-de-table-of-contents)
