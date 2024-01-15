# PPSSPP is a Playstation Portable emulator.

Website: [https://www.ppsspp.org/](https://www.ppsspp.org/)

Github: [https://github.com/hrydgard/ppsspp](https://www.ppsspp.org/)

Compatibility List: [https://forums.ppsspp.org/showthread.php?tid=1473](https://www.ppsspp.org/)

**This page is for PPSSPP, a standalone emulator. This page is not for the PPSSPP RetroArch core. For more information on RetroArch and the PPSSPP RetroArch core, visit the [RetroArch Page](../steamos/retroarch.md).**

***

## PPSSPP Table of Contents

1. [Getting Started with PPSSPP](#getting-started-with-ppsspp)
    - [Configuration](#ppsspp-configuration)
    - [PPSSPP Folder Locations](#ppsspp-folder-locations)
    - [How to Update PPSSPP](#how-to-update-ppsspp)
    - [How to Launch PPSSPP in Desktop Mode](#how-to-launch-ppsspp-in-desktop-mode)
    - [File Formats](#ppsspp-file-formats)
    - [How to Manage DLC](#how-to-manage-dlc)
        - [Rock Band Unplugged DLC and Music Management](#rock-band-unplugged-dlc-and-music-management)
    - [Hotkeys](#ppsspp-hotkeys)

2. [PPSSPP Tips and Tricks](#ppsspp-tips-and-tricks)
    - [How to Install Custom Textures](#how-to-install-custom-textures)
    - [How to Use Cheats](#how-to-use-cheats)
    - [How to Roll Back PPSSPP to an Older Version](#how-to-roll-back-ppsspp-to-an-older-version)

***

## Getting Started with PPSSPP
[Back to the Top](#ppsspp-table-of-contents)

PPSSPP is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/psp`. No additional setup is required. Read the [Configuration](#ppsspp-configuration) section to learn more about PPSSPP and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your PSP ROMs:

* `EmulationStation-DE`
* `Sony PlayStation Portable - PPSSPP` 
* `Emulators`


***

### PPSSPP Configuration
[Back to the Top](#ppsspp-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.ppsspp.PPSSPP`
* Memstick Location: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP`
    * The `PSP` folder at the end of this path is equivalent to the `Memstick` folder 
* ROM Location: `Emulation/roms/psp`
* PPSSPP does not require any additional BIOS or firmware
* Saves: 
    * Symlink: `Emulation/saves/ppsspp/saves`
    * Target: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/SAVEDATA`
* Save States:
    * Symlink: `Emulation/saves/ppsspp/states/`
    * Target: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/PPSSPP_STATE`

**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click "view hidden files" to see these folders.  

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### PPSSPP Folder Locations
[Back to the Top](#ppsspp-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.var/app/org.ppsspp.PPSSPP`

```
org.ppsspp.PPSSPP
├── cache
├── config
│   ├── ppsspp
│   │   └── PSP
│   │       ├── CHEATS
│   │       ├── GAME
│   │       ├── PPSSPP_STATE
│   │       ├── SAVEDATA
│   │       ├── SYSTEM
│   │       │   ├── controls.ini
│   │       │   └── ppsspp.ini
│   │       └── TEXTURES
│   ├── pulse
│   │   └── cookie
│   └── user-dirs.dirs
└── data
```

***

### How to Update PPSSPP
[Back to the Top](#ppsspp-table-of-contents)

**How to Update PPSSPP**

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application


***

### How to Launch PPSSPP in Desktop Mode
[Back to the Top](#ppsspp-table-of-contents)

**How to Launch PPSSPP in Desktop Mode**

* Launch `PPSSPP` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `ppsspp.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

### PPSSPP File Formats
[Back to the Top](#ppsspp-table-of-contents)

* .elf 
* .cso 
* .iso 
* .pbp 
* .prx

***

### How to Manage DLC
[Back to the Top](#ppsspp-table-of-contents)

**Preface** 

The PPSSPP Flatpak (installed by EmuDeck) does not use a named Memstick folder to manage its contents. Instead, the Memstick folder is located here: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP`. 

**How to Manage DLC**

1. In the Memstick folder, create two folders: `GAME` and `SAVEDATA`
    * <img src="https://user-images.githubusercontent.com/108900299/214207497-a46f9090-28bc-4f5f-874c-967296afd97d.png" height="300">
    * If these folders exist, skip this step
2. Determine which type of DLC you have
    * DLC Type 1: `GAME` DLC
        * If the DLC folder includes `PARAM.PBP`, you have `GAME` DLC
    * DLC Type 2: `SAVEDATA` DLC
        * If the DLC folder includes `PARAM.SFO`, you have `SAVEDATA` DLC
3. Place the DLC into the matching folder
    * `GAME` DLC are placed here: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/GAME` 
      * Example (for the game `Persona 2: Innocent Sin`): <img src="https://user-images.githubusercontent.com/108900299/214209149-e59da495-7ccd-496e-b56f-ffd968482eee.png" height="300">
    * `SAVEDATA` DLC are placed here: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/SAVEDATA`
         * Example (for the game `EXIT`): <img src="https://user-images.githubusercontent.com/108900299/214208821-bd0a8751-4be7-425c-82a2-dd29a72f9af7.png" height="300">

**IMPORTANT**

* Some DLC content cannot be accessed until finishing the game
* Some DLC content can be accessed in different or hidden parts of the settings menu

#### Rock Band Unplugged DLC and Music Management

Rock Band Unplugged requires additional configuration to enable DLC and additional music tracks properly.

**How to Configure the Memstick Folder for Rock Band Unplugged**

1. In `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp`, create a `GAME` folder if one does not exist already
2. Place DLC folder (to enable additional music tracks) in `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/game`
3. In ``/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp`, create a `seplugins` folder if one does not exist already
4. In `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/seplugins`, right click anywhere, click `Create New`, `Text File`, and name it `game.txt`
5. Open `game.txt` with a text editor of your choice and write `ms0:/seplugins/nploader.prx 1`, save and exit out of `game.txt`
6. Open [https://github.com/codestation/nploader](https://github.com/codestation/nploader) in a browser of your choice, click the green `Code` button, click `Download ZIP`, extract to a folder of your choice
7. Move the contents of the extracted folder in Step 6 directly to `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/seplugins`
8. Rock Band Unplugged DLC and additional music are now enabled

***

### PPSSPP Hotkeys
[Back to the Top](#ppsspp-table-of-contents)

PPSSPP comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - PPSSPP Standalone`. The hotkeys below can only be used if you have the Steam Input profile active.

| Hotkey         | PPSSPP                    |
|----------------|---------------------------|
| Quick Menu     | `Steam` + `DPad Left`     |
| Quick Menu     | Left Trackpad Radial Menu |
| Save State     | Left Trackpad Radial Menu |
| Load State     | Left Trackpad Radial Menu |
| Next Save Slot | Left Trackpad Radial Menu |
| Fast Forward   | Left Trackpad Radial Menu |

**Note:** 

* [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile)
* [Steam Deck Button Layout](../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)

***

## PPSSPP Tips and Tricks
[Back to the Top](#ppsspp-table-of-contents)


***

### How to Install Custom Textures

**Preface** 

The PPSSPP Flatpak (installed by EmuDeck) does not use a named Memstick folder to manage its contents. Instead, the Memstick folder is located here: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP`. 

***

**Texture Pack Sources**

_This list is not exhaustive_

* [https://forums.ppsspp.org/forumdisplay.php?fid=36](https://forums.ppsspp.org/forumdisplay.php?fid=36)

***

**How to Install Custom Textures**

1. In Desktop Mode, open `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/`
    1. `~/.var` is an invisible folder by default, click the `Hamburger` menu in the top right of the file explorer, click `Show Hidden Files`
2. Create a `TEXTURES` folder here, casing matters
3. In the `TEXTURES` folder, create a folder matching your Game ID
    1. To find your Game ID, open PPSSPP, click the `Games` tab, click the `Gear` icon, Toggle `Show ID`
    2. <img src="https://user-images.githubusercontent.com/108900299/210125694-441118ba-2f32-4843-bc7f-48def75e9b09.png" height="300">
    3. Note down the Game ID to the right of your game
4. Place the texture folder (containing the texture files) directly in this newly created folder
    1. Example (Using Kingdom Hearts: Birth by Sleep): <img src="https://user-images.githubusercontent.com/108900299/210125679-ee345b47-33d3-4bf1-bf15-49bcbc2e97bb.png" height="300">
5. Your texture pack will now be applied

***

### How to Use Cheats
[Back to the Top](#ppsspp-table-of-contents)

**Preface** 

The PPSSPP Flatpak (installed by EmuDeck) does not use a named Memstick folder to manage its contents. Instead, the Memstick folder is located here: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP`. 

***

**Cheat Sources**

_This list is not exhaustive_

* [https://forums.ppsspp.org/showthread.php?tid=11961](https://forums.ppsspp.org/showthread.php?tid=11961)
* [https://forums.ppsspp.org/showthread.php?tid=22800](https://forums.ppsspp.org/showthread.php?tid=22800)

***

#### How to Use a cheats.db File

1. In Desktop Mode, open `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/`
    1. `~/.var` is an invisible folder by default, click the `Hamburger` menu in the top right of the file explorer, click `Show Hidden Files`
2. Create a `Cheats` folder here, casing matters
    1. If one exists, skip this step
3. Place a `cheat.db` file in this folder
    1. <img src="https://user-images.githubusercontent.com/108900299/214385915-9016e2ca-02fd-4e20-9331-5ff9d4e632da.png" height="300">
4. Open PPSSPP, click `Settings`, select `System`, scroll down and check `Enable cheats`
    1. <img src="https://user-images.githubusercontent.com/108900299/214386240-5cc0309c-dd93-43a3-a14e-a38e1ff210f6.png" height="300">
5. In Game Mode, open a game and either press the `Escape Key` hotkey: `Steam` + `DPad Left` or use the `PPSSPP Steam Input Profile` to open the Quick Menu
    1. [Global Hotkeys](../../controls-and-hotkeys/steamos/hotkeys.md#global)
    2. [PPSSPP Hotkeys](#ppsspp-hotkeys)
    3. <img src="https://user-images.githubusercontent.com/108900299/214387780-baab0bf4-2ed8-4632-9a46-091faccb5900.png" height="300">
6. Select `Import from cheat.db`, and check the cheat(s) you would like to enable
    1. <img src="https://user-images.githubusercontent.com/108900299/214387170-31a93120-5b6f-47e0-ade8-b5078676530f.png" height="300">
7. Return to game and your cheat(s) should now be enabled

***

#### How to use Cheat Codes

1. In Desktop Mode, open `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/`
    1. `~/.var` is an invisible folder by default, click the `Hamburger` menu in the top right of the file explorer, click `Show Hidden Files`
2. Create a `Cheats` folder here, casing matters
    1. If one exists, skip this step
3. Locate your Game ID
    1. To find your Game ID, open PPSSPP, click the `Games` tab, click the `Gear` icon, Toggle `Show ID`
    2. <img src="https://user-images.githubusercontent.com/108900299/210125694-441118ba-2f32-4843-bc7f-48def75e9b09.png" height="300">
    3. Note down the Game ID to the right of your game
4. In the `Cheats` folder, create a file matching your Game ID with an `.ini` file extension
    1. Skip this step if an `.ini` file already exists matching your Game ID
    2. Example (Using Grand Theft Auto: Liberty City Stories - `ULUS10160.ini`): <img src="https://user-images.githubusercontent.com/108900299/214389912-556cf061-e426-4384-8a7a-6d048e603a49.png" height="300">
5. Open the `.ini` file and add your cheat to the bottom of the file
    1. Example (Using a 60 FPS cheat for Grand Theft Auto: Liberty City Stories): <img src="https://user-images.githubusercontent.com/108900299/214389761-989b1891-25c9-408f-9ccd-e8b6f4df4ab3.png" height="300">
6. Save and close out of the `.ini` file
5. In Game Mode, open a game and either press the `Escape Key` hotkey: `Steam` + `DPad Left` or use the `PPSSPP Steam Input Profile` to open the Quick Menu
    1. [Global Hotkeys](../../controls-and-hotkeys/steamos/hotkeys.md#global)
    2. [PPSSPP Hotkeys](#ppsspp-hotkeys)
    3. <img src="https://user-images.githubusercontent.com/108900299/214387780-baab0bf4-2ed8-4632-9a46-091faccb5900.png" height="300">
6. Select `Cheats` on the right
7. scroll down the list of cheats and enable the cheat(s) you added to the `.ini` file
    1. <img src="https://user-images.githubusercontent.com/108900299/214390274-8832ce4e-50d9-4844-8d39-35f1d233a4c6.png" height="300">
8. Return to game and your cheat(s) should now be enabled

***

### How to Roll Back PPSSPP to an Older Version
[Back to the Top](#ppsspp-table-of-contents)

If you do not have access to a mouse and keyboard for the below section, use `L2` to right click and `R2` to left click. Alternatively, remote into your Steam Deck using one of the methods found in the FAQ, [How do I remotely control my Steam Deck?](../../frequently-asked-questions/steamos/index.md#how-do-i-remotely-control-my-steam-deck).

1. In Desktop Mode, open `Konsole`
2. To see a list of prior versions of the emulator, type:
    * `flatpak remote-info --log flathub org.ppsspp.PPSSPP`
3. If Konsole prompts you to select `system` or `user`, enter `2` to select `user` 
4. Konsole will list a list of previous versions for the flatpak. The important line for each version is the `Commit: ` line. The `Commit: ` line will have a long accompanying alphanumeric string (the “commit” code). Copy the string for the version you want to downgrade to.
    * Using Citra as an example:
        * ![How to Roll Back Flatpaks: 1](../../assets/how-to-roll-back-flatpaks-1.png)
5. To downgrade to the version you want:
    * `flatpak update --commit=put_commit_code_here org.ppsspp.PPSSPP`
    * Replace `put_commit_code_here` with the actual code you located in Step 2. 
        * Using Citra as an example:
            * ![How to Roll Back Flatpaks: 2](../../assets/how-to-roll-back-flatpaks-2.png)

If the above steps did not work and you are getting an error message along the lines of `Flatpak not installed`, your Flatpak is likely installed at the system level instead. Select one of the below solutions:

Solution 1: Open the EmuDeck application, click the `Manage Emulators` page, select the emulator in question, and click `Reinstall / Update`.

Solution 2: Add `sudo` in front of the commands written in Step 2 and Step 5. In Step 2, write `sudo flatpak remote-info --log flathub org.ppsspp.PPSSPP` and in Step 5, write `sudo flatpak update --commit=put_commit_code_here org.ppsspp.PPSSPP`. 

***