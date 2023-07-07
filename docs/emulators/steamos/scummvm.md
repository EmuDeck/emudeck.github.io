# ScummVM is an application that allows you to play classic point-and-click adventure games and RPGs.

Website: https://www.scummvm.org/

Github: https://github.com/scummvm/scummvm

Compatibility List: https://www.scummvm.org/compatibility/

ScummVM's Wiki: https://docs.scummvm.org/en/v2.6.0

***

## ScummVM Table of Contents

1. [Getting Started with ScummVM](#getting-started-with-scummvm)
   - [Configuration](#configuration)
   - [How to Update ScummVM](#how-to-update-scummvm)
   - [How to Launch ScummVM in Desktop Mode](#how-to-launch-scummvm-in-desktop-mode)
   - [File Formats](#file-formats)

2. [ScummVM Tips and Tricks](#scummvm-tips-and-tricks)
   - [How to Configure ScummVM to Work With Steam ROM Manager](#how-to-configure-scummvm-to-work-with-steam-rom-manager)
   - [How to Configure ScummVM to Work With EmulationStation-DE](#how-to-configure-scummvm-to-work-with-emulationstation-de)

***

## Getting Started with ScummVM
[Back to the Top](#scummvm-table-of-contents)

ScummVM is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/scummvm`. Read the [Configuration](#configuration) section to learn more about ScummVM and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your ScummVM ROMs:

* `EmulationStation-DE`
  * To play ScummVM games in EmulationStation-DE, read: [How to Configure ScummVM to Work With EmulationStation-DE](#how-to-configure-scummvm-to-work-with-emulationstation-de) 
* `ScummVM Flatpak` 
  * To use this parser, read: [How to Configure ScummVM to Work With Steam ROM Manager](#how-to-configure-scummvm-to-work-with-steam-rom-manager)
* `Emulators`

***

### Configuration
[Back to the Top](#scummvm-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.scummvm.ScummVM`
* Game location: `Emulation/roms/scummvm`
* ScummVM does not need any additional BIOS files or firmware to run. 
* Saves: `Emulation/saves/scummvm/saves`

**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

#### Works With
* Steam ROM Manager: [How to Configure ScummVM to Work With Steam ROM Manager](#how-to-configure-scummvm-to-work-with-steam-rom-manager)
* EmulationStation-DE: [How to Configure ScummVM to Work With EmulationStation-DE](#how-to-configure-scummvm-to-work-with-emulationstation-de)


***

### File Formats
[Back to the Top](#scummvm-table-of-contents)

**It varies.**

Refer to https://docs.scummvm.org/en/latest/use_scummvm/game_files.html and https://wiki.scummvm.org/index.php?title=Category:Supported_Games for additional detail. 

***

### How to Update ScummVM
[Back to the Top](#scummvm-table-of-contents)

**How to Update ScummVM**

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application


***

### How to Launch ScummVM in Desktop Mode
[Back to the Top](#scummvm-table-of-contents)

**How to Launch ScummVM in Desktop Mode**

* Launch `ScummVM` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `scummvm.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`



***

## ScummVM Tips and Tricks
[Back to the Top](#scummvm-table-of-contents)

***

### How to Configure ScummVM to Work With Steam ROM Manager
[Back to the Top](#scummvm-table-of-contents)

**Tutorial:**

1. In `Emulation/roms/scummvm`, rename your game folder to `GAMENAME.scummvm` 
   * Use https://www.steamgriddb.com/ to find the game page so it can properly match to art in Steam ROM Manager
   * Example:
      * Maniac Mansion: https://www.steamgriddb.com/game/14212
         * Name the game folder `Maniac Mansion (1987).scummvm`
2. Repeat for each ScummVM game
3. Your game should now be compatible with Steam ROM Manager

Example: <img src="https://user-images.githubusercontent.com/108900299/214456141-c58df2c4-679f-41e3-ac68-f7c850567f9e.png" height="300">

**Note:** This method is not compatible with EmulationStation-DE. Read https://github.com/dragoonDorise/EmuDeck/wiki/ScummVM#how-to-configure-scummvm-to-work-with-emulationstation-de, on how to configure ScummVM ROMs to work with both Steam ROM Manager and EmulationStation-DE. 

***
 
### How to Configure ScummVM to Work With EmulationStation-DE
[Back to the Top](#scummvm-table-of-contents)

For EmulationStation-DE, once you place a compatible ScummVM game in `Emulation/roms/scummvm`, you need to both create a .scummvm file matching the game's short name and rename the game folder to match that .scummvm file. 

**Instructions:**

1. Open https://www.scummvm.org/compatibility, and note the game's `Short Name` in the `ScummVM ID` column, after the colon 
   1. Use the game's `Short Name` for these instructions
   2. Example: Discworld's shortname is `dw`
2. In `Emulation/roms/scummvm`, rename your game folder to `shortname.scummvm`
   1. No spaces, all lowercase including the file extension `.scummvm`
   2. Example: `dw.scummvm`
3. In the game folder, right click and create a new text file
4. Name it `shortname.scummvm`, matching the folder name exactly
   1. No spaces, all lowercase including the file extension `.scummvm`
   2. Example: `dw.scummvm`, matching Sub-Step 2 in Step 2
5. Save the text file
6. Repeat for each ScummVM game
7. Your game should now show up in and launch directly from EmulationStation-DE

**Note:** 

* This method is compatible with Steam ROM Manager, but your ROMs may not be parsed  correctly. You may need to create exceptions to properly match your ROMs to their respective SteamGridDB entry. Refer to https://github.com/dragoonDorise/EmuDeck/wiki/Steam-ROM-Manager#how-to-fix-a-mismatched-entry for instructions.
* Refer to https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#scummvm, for additional detail. 


***