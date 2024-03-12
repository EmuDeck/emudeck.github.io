# ScummVM is an application that allows you to play classic point-and-click adventure games and RPGs.

Website: [https://www.scummvm.org/](https://www.scummvm.org/)

GitHub: [https://github.com/scummvm/scummvm](https://github.com/scummvm/scummvm)

Compatibility List: [https://www.scummvm.org/compatibility/](https://www.scummvm.org/compatibility/)

ScummVM's Wiki: [https://docs.scummvm.org/en/v2.6.0](https://docs.scummvm.org/en/v2.6.0)

***

## ScummVM Table of Contents

1. [Getting Started with ScummVM](#getting-started-with-scummvm)
    - [Configuration](#configuration)
    - [ScummVM Folder Locations](#scummvm-folder-locations)
    - [How to Update ScummVM](#how-to-update-scummvm)
    - [How to Launch ScummVM in Desktop Mode](#how-to-launch-scummvm-in-desktop-mode)
    - [File Formats](#file-formats)

2. [ScummVM Tips and Tricks](#scummvm-tips-and-tricks)
    - [How to Configure ScummVM to Work with Steam ROM Manager and ES-DE](#how-to-configure-scummvm-to-work-with-es-de-and-steam-rom-manager)
        - [How to Configure ScummVM to Work With Steam ROM Manager](#how-to-configure-scummvm-to-work-with-steam-rom-manager)
        - [How to Configure ScummVM to Work With ES-DE](#how-to-configure-scummvm-to-work-with-es-de)
    - [How to Roll Back ScummVM to an Older Version](#how-to-roll-back-scummvm-to-an-older-version)
    - [How to Configure Language Settings](#how-to-configure-language-settings)


***

## Getting Started with ScummVM
[Back to the Top](#scummvm-table-of-contents)

ScummVM is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/scummvm`. Read the [Configuration](#configuration) section to learn more about ScummVM and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your ScummVM ROMs:

* `ES-DE`
    * To play ScummVM games in ES-DE, read: [How to Configure ScummVM to Work With ES-DE](#how-to-configure-scummvm-to-work-with-es-de) 
* `ScummVM Flatpak` 
    * To use this parser, read: [How to Configure ScummVM to Work With Steam ROM Manager](#how-to-configure-scummvm-to-work-with-steam-rom-manager)
* `Emulators`

***

### Configuration
[Back to the Top](#scummvm-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.scummvm.ScummVM`
* ROM Location: `Emulation/roms/scummvm`
* ScummVM does not need any additional BIOS files or firmware to run
* Saves: `Emulation/saves/scummvm/saves`

**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

#### Works With
* Steam ROM Manager: [How to Configure ScummVM to Work With Steam ROM Manager](#how-to-configure-scummvm-to-work-with-steam-rom-manager)
* ES-DE: [How to Configure ScummVM to Work With ES-DE](#how-to-configure-scummvm-to-work-with-es-de)


***

### ScummVM Folder Locations
[Back to the Top](#scummvm-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.var/app/org.scummvm.ScummVM`

```
org.scummvm.ScummVM/
├── cache
│   ├── fontconfig
│   ├── scummvm
│   │   ├── icons
│   │   └── logs
│   │       └── scummvm.log
│   └── tmp
├── config
│   ├── pulse
│   │   └── cookie
│   ├── scummvm
│   │   ├── scummvm.ini
│   │   └── scummvm.ini.bak
│   └── user-dirs.dirs
└── data
    └── scummvm
```

***

### File Formats
[Back to the Top](#scummvm-table-of-contents)

**It varies.**

Refer to [https://docs.scummvm.org/en/latest/use_scummvm/game_files.html and https://wiki.scummvm.org/index.php?title=Category:Supported_Games](https://docs.scummvm.org/en/latest/use_scummvm/game_files.html and https://wiki.scummvm.org/index.php?title=Category:Supported_Games) for additional detail. 

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

### How to Configure ScummVM to Work with ES-DE and Steam ROM Manager 
[Back to the Top](#scummvm-table-of-contents)

#### Preface

Since ScummVM ROMs come in a wide variety of formats, parsing these ROMs through Steam ROM Manager and ES-DE can be tricky. However, the included Steam ROM Manager parser and ES-DE include fairly easy methods to parse these ROMs and allow you to play them depending on your preferred front-end. 

Depending on your preferred front-end (adding ROMs to Steam through Steam ROM Manager or ES-DE), "converting" these ROMs into a usable format may differ. 

* If you **primarily use ES-DE** and do not use Steam ROM Manager for ScummVM whatsoever
    * Proceed to [How to Configure ScummVM to Work With ES-DE](#how-to-configure-scummvm-to-work-with-es-de)
* If you **primarily use Steam ROM Manager** and do not use ES-DE for ScummVM whatsoever
    * Proceed to [How to Configure ScummVM to Work With Steam ROM Manager](#how-to-configure-scummvm-to-work-with-steam-rom-manager)
* If you like to **mix and match** between Steam (through Steam ROM Manager) and ES-DE, it is recommended you use ES-DE's method of structuring ScummVM ROMs 
    * Using this method will likely cause your ROMs to not be parsed correctly in Steam ROM Manager, see [How to Fix a Mismatched Entry](../../tools/steamos/steam-rom-manager.md#how-to-fix-a-mismatched-entry) to fix any potential mismatches

#### How to Configure ScummVM to Work With ES-DE
[Back to the Top](#scummvm-table-of-contents)

To configure ScummVM games with **ES-DE**, you will need to place a compatible ScummVM game in `Emulation/roms/scummvm`. Afterwards, you will need to create a `.scummvm` file matching the game's short name and rename the game folder to match that newly created `.scummvm` file. 

##### How to Configure ScummVM to Work With ES-DE

1. Open [https://www.scummvm.org/compatibility](https://www.scummvm.org/compatibility), and note down the game's `Short Name` in the `ScummVM ID` column. 
    * You will see two words, `word1:word2`, in the `ScummVM ID` column, the shortname is `word2` 
    * For example: Discworld's `ScummVM ID` is `tinsel:dw`, therefore the shortname is `dw`
        * ![Discworld Short Name](../../assets/scummvm-esde-1.png) 
2. In `Emulation/roms/scummvm`, rename your game folder to `shortname.scummvm`
    * Replace `shortname` with the shortname you located in Step 1
    * The folder needs to contain no spaces and all lowercase characters including the file extension `.scummvm`
    * For Example: `dw.scummvm`
        * ![Discworld Folder Name](../../assets/scummvm-esde-2.png)
3. In the game folder, right click and create a new text file
4. Name it `shortname.scummvm`, matching the folder name exactly
    * When you create a text file, Linux may attach a `.txt` file extension, replace `.txt` with `.scummvm` if this is the case
    * Replace `shortname` with the shortname you located in Step 1
    * The file needs to match the folder name exactly, no spaces, all lowercase characters including the file extension `.scummvm`
    * For example: `dw.scummvm`, matching the folder example in Step 2
        * ![Discworld File Name](../../assets/scummvm-esde-3.png)
5. Right click the file you created in Step 4 and open it in Kate or a text editor of your choice
6. Write the `shortname` from Step 1 on a single line. Save and exit the text file
    * For example:
        * ![Discworld Text Example](../../assets/scummvm-esde-4.png)
6. Repeat as needed for each ScummVM game
7. Your game should now show up in and launch directly from ES-DE
    * To scrape your games, use ScreenScraper instead of TheGamesDB for best results

A few examples using folder visualizations:

`The Dig`

```
dig.scummvm
├── DIG.LA0
├── DIG.LA1
├── DIGMUSIC.BUN
├── dig.scummvm
├── DIGVOICE.BUN
└── VIDEO
```

`Beneath a Steel Sky`

```
sky.scummvm
├── MT32_CONTROL.ROM
├── MT32_PCM.ROM
├── SKY.CPT
├── sky.dnr
├── sky.dsk
└── sky.scummvm
```

`The Neverhood`

```
neverhood.scummvm
├── a.blb
├── c.blb
├── hd.blbfor ScummVM
└── t.blb
```

***

#### How to Configure ScummVM to Work With Steam ROM Manager
[Back to the Top](#scummvm-table-of-contents)

To configure ScummVM games with **Steam ROM Manager**, you will need to place a compatible ScummVM game in `Emulation/roms/scummvm`, and rename the game folder to add a `.scummvm` file extension. 


In order for Steam ROM Manager to scrape the game, the name of the game folder itself needs to match a pre-existing page on [https://www.steamgriddb.com/](https://www.steamgriddb.com/). 


If a page does not currently exist for your ScummVM game, request one at [https://www.steamgriddb.com/request-game](https://www.steamgriddb.com/request-game). Make sure to upload art as well once your page has been approved. 

##### How to Configure ScummVM to Work With Steam ROM Manager

1. In `Emulation/roms/scummvm`, rename your game folder to `GAMENAME.scummvm` 
    * Use [https://www.steamgriddb.com/](https://www.steamgriddb.com/) to locate the game page so Steam ROM Manager can properly scrape art for your game
    * Example:
        * Maniac Mansion: [https://www.steamgriddb.com/game/14212](https://www.steamgriddb.com/game/14212)
            * Name the game folder `Maniac Mansion (1987).scummvm`
2. Repeat for each ScummVM game
3. Your game should now be compatible with Steam ROM Manager

Example: <img src="https://user-images.githubusercontent.com/108900299/214456141-c58df2c4-679f-41e3-ac68-f7c850567f9e.png" height="300">

***

### How to Roll Back ScummVM to an Older Version
[Back to the Top](#scummvm-table-of-contents)

If you do not have access to a mouse and keyboard for the below section, use `L2` to right click and `R2` to left click. Alternatively, remote into your Steam Deck using one of the methods found in the FAQ, [How do I remotely control my Steam Deck?](../../frequently-asked-questions/steamos/index.md#how-do-i-remotely-control-my-steam-deck).


1. In Desktop Mode, open `Konsole`
2. To see a list of prior versions of the emulator, type:
    * `flatpak remote-info --log flathub org.scummvm.ScummVM`
3. If Konsole prompts you to select `system` or `user`, enter `2` to select `user` 
4. Konsole will list a list of previous versions for the flatpak. The important line for each version is the `Commit: ` line. The `Commit: ` line will have a long accompanying alphanumeric string (the “commit” code). Copy the string for the version you want to downgrade to.
    * Using Citra as an example:
        * ![How to Roll Back Flatpaks: 1](../../assets/how-to-roll-back-flatpaks-1.png)
5. To downgrade to the version you want:
    * `flatpak update --commit=put_commit_code_here org.scummvm.ScummVM`
    * Replace `put_commit_code_here` with the actual code you located in Step 2. 
        * Using Citra as an example:
            * ![How to Roll Back Flatpaks: 2](../../assets/how-to-roll-back-flatpaks-2.png)

If the above steps did not work and you are getting an error message along the lines of `Flatpak not installed`, your Flatpak is likely installed at the system level instead. Select one of the below solutions:

Solution 1: Open the EmuDeck application, click the `Manage Emulators` page, select the emulator in question, and click `Reinstall / Update`.

Solution 2: Add `sudo` in front of the commands written in Step 2 and Step 5. In Step 2, write `sudo flatpak remote-info --log flathub org.scummvm.ScummVM` and in Step 5, write `sudo flatpak update --commit=put_commit_code_here org.scummvm.ScummVM`.

***

### How to Configure Language Settings
[Back to the Top](#scummvm-table-of-contents)

#### UI

1. In Desktop Mode, open ScummVM
2. Click `Global Options`
3. Click the `GUI` tab
4. To the right of `GUI Language`, select your preferred language in the drop-down menu

#### In-Game

1. In Desktop Mode, open ScummVM
2. Click `Add Game...`
3. Locate your game folder and click `Choose`
4. Work through the prompts and select your preferred language on the `Game` screen
5. If you added your game without selecting your preferred language, click your game in the list, click `Game Options...`
6. Click the `Game` tab
7. To the right of `Language`, select your preferred language in the drop-down menu
 
***