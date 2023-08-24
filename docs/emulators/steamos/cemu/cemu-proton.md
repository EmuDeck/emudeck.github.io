# Cemu is a Wii U Emulator.

Website: [https://cemu.info/](https://cemu.info/)

Github: [https://github.com/cemu-project/Cemu](https://github.com/cemu-project/Cemu)

Compatibility List: [https://compat.cemu.info/](https://compat.cemu.info/)

**This page is for the Proton build of Cemu. EmuDeck includes the native build of Cemu as an optional install. If you choose to download the native version, both versions will remain installed. One quick way to tell the difference is to compare the two GUIs. For the Native version of Cemu, visit [Cemu Native](./cemu-native.md).**

Native Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765451-f9e712cd-f6c5-4257-8821-8957f28b3745.png" height="300">

Proton Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765705-e8aa00ff-d647-4965-9e8a-253dfb36f289.png" height="300">


***


## Cemu Proton Table of Contents

1. [Getting started with Cemu](#getting-started-with-cemu)
    - [Setting up Cemu Questionnaire](#setting-up-cemu-questionnaire)
    - [Configuration](#cemu-proton-configuration)
    - [The Dangers of Proton](#the-dangers-of-proton)
    - [How to Update Cemu](#how-to-update-cemu)
    - [How to Switch Between Cemu Versions](#how-to-switch-between-cemu-versions)
    - [How to Launch Cemu in Desktop Mode](#how-to-launch-cemu-in-desktop-mode)
    - [File Formats](#cemu-proton-file-formats)
    - [How to Convert to WUA](#how-to-convert-to-wua)
    - [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    - [Hotkeys](#cemu-proton-hotkeys)
    - [Known Issues](#cemu-proton-known-issues)
2. [Cemu Tips and Tricks](#cemu-tips-and-tricks)
    - [How to Configure Gyro](#how-to-configure-gyro)
    - [How to Optimize Performance (Power Tools)](#how-to-optimize-performance-power-tools)
    - [How to Configure Multiplayer](#how-to-configure-multiplayer)
    - [How to Use the Wii U Pro Controller Configuration](#how-to-use-the-wii-u-pro-controller-configuration)
    - [How to Optimize Breath of the Wild](#how-to-optimize-breath-of-the-wild)

***

## Getting started with Cemu
[Back to the Top](#cemu-proton-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue.

Cemu is a fairly straight-forward emulator to set up, _if_ you use decrypted ROMs. Place your ROMs in `Emulation/roms/wiiu/roms`. **Do not** install your games. No additional setup is required. 

Read the [Configuration](#cemu-proton-configuration) section to learn more about Cemu and its folder locations. 

For updates and DLC, read [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates).  

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Wii U ROMs:

* `EmulationStation-DE`
* `Nintendo WiiU - Cemu (.rpx) - Proton` or `Nintendo WiiU - Cemu (.wud, .wux, .wua) - Proton`
    * Read the [File Formats](#cemu-proton-file-formats) section to learn more about these various file formats
    * `.rpx` and `.wua` are decrypted ROM formats
* `Emulators`

_If_ you intend on using encrypted ROMs, proceed to the [Setting up Cemu Questionnaire](#setting-up-cemu-questionnaire). 

***

### Setting up Cemu Questionnaire
[Back to the Top](#cemu-proton-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue. If you use decrypted ROMs, you do not need the following questionnaire. 

**Setting up Cemu Questionnaire**

1. Is your ROM encrypted? If yes, do you have a `keys.txt` in the right place with the correct keys for your games in the `keys.txt` file?
    1. What are keys?: Keys are required to decrypt Wii U ROMs. Your `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method of obtaining keys is piracy and cannot be discussed here or on the EmuDeck discord.
    2. Which Cemu ROM Formats are encrypted?: [File Formats](#cemu-proton-file-formats)
    3. `keys.txt` Location: `Emulation/roms/wiiu`
    4. If your ROM is NUS Format (a folder with .h3 and .app files), you will need to decrypt your ROM into the Loadiine format (folder format with three subfolders - code, content, meta). Decryption methods cannot be discussed here or on the EmuDeck discord.
2. Is your ROM decrypted?
    1. Which Cemu ROM Formats are decrypted?: [File Formats](#cemu-proton-file-formats)
    2. If your ROM is decrypted, place the ROM in `Emulation/roms/wiiu/roms`. Your game should launch without needing any keys. 
3. If you are getting an `Unable to launch game` error, did you place the `keys.txt` in the right place?
    1. `keys.txt` Location: `Emulation/roms/wiiu`
4. If you placed the `keys.txt` in the right place, and your ROM is still not working, does your `keys.txt` have the correct key for the ROM?
    1. Even if you placed a key for your game in `keys.txt`, you may still have the incorrect key. 
5. Did you transfer your ROM from another computer and did you compare file sizes to ensure it transferred successfully? 
6. Did you turn on Proton in Steam? If yes, turn it off. If you are unsure, check.
    1. How do I check?: [The Dangers of Proton](#the-dangers-of-proton)


***

### Cemu Proton Configuration
[Back to the Top](#cemu-proton-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue.

* Type of Emulator: Windows Executable Through Proton
* Executable Location (Cemu Script):  `Emulation/tools/launchers/cemu.sh`
    * Use `cemu.sh` to launch Cemu in desktop mode. 
* Executable Location (Windows EXE): `Emulation/roms/wiiu/cemu.exe`
    * Do not launch Cemu in desktop mode with `cemu.exe`.
* Emulator Folders Location: `Emulation/roms/wiiu`
    * Contains the following folders: 
       * `controllerProfiles`
       * `gameProfiles`
       * `graphicPacks`
       * `memorySearcher`
       * `mlc01`
       * `resources`
       * `roms`
       * `shaderCache`
* Cemu Configuration File: `Emulation/roms/wiiu/settings.xml`
* Persistent Storage: `Emulation/roms/wiiu/mlc01/`
* ROM Location: `Emulation/roms/wiiu/roms` 
    * Note the second `roms` folder in the path. 
    * Do not put DLC / update files in the ROM path. Refer to [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates) for DLC and updates. 
    * Place your game ROMs here, **do not** install your game ROMs
* `keys.txt` Location: `Emulation/roms/wiiu`
    * The `keys.txt` is only necessary if the Wii U ROM is encrypted.
    * `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method of obtaining keys is piracy and cannot be discussed here or on the EmuDeck discord.
* Saves Location:
    * Symlink:  `Emulation/saves/Cemu/saves/`
    * Target: `Emulation/roms/wiiu/mlc01/usr/save`

#### Folder Visualization

`Emulation/roms/wiiu/`

```
wiiu
├── Cemu.exe
├── controllerProfiles
│   ├── controller0.xml
│   ├── controller0.xml.bak
│   ├── deck2.xml
│   ├── deck2.xml.bak
│   ├── deck3.xml
│   ├── deck3.xml.bak
│   ├── deck4.xml
│   ├── deck4.xml.bak
│   ├── Deck-Gamepad-Gyro.xml
│   ├── Deck-Gamepad-Gyro.xml.bak
│   ├── Deck.xml
│   └── Deck.xml.bak
├── gameProfiles
│   ├── default
│   └── example.ini
├── graphicPacks
│   └── downloadedGraphicPacks
├── keys.txt
├── log.txt
├── memorySearcher
├── mlc01
│   ├── readme.txt
│   ├── readme.txt.bak
│   ├── sys
│   └── usr
├── resources
│   ├── ca
│   ├── de
│   ├── es
│   ├── fr
│   ├── hu
│   ├── it
│   ├── ja
│   ├── ko
│   ├── libusb-1.0.dll
│   ├── nb
│   ├── nl
│   ├── pl
│   ├── pt
│   ├── ru
│   ├── sharedFonts
│   ├── sv
│   ├── tr
│   ├── uk
│   ├── WinGamingInput.dll
│   └── zh
├── roms
├── settings.xml
├── shaderCache
│   ├── driver
│   ├── info.txt
│   ├── precompiled
│   └── transferable
└── title_list_cache.xml
```

`Emulation/roms/wiiu/mlc01`

```
wiiu/mlc01/
├── sys
│   ├── sys
│   ├── title
│   └── usr
└── usr
    ├── boss
    ├── save
    └── title
```

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### The Dangers of Proton
[Back to the Top](#cemu-proton-table-of-contents)

**IMPORTANT:**

There is outdated info on the internet that indicates you need to set Proton on Cemu or on games added for this console by Steam ROM Manager in Steam. Turning on Proton is not necessary. **DO NOT set Proton Compatibity on Cemu or Cemu games added to Steam.** Do NOT set `STEAM_COMPAT_MOUNTS` in parameters.

**Turning on Proton is not necessary because EmuDeck created a custom script to launch Cemu Proton. Turning on Proton through Steam breaks EmuDeck's custom script.**

Do not open the `Compatibility` screen in `Game Mode`. Do not touch any of the settings on the `Compatibility` screen in `Game Mode`. 

<img width="500" alt="proton" src="https://user-images.githubusercontent.com/108900299/194777064-526930f4-c36c-44be-b26a-ec192375ef7b.png">

***

### How to Update Cemu
[Back to the Top](#cemu-proton-table-of-contents)

**How to Update Cemu**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `Cemu.exe` 
   * Refer to [How to Swap Out AppImages and Binaries](../../../file-management/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions

***

### How to Switch Between Cemu Versions
[Back to the Top](#cemu-proton-table-of-contents)

EmuDeck includes a feature that allows you to swap between Cemu 1.26 (stable), 1.27, and 2.x. 

**To swap between versions**

1. Open EmuDeck
2. Click the `Manage Emulators` button
3. Click `Update your Emulators`
4. Click `Update AppImages and Binaries`
    * This includes the Windows version of Cemu
5. Check `Nintendo WiiU Emu (Proton)`
    * <img src="https://user-images.githubusercontent.com/108900299/236591838-e15dccf3-d001-423d-8357-a20e7b4ec028.png" height="300">
6. Select which Cemu version you would like to use
    * <img src="https://user-images.githubusercontent.com/108900299/236591942-ff2bedcc-f45e-44bb-8216-edfb21967fb7.png" height="300">
    * **IMPORTANT:** The GitHub link is the latest 2.x version of Cemu (version 2.0.36 in this image)
    * **IMPORTANT:** The GitHub link/2.x version of Cemu is still the Windows version of Cemu, the link does not refer to the native version

***

### How to Launch Cemu in Desktop Mode
[Back to the Top](#cemu-proton-table-of-contents)

**How to Launch Cemu in Desktop Mode**

* Launch `Cemu (Proton)` from the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `cemu.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager` 

***

### Cemu Proton File Formats
[Back to the Top](#cemu-proton-table-of-contents)

* Loadiine (rpx)
    * Three folders (code, content, meta) 
    * Folders should be inside a folder with the name of the game. This game  folder is placed in `Emulation/roms/wiiu/roms` (note the second `roms`)
    * **Visual Reference:** <img src="https://user-images.githubusercontent.com/108900299/194643616-cdf86618-1869-4ba5-b95e-f14066e77ac1.png" width="300">
    * Decrypted, does not require `keys.txt` 
* WUA (requires Cemu 1.27.1 or higher) 
    * Decrypted, does not require `keys.txt`
* WUX
    * Encrypted, requires `keys.txt` in `Emulation/roms/wiiu/`
* WUD 
    * Encrypted, requires `keys.txt` in `Emulation/roms/wiiu/`
* NUS
    * A folder with `.h3` and `.app` files
    * Encrypted, can be decrypted into a `Loadiine (rpx)` folder. Decryption methods cannot be discussed here or on the EmuDeck discord.

**IMPORTANT:**

* Some of these formats may require keys. We cannot help you get these. Place your `keys.txt` in: `Emulation/roms/wiiu`
    * `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method is piracy and cannot be discussed here or on the EmuDeck discord
* Once you put ROMs in place, you must refresh the list of games by right clicking in the Cemu UI and clicking `Refresh Games List`
    * Your game will not show up in Cemu until you refresh
* Refer to [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates), for DLC and Updates.

***

### How to Convert to WUA
[Back to the Top](#cemu-proton-table-of-contents)

The WUA format is a compressed version of the Loadiine format. It contains your base game, DLC, and updates all in one single file. The WUA format is a lot less fuss than the other formats, requires no keys, and is the most friendly format for EmulationStation-DE.

Here's how to convert to WUA:

**Note:** 

* Encrypted ROMs (WUX, WUD, NUS) cannot be converted to WUA
* Cemu only supports WUA on 1.27 and above
    * You cannot convert ROMs to WUA on 1.26, the stable build of Cemu

**Tutorial**

1. Open Cemu
2. Click `Tools`, `Title Manager`
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/201561912-95b38755-1f00-405c-9f14-5d01fbbb5621.png" height="300">
3. Either search for your ROM or find it in the list
4. Select the ROM with the word `base` in the `Type` column
5. Verify the pop-up prompt has your base game, your update, and your DLC files
    1. You can either place these update and DLC files in `Emulation/roms/wiiu/roms` temporarily or install them: [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
6. Wait, it may take a while
7. Right click in Cemu, and click `Refresh Game List` to refresh your file path in Cemu to the newly created WUA file

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/378de344c80bca61732515928cb5581086014b95/GIFs/How%20to%20Convert%20to%20WUA.gif?raw=true"/>

***

### How to Manage DLC and Updates
[Back to the Top](#cemu-proton-table-of-contents)

#### Preface

DLC and Updates must be installed using the title manager. DLC and Updates are saved to mlc01, in the `Emulation/roms/wiiu` folder.

**IMPORTANT:** Do not keep your DLC and update files in `Emulation/roms/wiiu/roms`. After installing these, you may either delete or move the files to a backup location. Keeping DLC and update files in this directory will create duplicates in Steam ROM Manager.  

***

#### Installing DLC/Updates Through Cemu

1. Launch Cemu on Desktop Mode
2. Click `File` in the top left, click `Install game title, update, or DLC...`
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/201563073-05165165-6b0c-4b00-b0de-9a02e81de3fd.png" height="300">
3. Click `/` and either navigate to your SD card, `/run/media/mmcblk0p1` or to your home folder `/home/deck`
4. Select the parent folder (named `<Game Name: Update ###>` or `<Game Name: DLC Y>`) of your update or DLC
5. On the right, you will see `code`, `content`, and `meta`
6. Select `meta`, and click `Open` in the bottom right
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/201563629-e619e6d7-af95-4778-8ed5-e6cea5f7fa3d.png" height="300">
7. Wait a moment, and your DLC or update will be successfully installed. Repeat for each DLC or update

**GIF**: <img src="https://user-images.githubusercontent.com/108900299/201563676-12836b79-42b7-48d9-9756-f3edf2273534.gif" height="400">

***

#### Manual DLC / Update Install Method

You can manually position the update and DLC files in the correct spot without using the Title Manager in Cemu.

The base of this operation is your mlc01 folder.

The folder structure for the `mlc01` is as follows: `mlc01/usr/title/`

Inside the title folder you need a `0005000e` folder for updates and a `0005000c` for DLC

inside those folders, you put a folder with the id of your game. 

[TitleID Database](http://wiiubrew.org/wiki/Title_database#00050000:_eShop_and_disc_titles)

US Breath of the wild for example:

* Update: `mlc01/usr/title/0005000e/101c9400/` {code, content, meta } go here

* DLC:     `mlc01/usr/title/0005000c/101c9400/` {code, content, meta } go here


***

### Cemu Proton Hotkeys
[Back to the Top](#cemu-proton-table-of-contents)

Cemu comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - Cemu`. The hotkeys below can only be used if you have the Steam Input profile active.

|  Hotkey                 | Cemu           |
|-------------------------|----------------|
|  Toggle Screens         | `R4`    |
|  Swap Screens           | `R5`    |
|  Exit                   | `Select` + `Start` |
|  Blow Mic               | `R3`    |

**Note:** 

* The `Blow Mic` hotkey only works if you are using the gamepad. 
* [How to Select a Steam Input Profile](../../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile)
* [Steam Deck Button Layout](../../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)

***

### Known Issues
[Back to the Top](#cemu-proton-table-of-contents)

* Xenoblade Chronicles X crashes on `1.27.1` with high frequency.
* Cemu will fail to launch on versions `1.27.1` through `2.0-16` when there's no internet and Gyro is enabled.
   * Cemu versions `2.0-17` and above will work offline with Gyro enabled. 
* The Legend of Zelda: Twilight Princess HD's missing UI graphics are fixed in `2.0.4`, but this version brings some performance regressions in other games. 

***

## Cemu Tips and Tricks
[Back to the Top](#cemu-proton-table-of-contents)

***

### How to Configure Gyro
[Back to the Top](#cemu-proton-table-of-contents)

Gyro for Cemu requires SteamDeckGyroDSU. SteamDeckGyroDSU can be installed via EmuDeck, or it can be installed manually.

Gyro only works with the Wii U Gamepad (enabled by default). If you changed your controller layout to the Pro Controller, gyro will not work. 

Read [How to Use the Wii U Pro Controller Configuration](#how-to-use-the-wii-u-pro-controller-configuration) to learn how to apply the Pro Controller layout on a per game basis. 

Visit [SteamDeckGyroDSU](../../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu) to learn how to install and utilize SteamDeckGyroDSU. 


***

### How to Optimize Performance (Power Tools)
[Back to the Top](#cemu-proton-table-of-contents)

Visit [Power Tools](../../../emudeck-application/steamos/emudeck-application-101.md#power-tools) to learn how to optimize performance using Power Tools. 

***

### How to Configure Multiplayer
[Back to the Top](#cemu-proton-table-of-contents)

1. Open Cemu
2. It's recommended you enable multiplayer on a per-game basis. Turning on additional controllers can disable single player controls in a handful of games
3. Right click a game, click `Edit Game Profile`
4. Click `Controller`
5. To the right of each Controller (`Controller 2` through `Controller 4`), select the respective `Deck #` profile (Deck 2 for player 2 and so on)
6. (Optional) You may need to re-arrange the controller order in Game Mode for your controllers to function as expected. See [How to Re-Arrange the Controller Order](../../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) for more information

<img src="https://user-images.githubusercontent.com/108900299/210124625-e758ef22-7d71-42c4-b18b-8535853d38d9.png" height="300">

***

### How to Use the Wii U Pro Controller Configuration
[Back to the Top](#cemu-proton-table-of-contents)

In some some games, the initial screen will prompt for a controller configuration: `Wii U Gamepad` or `Wii U Pro Controller`. 

For example: <img src="https://user-images.githubusercontent.com/108900299/214977370-2e0fece0-4166-45ea-b373-5599b4d2b7ca.png" height="400">

If you prefer to use the `Wii U Pro Controller` layout, you need to change the controller profile in Cemu. Make sure to change controller profiles on a per-game basis so it is persistent on EmuDeck updates.

**Tutorial**

1. Right click the game, click `Edit game profile`
2. Click the `Controller` tab
3. Change the profile to `Deck`
    * <img src="https://user-images.githubusercontent.com/108900299/194134513-a4cd2bd3-aa54-4fd3-9d39-2afedd13016b.png" height="300">
4. When you launch a game, one of the following two things will happen: 
    * Some games will prompt you to choose a controller layout, select the `Wii U Pro Controller`
    * Some games will automatically switch to the `Wii U Pro Controller` configuration


***

### How to Optimize Breath of the Wild
[Back to the Top](#cemu-proton-table-of-contents)

**IMPORTANT:** You need Version 208 of Breath of the Wild to use FPS++. Read [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates) to learn how to install game updates for Cemu. 

#### How to Configure Cemu

1. In Desktop Mode, open `Cemu (Proton)`
2. Right click `Breath of the Wild`, click `Edit graphic packs`
    * <img src="https://user-images.githubusercontent.com/108900299/236599757-fe0abb1f-2228-43f8-af5d-0aa0270df2cb.png" height="300">  
3. Click `Download latest community graphic packs`
4. Click the `+` to the left of `Mods` 
5. Check the box to the left of `FPS++`
6. Change the mode to `Advanced Settings`
7. Change the `Framerate Limit` to `40FPS`
    * <img src="https://user-images.githubusercontent.com/108900299/236599850-75b95b08-252d-467a-b586-4c12f079bb12.png" height="300">
8. Close out of Cemu

#### How to Configure Game Mode

1. In Game Mode, open Breath of the Wild
2. Click the `...` (the QAM) button
3. Click the battery icon
4. Click `Advanced View`
5. Enable `Use per-game profile`
6. Set the refresh rate to 40
    * <img src="https://user-images.githubusercontent.com/108900299/236642316-5bafc264-6c82-479c-988a-b419515ee92b.png" height="300">
7. Read [How to Optimize Performance](#how-to-optimize-performance-power-tools) to learn how to use the battery menu and `Power Tools` to further increase performance for Breath of the Wild 

After doing the steps in the above two sections, Breath of the Wild will run at a stable 40 FPS with temporary occasional hiccups in new areas while it compiles shaders.

***