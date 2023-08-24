# Vita3K is a Playstation Vita emulator.

Website: [https://vita3k.org/](https://vita3k.org/)

Github: [https://github.com/Vita3K/Vita3K](https://github.com/Vita3K/Vita3K)

Compatibility List: [https://vita3k.org/compatibility.html?lang=en](https://vita3k.org/compatibility.html?lang=en)

Quickstart Guide: [https://vita3k.org/quickstart.html](https://vita3k.org/quickstart.html)

***

## Vita3K Table of Contents

1. [Getting Started with Vita3K](#getting-started-with-vita3k)
    - [Configuration](#vita3k-configuration)
    - [How to Update Vita3K](#how-to-update-vita3k)
    - [How to Launch Vita3K in Desktop Mode](#how-to-launch-vita3k-in-deskop-mode)
    - [File Formats](#vita3k-file-formats)

2. [Vita3K Tips and Tricks](#vita3k-tips-and-tricks)
    - [How to Configure Vita3K to Work With EmulationStation-DE](#how-to-configure-vita3k-to-work-with-emulationstation-de)

***

## Getting Started with Vita3K
[Back to the Top](#vita3k-table-of-contents)

In order to play a game on Vita3K, you will need to install firmware through the Vita3K UI. In desktop mode, open Vita3K, either in the application menu or through its shortcut in `Emulation/tools/launchers/vita3k.sh`. In Vita3K, click  `File`, click `Install Firmware`. Firmware is provided legally by Sony. 

Follow Vita3K's quickstart guide: https://vita3k.org/quickstart.html

Read the [Configuration](#vita3k-configuration) section to learn more about Vita3K and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your PSVita ROMs:

* `EmulationStation-DE`
* `Sony PlayStation Vita Installed PKG` 
* `Emulators`

***

### Vita3K Configuration
[Back to the Top](#vita3k-table-of-contents)

* Type of Emulator: Binary Package
* Config Location: `/home/deck/Applications/Vita3K`
* Executable Location: `/home/deck/Applications/Vita3K/Vita3K`
* Storage Location: `Emulation/storage/Vita3K`
    * Contains: `ux0`
* ROM Location: `Emulation/roms/psvita/InstalledGames`
    * `InstalledGames` is a symlink to `Emulation/storage/Vita3K/uxo/app`
* Firmware: Install firmware through Vita3K's GUI. Read the [Quickstart Guide](https://vita3k.org/quickstart.html) for a tutorial
* Saves: `Emulation/storage/Vita3K/ux0/user/00/savedata`
    * Save folders correspond to a game's Title ID. To locate your game's Title ID, open Vita3K, right click a game, and click `Information`

#### Folder Visualization

`$HOME/Applications/Vita3K`

```
Vita3K/
├── cache
│   ├── app_compat_db.xml
│   └── shaders
├── config.yml
├── config.yml.bak
├── data
│   ├── config
│   ├── fonts
│   └── image
├── imgui.ini
├── lang
├── libcrypto.so.3
├── libssl.so.3
├── shaderlog
├── shaders-builtin
│   ├── opengl
│   └── vulkan
├── texturelog
├── update-vita3k.sh
├── Vita3K
└── vita3k.log
```

`Emulation/storage/Vita3K`

```
Vita3K/
├── gro0
├── grw0
├── host0
├── imc0
├── os0
│   ├── kd
│   ├── sm
│   ├── ue
│   └── us
├── pd0
├── sa0
│   └── data
├── sd0
├── tm0
├── ud0
├── uma0
│   └── data
├── ur0
├── ux0
│   ├── app
│   ├── data
│   ├── license
│   ├── temp
│   ├── theme
│   └── user
├── vd0
├── vs0
│   ├── app
│   ├── data
│   ├── sys
│   ├── tool
│   └── vsh
└── xmc0
```

#### Works With
* Steam ROM Manager
* EmulationStation-DE
    * Refer to [How to Configure Vita3K to Work With EmulationStation-DE](#how-to-configure-vita3k-to-work-with-emulationstation-de) for instructions

***

### How to Update Vita3K
[Back to the Top](#vita3k-table-of-contents)

**How to Update Vita3K**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `Vita3K` 
    * Refer to [How to Swap Out AppImages and Binaries](../../file-management/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions

***

### How to Launch Vita3K in Desktop Mode

**How to Launch Vita3K in Desktop Mode**

* Launch `Vita3K Binary` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `vita3k.sh`
* Launch the binary in `/home/deck/Applications/Vita3K/Vita3K`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

### Vita3K File Formats
[Back to the Top](#vita3k-table-of-contents)

* .pkg
* NoNpDrm
* Manually decrypted games
* Installed `.vpk`

**Note:** Vitamin dumps are not supported and Maidump is unstable.

***


## Vita3K Tips and Tricks
[Back to the Top](#vita3k-table-of-contents)

***

### How to Configure Vita3K to Work With EmulationStation-DE
[Back to the Top](#vita3k-table-of-contents)

**Note:** This section requires you to install your PlayStation Vita games first through Vita3K. At this time, EmulationStation-DE only supports launching installed PSVita games. 

1. In Desktop Mode, open Vita3K
2. Right click a game of your choice, and click `Copy app info` --> `Title ID`
    * You may also click `Information` to see the `Title ID`
    *  Example 1:
        * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/acf8a386-da99-4700-a6eb-af4cefd502c9" height="300">
    * Example 2:
        * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/67c7a8ed-be17-4d45-a327-60489471bba1" height="300">
2. In `Emulation/roms/psvita`, right click, `Create New - Text File`
3. Name it `GAMENAME.psvita`
    * The name of the file is primarily for identifying it in EmulationStation-DE and scraping
4. Open the text file in Kate or a text editor of your choice and paste the `Title ID` from Step 1 on a single line
    * Using `Tales of Heart R` as an example: 
        * <img src="https://user-images.githubusercontent.com/108900299/196052342-6957f67d-d31c-4479-b4fa-7456d74c085c.png" height="300">
5. Save the text file and exit out
6. Repeat for each PlayStation Vita ROM
7. Your game should now show up in and launch directly from EmulationStation-DE

For additional detail, read EmulationStation-DE's section on Vita3K: [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-vita](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-vita)

***