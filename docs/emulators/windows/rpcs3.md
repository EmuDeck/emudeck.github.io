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
    - [How to Configure RPCS3 For EmulationStation-DE](#how-to-configure-rpcs3-for-emulationstation-de)

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

***

## RPCS3 Tips and Tricks
[Back to the Top](#rpcs3-table-of-contents)

***

### How to Configure RPCS3 For EmulationStation-DE
[Back to the Top](#rpcs3-table-of-contents)

First you need to rename your PS3 folder names and just add .ps3 at the end.

For instance:

`Heavenly Sword`

should be renamed:

`Heavenly Sword.ps3`

and then go to Main Menu, Other Settings, Alternative Emulators and chose RPCS3 Directory:
![](https://c10.patreonusercontent.com/4/patreon-media/p/post/84682828/b333f979d2e643a28918bd6aede6e77b/eyJ3Ijo4MjB9/1.png?token-time=1688774400&token-hash=m-nEiQ6cJFrRwRRGQyqqhEKPXOo647-0AL-igxxm4Vg%3D)

***