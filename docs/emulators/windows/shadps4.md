# ShadPS4 is an experimental Sony Playstation 4 Emulator.


Website: [https://shadps4.net/](https://shadps4.net/)

FAQ: [https://shadps4.net/index.php/faq/](https://shadps4.net/index.php/faq/)

GitHub: [https://github.com/shadps4-emu/shadPS4](https://github.com/shadps4-emu/shadPS4)

Compatibility List: [https://github.com/shadps4-emu/shadps4-game-compatibility](https://github.com/shadps4-emu/shadps4-game-compatibility)

shadps4 Wiki: [https://wiki.shadps4.net/index.php?title=Main_Page](https://shadps4.net/compatibility)

***

## shadps4 Table of Contents

1. [Getting Started with shadps4](#getting-started-with-shadps4)
    - [Configuration](#shadps4-configuration)
    - [shadps4 Folder Locations](#shadps4-folder-locations)
    - [How to Update shadps4](#how-to-update-shadps4)
    - [How to Launch shadps4 in Desktop Mode](#how-to-launch-shadps4-in-desktop-mode)
    - [File Formats](#shadps4-file-formats)
        - [PKG and RAP File Format](#pkg-and-rap-file-format)
    - [Steam ROM Manager Parsers](#steam-rom-manager-parsers)

***

## Getting Started with shadps4
[Back to the Top](#shadps4-table-of-contents)

In order to play a game on shadps4, you need to the games through the shadps4 UI. In desktop mode, open shadps4, either in the application menu or through its shortcut in `Emulation/tools/launchers/shadps4.ps1`. In shadps4, click File, click Install Packages(PKG) and select your game, this will install it to Emulation/storage/shadps4/games

Read the [Configuration](#shadps4-configuration) section to learn more about shadps4 and its folder locations.

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Playstation 4 ROMs:

* `ES-DE`
    * To play PS4 games in ES-DE, see [How to Configure shadps4 to Work With ES-DE and Pegasus](#how-to-configure-shadps4-to-work-with-es-de-and-pegasus)
* `Sony PlayStation 4 - ShadPS4 (Shortcut)`
    * Read the [File Formats](#shadps4-file-formats) section to learn more about these various file formats
* `Emulators`

***

### shadps4 Configuration
[Back to the Top](#shadps4-table-of-contents)

* Storage Location: `Emulation/storage/shadps4/games`
* DLC Location: `Emulation/storage/shadps4/dlc`
* ROM Location: `Emulation/roms/ps4`
* Saves:
    * Folder: `Emulation/saves/shadps4/saves`

* Your game will not show in the shadps4 UI until you add it manually through the `Install Packages(PKG)` option under `File` in the top left.

#### Works With
* Steam ROM Manager
* ES-DE
* Pegasus

***

### shadps4 Folder Locations
[Back to the Top](#shadps4-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below.

`HOME/EmuDeck/Emulators/shadps4-qt`

`Emulation/storage/shadps4`

```
shadps4/
└── games
└── dlc
```

***

### How to Update shadps4
[Back to the Top](#shadps4-table-of-contents)

* Through the `Update your Emulators` section on the `Manage Emulators` page in the `EmuDeck` application

***

### How to Launch shadps4 in Desktop Mode
[Back to the Top](#shadps4-table-of-contents)

* Launch `ShadPS4` from the Start Menu/EmuDeck (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `shadps4.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

### shadps4 File Formats
[Back to the Top](#shadps4-table-of-contents)

- [PKG Format](#pkg-and-rap-file-format)

#### PKG and RAP File Format
[Back to the Top](#shadps4-file-formats)

Install `.pkg` files directly through the shadps4 GUI. `.pkg` files are installed to `Emulation/storage/shadps4/games/`.

After that right click on the installed game and select "Create Desktop", copy the new .desktop file you'll find in your Desktop to `Emulation/roms/ps4/shortcuts/`

***

### Steam ROM Manager Parsers
[Back to the Top](#shadps4-table-of-contents)

* PKG Format: Use the `Sony PlayStation 4 - ShadPS4 (Shortcut)` parser

***

### How to Configure shadps4 to Work With ES-DE and Pegasus
[Back to the Top](#shadps4-table-of-contents)

## AppImage

1. In `Desktop Mode`, open shadps4
2. Skip this step if you have already added your games to shadps4:
    * Either:
        * In the top left click, `File`, click `Install Packages (PKG)`, and install your PKG
        * For more information, read the [File Formats](#shadps4-file-formats) section
3. Right click your game, click `Create Shortcut`, click `Create Desktop Shortcut`
4. On your desktop, you should see an icon for your game. Move this icon to `Emulation/roms/ps4/shortcuts`
    * If your desktop shortcut contains special icons any special symbols (Ex: the copyright symbol, `©`), rename the desktop file to remove these symbols.
        * For example, rename `God Of War® Collection.lnk` to `God Of War Collection.lnk`, removing the `©` after `War`
5. (Optional) If the desktop file is opening shadps4 instead of the game:
    * In Desktop Mode, right click the desktop file
    * Click `Properties`
    * On the `General` tab, click `Change` to the right of the `Open With` line
    * Under `Application Preference Order`, click `shadps4`
    * Click `Remove` on the right
    * Click `Apply` in the bottom left and click `OK`
    * The desktop file will not work in Desktop Mode, but will launch the game directly either through a terminal or through ES-DE
6. Your game should now show up in and launch directly from ES-DE and Pegasus

If you get an `Invalid file or folder` error message, you will need to change the `Alternative Emulator` in ES-DE for PlayStation 4 to `shadps4 Shortcut [Standalone]`.

You may also do this on a per-game basis if you are using a mix of folders and PKGs. On a game, press the `select ` button, scroll down and select `EDIT THIS GAME'S METADATA`, scroll down and select `ALTERNATIVE EMULATOR`, select PS4 and select the corresponding format.

Refer to [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-4](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-4), for additional information.

***
