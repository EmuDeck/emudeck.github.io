# RPCS3 is a Sony Playstation 3 Emulator.

Website: [https://rpcs3.net/](https://rpcs3.net/)

Quickstart Guide: [https://rpcs3.net/quickstart](https://rpcs3.net/quickstart)

Github: [https://github.com/RPCS3/rpcs3](https://github.com/RPCS3/rpcs3)

Compatibility List: [https://rpcs3.net/compatibility](https://rpcs3.net/compatibility)

RPCS3 Wiki: [https://wiki.rpcs3.net/index.php?title=Main_Page](https://rpcs3.net/compatibility)

***

# RPCS3 Table of Contents

1. [Getting Started with RPCS3](#getting-started-with-rpcs3)
    - [Configuration](#rpcs3-configuration)
    - [How to Update RPCS3](#how-to-update-rpcs3)
    - [How to Launch RPCS3](#how-to-launch-rpcs3)
    - [File Formats](#rpcs3-file-formats)
    - [Hotkeys](../../controls-and-hotkeys/windows/hotkeys.md#rpcs3-playstation-3)
2. [RPCS3 Tips and Tricks](#rpcs3-tips-and-tricks)
    - [How to Configure RPCS3 to Work With EmulationStation-DE](#how-to-configure-rpcs3-to-work-with-emulationstation-de)

***

## Getting Started with RPCS3
[Back to the Top](#rpcs3-table-of-contents)

In order to play a game on RPCS3, you need to install the firmware through the RPCS3 UI. Read [How to Launch RPCS3](#how-to-launch-rpcs3) to learn how to open RPCS3. In RPCS3, click File, click Install Firmware. Firmware is provided legally by Sony.

Follow RPCS3's Quickstart Guide for a step by step process on setting up RPCS3: [https://rpcs3.net/quickstart](https://rpcs3.net/quickstart)

Read the [Configuration](#rpcs3-configuration) section to learn more about RPCS3 and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Playstation 3 ROMs:

* `EmulationStation-DE`
    * To play PS3 games in EmulationStation-DE, read: [How to Configure RPCS3 to Work With EmulationStation-DE](#how-to-configure-rpcs3-to-work-with-emulationstation-de)
* `Sony PlayStation 3 - RPCS3 (Extracted ISO/PSN)` or `Sony PlayStation 3 - RPCS3 (Installed PKG)`
    * Read the [File Formats](#rpcs3-file-formats) section to learn more about these various file formats
* `Emulators`

***

### RPCS3 Configuration
[Back to the Top](#rpcs3-table-of-contents)

* Executable Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\RPCS3\rpcs3.exe`
* Config Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\RPCS3`
* Storage Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\RPCS3\dev_hdd0`
    * Contains the following folders: 
        * `game`
        * `home`
        * `photo`
        * `savedata`
* ROM Location: `Emulation\roms\ps3`
* Firmware: Install the firmware following the [Quickstart Guide](https://rpcs3.net/quickstart)
* Saves: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\RPCS3\dev_hdd0\home\00000001\savedata`

#### Works With
* Steam ROM Manager
* EmulationStation-DE
    * [How to Configure RPCS3 to Work With EmulationStation-DE](#how-to-configure-rpcs3-to-work-with-emulationstation-de)

***

### How to Update RPCS3
[Back to the Top](#rpcs3-table-of-contents)

***

### How to Launch RPCS3
[Back to the Top](#rpcs3-table-of-contents)

* Launch `Rpcs3` from the `EmuDeck` folder in the `Start Menu`
* Launch `rpcs3.bat` file in `Emulation\tools\launchers`
* Launch `rpcs3.exe` in `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\RPCS3` 
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

### RPCS3 File Formats
[Back to the Top](#rpcs3-table-of-contents)

* Folder Format: `\PS3_GAME\USRDIR\eboot.bin`
    * Place the folder in `Emulation\roms\ps3`
    * For more information on the `Folder Format`, read [RPCS3's Quickstart Guide](https://rpcs3.net/quickstart)
        * **Note:** Read the `Dumping Step-by-step` section specifically
* Install `.pkg` files directly through the RPCS3 UI
    * **Note:** You can drag and drop `.pkg` files to the RPCS3 UI
    * `.pkg` files are installed to: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\RPCS3\dev_hdd0\game`
* Install `.rap` files directly through the RPCS3 UI
    * **Note:** You can drag and drop `.rap` files to the RPCS3 UI
    * `.rap` files are installed to: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\RPCS3\dev_hdd0\game`

**Note:** `.iso` **is not** supported. You **cannot** extract PS3 ISOs into a folder (without decrypting it) and expect a working ROM. Read the `Dumping Step-by-step` section specifically of the [RPCS3 Quickstart Guide](https://rpcs3.net/quickstart) to learn how to extract `.iso` files into a decrypted folder. A ROM ending with the file extension `.iso` is **not supported.**

***

## RPCS3 Tips and Tricks
[Back to the Top](#rpcs3-table-of-contents)

***

### How to Configure RPCS3 to Work With EmulationStation-DE
[Back to the Top](#rpcs3-table-of-contents)

1. In `Desktop Mode`, open RPCS3
2. Skip this step if you have already added your games to RPCS3:
    * Either: 
        * In the top left click, `File`, click `Add Games`, locate your game
        * In the top left click, `File`, click `Install Packages/Raps/Edats`, and install your PKG
        * For more information, read the [File Formats](#rpcs3-file-formats) section
3. Right click your game, click `Create Shortcut`, click `Create Desktop Shortcut`
4. On your desktop, you should see an icon for your game. Move this icon to `Emulation\roms\ps3`
5. Your game should now show up in and launch directly from EmulationStation-DE

If you get an `Invalid file or folder` error message, you will need to change the `Alternative Emulator` in EmulationStation-DE for PlayStation 3 to `RPCS3 Shortcut [Standalone]`. 

You may also do this on a per-game basis if you are using a mix of folders and PKGs. On a game, press the `select ` button, scroll down and select `EDIT THIS GAME'S METADATA`, scroll down and select `ALTERNATIVE EMULATOR`, select PS3 and select the corresponding format.

Refer to [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-3](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-3), for additional information. 


***