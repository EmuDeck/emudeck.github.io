# EmulationStation-DE is a front-end application to manage all of your ROMs.

## Introduction

EmuDeck installs EmulationStation-DE, which allows you to manage your ROMs through a single front-end application. It can either be used as an alternative or in tandem with Steam Rom Manager (an application that adds ROMs as game shortcuts to your Steam Library).

Website: [https://es-de.org/](https://es-de.org/)

**EmulationStation-DE Important Links**

* User Guide: [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md)
* FAQ: [https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)
* Releases: [https://gitlab.com/es-de/emulationstation-de/-/packages/](https://gitlab.com/es-de/emulationstation-de/-/packages/)

EmulationStation-DE currently scrapes art from [https://thegamesdb.net/](https://thegamesdb.net/) and [https://www.screenscraper.fr/](https://www.screenscraper.fr/).

Read the [Steam ROM Manager](../steamos/steam-rom-manager.md) page to learn more about Steam Rom Manager and how it can be used in tandem with EmulationStation-DE!


***

## Emulationstation-DE Table of Contents

1. [Getting started with EmulationStation-DE](#getting-started-with-emulationstation-de)
    - [Configuration](#emulationstation-de-configuration)
    - [EmulationStation-DE Folder Locations](#emulationstation-de-folder-locations)
    - [How to Update EmulationStation-DE](#how-to-update-emulationstation-de)
    - [How to Launch EmulationStation-DE in Desktop Mode](#how-to-launch-emulationstation-de-in-desktop-mode)
    - [How to add EmulationStation-DE to your Steam Library](#how-to-add-emulationstation-de-to-your-steam-library)
    - [Hotkeys](#emulationstation-de-hotkeys)

2. [EmulationStation-DE Tips and Tricks](#emulationstation-de-tips-and-tricks)
    - [Tips for Navigating EmulationStation-DE](#tips-for-navigating-emulationstation-de)
    - [How to Select a Different Emulator for a System](#how-to-select-a-different-emulator-for-a-system)
    - [How to Select a Different Emulator on a Per-Game Basis](#how-to-select-a-different-emulator-on-a-per-game-basis)
    - [How to Manage Multiple Discs](#how-to-manage-multiple-discs)
    - [How to Manage Multiple BIN and CUE files](#how-to-manage-multiple-bin-and-cue-files)
    - [How to Download Themes](#how-to-download-themes)

***

## Getting started with EmulationStation-DE
[Back to the Top](#emulationstation-de-table-of-contents)

***

### Emulationstation-DE Configuration
[Back to the Top](#emulationstation-de-table-of-contents)

* Executable Location: `Emulation/tools/EmulationStation-DE-x64_SteamDeck.AppImage`
* Scraped Media Location: `Emulation/tools/downloaded_media`
* Config Location: `/home/deck/.emulationstation`

Note: `~/.emulationstation` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click "view hidden files" to see these folders.

***

### EmulationStation-DE Folder Locations
[Back to the Top](#emulationstation-de-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

Do note that some of these paths have been adjusted from EmulationStation-DE's defaults. If you are reading EmulationStation-DE's [User Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md), make sure to also use the below file locations as a reference.

`$HOME/.emulationstation`

```
.emulationstation
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

### How to Update EmulationStation-DE
[Back to the Top](#emulationstation-de-table-of-contents)

**How to Update EmulationStation-DE**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `EmulationStation-DE-x64_SteamDeck.AppImage`
    * Refer to [How to Swap Out AppImages and Binaries](../../file-management/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions
* Through the application's automatic updater
    * When you open EmulationStation-DE, you may be prompted for an update, accept the prompt to update the application
        * The automatic updater is only available on EmulationStation-DE versions `2.1.0` and up

***

### How to Launch EmulationStation-DE in Desktop Mode
[Back to the Top](#emulationstation-de-table-of-contents)

**How to Launch EmulationStation-DE in Desktop Mode**

* Launch the AppImage in `/Emulation/tools/EmulationStation-DE-x64_SteamDeck.AppImage`
* Launch EmulationStation-DE from `Steam` after adding it via the `EmulationStationDE` parser in `Steam Rom Manager`

***

### How to Add EmulationStation-DE to your Steam Library
[Back to the Top](#emulationstation-de-table-of-contents)

In Desktop Mode, you can open `EmulationStation-DE` by opening the executable here: `Emulation/tools/EmulationStation-DE-x64_SteamDeck.AppImage`. However, it's recommended you add EmulationStation-DE to Steam through Steam ROM Manager so you can use it in Game Mode as a front-end for your ROMs.

**Here's How**

1. In Desktop Mode, open Steam Rom Manager
2. Turn all the parsers off except for `EmulationStation-DE`
    * It's recommended to turn on the `Emulators` parser as well so you can configure your Emulators directly in `Game Mode`
3. Click `Preview` in the top left of the application
4. Click `Generate app list`, wait a moment
5. Click `Save app list`, wait for a message to pop up: `Done adding/removing entries`
6. EmulationStation-DE will now be added to your Steam Library.

Watch the following GIF for a visual:

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/c165d87500dd88a51b8ec80c5173e0950aebfe25/GIFs/Adding%20EmulationStation-DE%20to%20Steam.gif?raw=true"/>


***

### Emulationstation-DE Hotkeys
[Back to the Top](#emulationstation-de-table-of-contents)

EmulationStation-DE comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - EmulationStation-DE`. The hotkeys below can only be used if you have the Steam Input profile active.

| Hotkey         | EmulationStation-DE       |
|----------------|---------------------------|
| Citra          | Left Trackpad Touch  Menu |
| Cemu           | Left Trackpad Touch  Menu |
| No Profile     | Left Trackpad Touch  Menu |
| mGBA           | Left Trackpad Touch  Menu |
| RMG            | Left Trackpad Touch  Menu |
| melonDS        | Left Trackpad Touch  Menu |
| PPSSPP         | Left Trackpad Touch  Menu |
| DuckStation    | Left Trackpad Touch  Menu |

**Note:** 

* [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile)
* [Steam Deck Button Layout](../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)

#### An explanation of the EmulationStation-DE Profile

Some emulators set up by EmuDeck need a unique steam input profile (like Cemu or Citra) since you cannot do combo hotkeys easily. These emulators use a Steam Input profile to bind keyboard keys to buttons on a radial or touch menu.

The EmulationStation-DE combines all of these different profiles into a single menu and allows you to select your emulator profile on the fly. For emulators without a Steam Input profile, use combo hotkeys. Visit the [Hotkeys](../../controls-and-hotkeys/steamos/hotkeys.md) page for both a list of the specific buttons on the various radial and touch menus as well as the combo hotkeys.

#### How to Use the EmulationStation-DE Profile

The EmulationStation-DE profile will be automatically applied to your EmulationStation-DE shortcut. If you have an older install of EmuDeck, you may need to re-run Steam ROM Manager with the EmulationStation-DE parser toggled to apply this profile.

After the EmulationStation-DE profile is applied, use the left trackpad to pull up the menu and **long-press** an icon to switch into the respective profile. The buttons on the various touch and radial menus use a **long-press** to activate the respective hotkey. 

All of the profiles include a `Return to Main Menu` button allowing you to return to the profile switcher menu.

If you do not see an emulator on the EmulationStation-DE touch menu, it likely uses combo hotkeys. The [Hotkeys](../../controls-and-hotkeys/steamos/hotkeys.md) page covers the combo hotkeys for the various emulators. 

All of the Steam input profiles featured on the EmulationStation-DE profile are specifically for **standalone emulators**. For example, the melonDS and the mGBA profiles will not work if you are using the RetroArch cores. You will need to use the combo hotkeys instead: [RetroArch Hotkeys](../../controls-and-hotkeys/steamos/hotkeys.md#retroarch). To switch to the standalone emulator in EmulationStation-DE, read [How to Select a Different Emulator for a System](#how-to-select-a-different-emulator-for-a-system).


#### Video Showcase

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/emulationstation-de-steam-input-showcase.mp4" type="video/mp4">
  </video>
</figure>


***

## EmulationStation-DE Tips and Tricks
[Back to the Top](#emulationstation-de-table-of-contents)

### Tips for Navigating EmulationStation-DE
[Back to the Top](#emulationstation-de-table-of-contents)

#### Quick-Jumping Through Menus

* If you use the shoulder and trigger buttons, you can quick-jump through all menus, including the gamelist view menus.

***

### How to Select a Different Emulator for a System
[Back to the Top](#emulationstation-de-table-of-contents)

1. In EmulationStation-DE, press the `Start` button
2. Scroll down and select `Other Settings`
3. Select `Alternative Emulators`
4. Scroll down to the system you would like to configure, press `B`, and select your preferred emulator.

Watch the following GIF for a visual:

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/8a63e0196e44930de6a3a328ea24429beea15673/GIFs/How%20to%20Select%20a%20Different%20Emulator%20for%20a%20System.gif?raw=true"/>

***

### How to Select a Different Emulator on a Per-Game Basis
[Back to the Top](#emulationstation-de-table-of-contents)

EmulationStation-DE allows you to pick alternative emulators on a per-game basis. This may come in handy when different emulators have different levels of compatibility. You can use this option to switch between Yuzu and Ryujinx on a per-game basis for the Nintendo Switch.

On a game in a console list, press the `select ` button, scroll down and select `EDIT THIS GAME'S METADATA`, scroll down and select `ALTERNATIVE EMULATOR`, pick which emulator you would like to use for that game.

**Note:** This feature is also required to get PrimeHack to work through EmulationStation-DE. For Primehack, place your `Metroid Prime Trilogy` ROM in the `wii` folder. Follow the above steps, and choose `PrimeHack [Standalone] ` for `Metroid Prime Trilogy`.

Watch the following GIF for a visual:

<img src="https://user-images.githubusercontent.com/108900299/193986411-74c137f0-c4d3-4c4a-a354-fd8f26fb546a.gif" height="400">

***

### How to Manage Multiple Discs
[Back to the Top](#emulationstation-de-table-of-contents)

Before selecting one of the methods below, it is highly recommended you use the EmuDeck compressor to compress your ROMs to a single compressed file (the file format varies depending on which system you are emulating). 

Do note that if you are using multi-disc games, the EmuDeck Compressor will instead create a compressed file per disc (combining the BIN and CUE files of each disc). You will still need to read through this section to learn how to "convert" these multi-disc games into a single entry. 

Regardless of whether or not you choose to compress your games, the two methods below will cover how to tidy your files in EmulationStation-DE and ensure that you only have **one entry** per game. 

***

#### Method 1:  Directories interpreted as files (Recommended)

1. Create an [M3U File](../../file-management/steamos/file-management.md#how-to-create-an-m3u-file)
2. Place all of your disc files with the M3U file in a folder
3. Rename the folder to match the M3U file exactly including the file extension `.m3u`
    * Example: <img src="https://user-images.githubusercontent.com/108900299/220529984-3a333b70-ad70-4815-8490-45236414cd9a.png" height="300">

**Note:**

* This method is not compatible with Steam ROM Manager. You may instead use [Method 2: Create an M3U file and hide each of the disc entries in EmulationStation-DE](#method-2-create-an-m3u-file-and-hide-each-of-the-disc-entries-in-emulationstation-de)
* Refer to [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files) for additional information

***

#### Method 2: Create an M3U file and hide each of the disc entries in EmulationStation-DE

1. Create an [M3U File](../../file-management/steamos/file-management.md#how-to-create-an-m3u-file)
2. In EmulationStation-DE, press `Start`, `Other Settings`, toggle `Show Hidden Games` off
    * <img src="https://user-images.githubusercontent.com/108900299/220525893-83723351-a594-4f40-b106-0170085139cd.png" height="300">
3. For each disc entry, press select, press `Edit This Game's Metadata`, scroll down, toggle on `Hidden`, press `Save`, `Apply`
4. Repeat for each disc entry

***

### How to Manage Multiple BIN and CUE files
[Back to the Top](#emulationstation-de-table-of-contents)

This section is intended only for single disc games. If your game contains multiple discs, see [How to Manage Multiple Discs](#how-to-manage-multiple-discs).

Before selecting one of the methods below, it is highly recommended you use the EmuDeck compressor to compress your ROMs to a single compressed file (the file format varies depending on which system you are emulating). 

If you choose to compress your games, the section below is **not necessary**.  

#### Method 1:  Directories interpreted as files (Recommended)

See [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#directories-interpreted-as-files) to learn how. 

Do note that this method is not compatible with Steam ROM Manager. You may instead use [Method 2: Hide each of the BIN entries in EmulationStation-DE](#method-2-hide-each-of-the-bin-entries-in-emulationstation-de).

***

#### Method 2: Hide each of the BIN entries in EmulationStation-DE

If you are using BIN and CUE files, you will need to hide the BIN files and only keep the CUE entry. The CUE contains the information required to run each BIN file. 

1. In EmulationStation-DE, press `Start`, `Other Settings`, toggle `Show Hidden Games` off
    * <img src="https://user-images.githubusercontent.com/108900299/220525893-83723351-a594-4f40-b106-0170085139cd.png" height="300">
2. For each BIN entry, press select, press `Edit This Game's Metadata`, scroll down, toggle on `Hidden`, press `Save`, `Apply`
3. Repeat for each BIN entry


***

### How to Download Themes
[Back to the Top](#emulationstation-de-table-of-contents)

**Themes List:** [https://gitlab.com/es-de/themes/themes-list](https://gitlab.com/es-de/themes/themes-list)

#### Prerequisites

* EmulationStation-DE 2.0.1 or above
   * Update through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application

#### How to Download Themes

- [Method 1: Theme Downloader](#method-1-theme-downloader)
- [Method 2: Manual](#method-2-manual)

##### Method 1: Theme Downloader

1. Open EmulationStation-DE
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
2. Open the link for the respective theme, it will take you the respective theme section on the EmulationStation-DE themes page
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
8. To use the theme: Open EmulationStation-DE in Game Mode, press the `Start` button, `UI Settings`, `Theme Set`, and select the theme you downloaded
    * <img src="https://user-images.githubusercontent.com/108900299/224561706-59d4dec1-2d0c-4c33-a1e8-3f5cf72c93a2.png" height="300">

***
