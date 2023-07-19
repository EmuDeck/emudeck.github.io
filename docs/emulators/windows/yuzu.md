# Yuzu is a Nintendo Switch emulator.

Website: [https://yuzu-emu.org/](https://yuzu-emu.org/)

Github: [https://github.com/yuzu-emu/yuzu-mainline](https://github.com/yuzu-emu/yuzu-mainline)

Github Releases: [https://github.com/yuzu-emu/yuzu-mainline/releases](https://github.com/yuzu-emu/yuzu-mainline/releases)

Compatibility List: [https://yuzu-emu.org/game/](https://yuzu-emu.org/game/)

Quickstart guide: [https://yuzu-emu.org/help/quickstart/](https://yuzu-emu.org/help/quickstart/)

***


## Yuzu Table of Contents

1. [Getting Started with Yuzu](#getting-started-with-yuzu)
    - [Configuration](#yuzu-configuration)
    - [How to Update Yuzu](#how-to-update-yuzu)
    - [How to Launch Yuzu](#how-to-launch-yuzu)
    - [File Formats](#yuzu-file-formats)
    - [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    - [Hotkeys](../../controls-and-hotkeys/windows/hotkeys.md#yuzu-switch)

2. [Yuzu Tips and Tricks](#yuzu-tips-and-tricks)
    - [How to Set Up Early Access](#how-to-set-up-early-access)

***

## Getting Started with Yuzu
[Back to the Top](#yuzu-table-of-contents)

In order to play Nintendo Switch games on Yuzu, you will need a `prod.keys` file and `title.keys` to decrypt your ROMs. You will need to continue to keep your `prod.keys` and `title.keys` up to date as new Nintendo Switch firmware releases. 

If you play a Nintendo Switch game with Miis (for example - Mario Kart 8 Deluxe), you will need firmware files. 

Read Yuzu's Quick Start guide to learn how to dump Nintendo Switch keys, firmware, and ROMs: https://yuzu-emu.org/help/quickstart/. 

Place your ROMs in `Emulation\roms\switch`. Place your `prod.keys` file in `Emulation\bios\yuzu\keys`. Place your firmware files in `Emulation\bios\yuzu\firmware`. 

Read the [Configuration](#yuzu-configuration) section to learn more about Yuzu and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Nintendo Switch ROMs:

* `EmulationStation-DE`
* `Nintendo Switch - Yuzu` 
* `Emulators`

***

### Yuzu Configuration
[Back to the Top](#yuzu-table-of-contents)

* Executable Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\yuzu-windows-msvc\yuzu.exe`    
* Config Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\yuzu-windows-msvc\user\config`
* Storage Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\yuzu-windows-msvc\user\nand`
* ROMs: `Emulation\roms\switch`
* Firmware: `Emulation\bios\yuzu\firmware` 
    * Shortcut folder to the proper place. **DO NOT OVERWRITE** THE FOLDER or it won't work
    * Target: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\yuzu-windows-msvc\user\nand\system\Contents\registered`
* Keys: `Emulation\bios\yuzu\keys` 
    * Shortcut folder to the proper place. **DO NOT OVERWRITE** THE FOLDER or it won't work
    * Target: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\yuzu-windows-msvc\user\keys`
* Saves:
    * Shortcut: `Emulation\saves\yuzu`
    * Target: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\yuzu-windows-msvc\user\nand\user\save`

#### Works with:
* Steam ROM Manager
* EmulationStation-DE

***

### How to Update Yuzu
[Back to the Top](#yuzu-table-of-contents)

***

### How to Launch Yuzu
[Back to the Top](#yuzu-table-of-contents)

* Launch `Yuzu` from the `EmuDeck` folder in the `Start Menu`
* Launch `yuzu.bat` file in `Emulation\tools\launchers`
* Launch `yuzu.exe` in `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\yuzu-windows-msvc` 
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

### Yuzu File Formats
[Back to the Top](#yuzu-table-of-contents)

* .kp 
* .nca 
* .nro 
* .nso 
* .nsp 
* .xci

***

### How to Manage DLC and Updates
[Back to the Top](#yuzu-table-of-contents)

*** 

## Yuzu Tips and Tricks
[Back to the Top](#yuzu-table-of-contents)

***

### How to Set Up Early Access
[Back to the Top](#yuzu-table-of-contents)

Download it and copy Yuzu's files to `%USERPROFILE%\EmuDeck\EmulationStation-DE\Emulators\yuzu`

*** 
