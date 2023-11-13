# Xemu is an Original Xbox Emulator.

Website: [https://xemu.app/](https://xemu.app/)

Github: [https://github.com/mborgerson/xemu](https://github.com/mborgerson/xemu)

Compatibility List: [https://xemu.app/#compatibility](https://xemu.app/#compatibility)

Xemu Wiki: [https://xemu.app/docs/download/](https://xemu.app/docs/download/)

Quickstart Guide (Skip the HDD requirement, it is pre-included with EmuDeck): [https://xemu.app/docs/required-files/](https://xemu.app/docs/required-files/)



***

## Xemu Table of Contents

1. [Getting Started with Xemu](#getting-started-with-xemu)
    - [Configuration](#xemu-configuration)
    - [Xemu Folder Locations](#xemu-folder-locations)
    - [How to Update Xemu](#how-to-update-xemu)
    - [How to Launch Xemu in Desktop Mode](#how-to-update-xemu)
    - [File Formats](#xemu-file-formats)

2. [Common Issues](#xemu-common-issues)
    - ["The guest has not initialized the display"](#the-guest-has-not-initialized-the-display)
    - ["Please insert an Xbox disc"](#please-insert-an-xbox-disc)

3. [Xemu Tips and Tricks](#xemu-tips-and-tricks)
    - [How to Convert ROMs to XISO Format](#how-to-convert-roms-to-xiso-format)
        - [Method 1: Use the xiso Website (Steam Deck)](#method-1-use-the-xiso-website-steam-deck)
        - [Method 2: Use XDVDMulleter (Windows)](#method-2-use-xdvdmulleter-windows)
        - [Method 3: extract-iso (Windows)](#method-3-extract-iso-windows)
        - [Method 4: extract-iso (Linux)](#method-4-extract-iso-linux)
        - [Method 5: extract-iso (Mac)](#method-5-extract-iso-mac)
        - [Method 6: dd](#method-6-dd-linux)
    - [How to Configure Multiplayer](#how-to-configure-multiplayer)
    - [How to Apply Zink](#how-to-apply-zink)
        - [How to Apply Zink to Steam ROM Manager Shortcuts](#how-to-apply-zink-to-steam-rom-manager-shortcuts)
        - [How to Apply Zink to EmulationStation-DE Games](#how-to-apply-zink-to-emulationstation-de-games)
    - [vs_position_always_invariant=true](#vs_position_always_invarianttrue)
        - [How to Apply vs_position_always_invariant=true to Steam ROM Manager Shortcuts](#how-to-apply-vs_position_always_invarianttrue-to-steam-rom-manager-shortcuts)
        - [How to Apply vs_position_always_invariant=true to EmulationStation-DE Games](#how-to-apply-vs_position_always_invarianttrue-to-emulationstation-de-games)
    - [How to Access Saves](#how-to-access-saves)
    - [How to Roll Back Xemu to an Older Version](#how-to-roll-back-xemu-to-an-older-version)

***

## Getting Started with Xemu
[Back to the Top](#xemu-table-of-contents)

Xemu is a fairly straight-forward emulator to set up. Place your xiso formatted ROMs in `Emulation/roms/xbox`. Read the [File Formats](#xemu-file-formats) section to learn more about xiso formatted ROMs. Place your BIOS directly in `Emulation/bios`. Read the [Configuration](#xemu-configuration) section to learn more about Xemu, the expected BIOS and naming conventions, and Xemu's folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Xbox (OG) ROMs:

* `EmulationStation-DE`
* `Microsoft XBox - Xemu` 
* `Emulators`

***

### Xemu Configuration
[Back to the Top](#xemu-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/app.xemu.xemu`
* ROM Location: `Emulation/roms/xbox`
* BIOS Location: `Emulation/bios`
    * **Do not** create any additional folders in this folder for Xbox BIOS
* Required BIOS: 
    * MCPX Boot ROM Image: `mcpx_1.0.bin`
    * Flash ROM Image:  `Complex_4627v1.03.bin`
    * These are EmuDeck's pre-configured file names, you must name the files exactly as written above. If you choose to provide a different Flash ROM Image, you can either rename the file or open Xemu and change the settings to point to the file directly. 
* Storage Location: `Emulation/storage/xemu`
    * Contains the following files (included with EmuDeck):
        * `eeprom.bin`
        * `xbox_hdd.qcow2`
            * This file is a "pre-built 8G Xbox HDD image, free of any copyrighted content, and only contains a dummy dashboard" provided by Xemu
            * The "Hard Disk Image" is one of the required files mentioned in Xemu's setup documentation
            * You may also choose to provide your own hard disk image. Other hard disk images may include additional features such as FTP
* Saves: `Emulation/storage/xemu/xbox_hdd.qcow2`
    * To access your saves, read [How to Access Saves](#how-to-access-saves)

**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders. 

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### Xemu Folder Locations
[Back to the Top](#xemu-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.var/app/app.xemu.xemu`

```
app.xemu.xemu/
├── cache
├── config
│   ├── glib-2.0
│   │   └── settings
│   ├── gtk-3.0
│   │   └── bookmarks
│   ├── ibus
│   │   └── bus
│   ├── pulse
│   │   └── cookie
│   └── user-dirs.dirs
└── data
    ├── recently-used.xbel
    └── xemu
        └── xemu
            ├── shader_cache_list
            ├── shaders
            ├── xemu.toml
            └── xemu.toml.bak
```

`Emulation/storage/xemu`

```
xemu/
├── eeprom.bin
└── xbox_hdd.qcow2
```

***

### How to Update Xemu
[Back to the Top](#xemu-table-of-contents)

**How to Update Xemu**

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application


***

### How to Launch Xemu in Desktop Mode
[Back to the Top](#xemu-table-of-contents)

**How to Launch Xemu in Desktop Mode**

* Launch `xemu` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `xemu.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

### Xemu File Formats
[Back to the Top](#xemu-table-of-contents)

* .iso (xiso formatted)
    * [How to Convert ROMs to XISO Format](#how-to-convert-roms-to-xiso-format)

#### What is the xiso format?

From Xemu:

"xemu requires game discs to be in the form of xiso images. These are generally saved with a .iso extension, but are not the same as typical ISO images." 

Put simply, xiso ROMs are ISOs stripped of their video partition. 

Typically, you will start with an ISO ROM that has an `.iso` file extension. In order to use this ROM in Xemu, you will need to select one of the methods in the [How to Convert ROMs to XISO Format](#how-to-convert-roms-to-xiso-format) section to convert it to the xiso ROM format. 

***

## Xemu Common Issues
[Back to the Top](#xemu-table-of-contents)

***

### "The guest has not initialized the display"
[Back to the Top](#xemu-table-of-contents)

This is likely due to a mismatch of MCPX and BIOS images, or a corrupt MCPX boot ROM.

***

### "Please insert an Xbox disc"
[Back to the Top](#xemu-table-of-contents)

Try restarting Xemu. If you continue to get the message, your ISO may not be dumped in a compatible way. Try using extract-xiso to pack your ISO. 

[How to Convert ROMs to XISO Format](#how-to-convert-roms-to-xiso-format)

***

## Xemu Tips and Tricks
[Back to the Top](#xemu-table-of-contents)

***

### How to Convert ROMs to XISO Format
[Back to the Top](#xemu-table-of-contents)

#### List of Methods

- [Method 1: Use the xiso Website (Steam Deck)](#method-1-use-the-xiso-website-steam-deck)
- [Method 2: Use XDVDMulleter (Windows)](#method-2-use-xdvdmulleter-windows)
- [Method 3: extract-iso (Windows)](#method-3-extract-iso-windows)
- [Method 4: extract-iso (Linux)](#method-4-extract-iso-linux)
- [Method 5: extract-iso (Mac)](#method-5-extract-iso-mac)
- [Method 6: dd](#method-6-dd-linux)


***

##### Method 1: Use the xiso Website (Steam Deck)
[Back to the Top](#list-of-methods)

Instructions provided on website.

**Link:** [https://xiso.antangelo.com/](https://xiso.antangelo.com/)

**Note:**

* This website is still in beta
* If it does not work on Firefox, use Chrome or Edge instead

***

##### Method 2: Use XDVDMulleter (Windows)
[Back to the Top](#list-of-methods)

Link: [https://archive.org/details/xdvdmulleterv10.2beta](https://archive.org/details/xdvdmulleterv10.2beta)

![1](https://user-images.githubusercontent.com/108900299/194170038-5b4f69ed-853c-4332-b9c5-00b43679b449.png)
![2](https://user-images.githubusercontent.com/108900299/194170057-95e650e2-7dfb-4dcc-99b8-f4e6b5aaf689.png)
![3](https://user-images.githubusercontent.com/108900299/194170067-4062edeb-cafc-4606-88db-7f091030606e.png)


***

##### Method 3: extract-iso (Windows)
[Back to the Top](#list-of-methods)

Link: [https://github.com/XboxDev/extract-xiso](https://github.com/XboxDev/extract-xiso)

**Instructions**

1. Go to the releases tab: [https://github.com/XboxDev/extract-xiso/releases/tag/build-202204252159](https://archive.org/details/xdvdmulleterv10.2beta)
2. Download the release .ZIP
3. Extract it somewhere on your computer
4. Put the untrimmed Xbox .ISO in the same directory
5. Rename the .ISO to something without spaces like `game-redump.iso` (doesn't have to be this exact name)
6. Open command prompt on your computer
7. Navigate to the directory containing the .EXE and your .ISO
8. Run `extract-xiso -r game-redump.iso` 

Xemu's Tutorial: [https://xemu.app/docs/disc-images/](https://xemu.app/docs/disc-images/)

***

##### Method 4: extract-iso (Linux)
[Back to the Top](#list-of-methods)

Note: Cannot be *built* on the Steam Deck, but can be built elsewhere and copied. Then, it is usable on Steam Deck.

1. Enter these commands in your terminal

         # Install dependencies
         # Example for Arch:
         sudo pacman -Syu --needed base-devel cmake

         # Clone Repo
         git clone https://github.com/XboxDev/extract-xiso.git

         # cd into directory
         cd extract-xiso

         # Create working directory
         mkdir build
         cd build

         # Build project
         cmake ..
         make

2. Put the untrimmed Xbox .ISO in the same directory
3. Rename the .ISO to something without spaces like `game-redump.iso` (doesn't have to be this exact name)
4. Navigate to the directory containing your .ISO
5. Run `extract-xiso -r game-redump.iso` 

***

##### Method 5: extract-iso (Mac)
[Back to the Top](#list-of-methods)

1. ⁠Open terminal
2. In terminal type the following: `Xcode-select --install`
3. Click allow on the Pop-up
4. Navigate to `extract-xiso`, cd `the/path/to/extract-xiso`
5. Type `make`
6. Then type the following: `sudo chmod +x extract-iso`
7. Finally run the executable: `./extract-xiso name\of\game.iso`

***

##### Method 6: dd (Linux)
[Back to the Top](#list-of-methods)

**Note:** May not work on Steam Deck, needs testing.

Refer to Xemu's wiki for instructions, [https://xemu.app/docs/disc-images/#about-redump-isos](https://xemu.app/docs/disc-images/#about-redump-isos. )

***

### How to Configure Multiplayer
[Back to the Top](#xemu-table-of-contents)

Xemu comes with a nifty auto-map feature that makes setting up multiplayer a breeze. To set up multiplayer, you simply need to enable the additional ports.

1. Open Xemu
2. Open the `Input` settings
3. For each controller you are using for Player 2, 3, and 4, click the respective tab
    * You do not need to adjust any settings for Player 1
4. In the drop-down menu
    * Player 2: `Steam Virtual Gamepad 2`      
    * Player 3: `Steam Virtual Gamepad 3`      
    * Player 4: `Steam Virtual Gamepad 4`
5. After you are finished enabling any additional players, exit out of Xemu and you may open your game either directly as a shortcut in Steam or through EmulationStation-DE    
6. (Optional) You may need to re-arrange the controller order in Game Mode for your controllers to function as expected. See [How to Re-Arrange the Controller Order](../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) to learn how

***

### How to Apply Zink
[Back to the Top](#xemu-table-of-contents)

#### Preface

On the Steam Deck, some Xbox game graphics will not render properly. Applying Zink can fix these graphical issues. 

However, Zink can also cause performance hits in certain games. Apply it on a per-game basis and keep in mind that if performance is degraded, it may be due to Zink. 

You can read more about the issue here: [https://github.com/xemu-project/xemu/issues/1279#issuecomment-1381015271](https://github.com/xemu-project/xemu/issues/1279#issuecomment-1381015271). 

Read one of the below sections to learn how to apply Zink to your Xbox games:

- [How to Apply Zink to Steam ROM Manager Shortcuts](#how-to-apply-zink-to-steam-rom-manager-shortcuts)
- [How to Apply Zink to EmulationStation-DE Games](#how-to-apply-zink-to-emulationstation-de-games)

**Practical Uses of Zink**

* Fixes graphical issues
* Improves performance in some games (may worsen in others)
* Fixes black screen issues in some games

#### How to Apply Zink to Steam ROM Manager Shortcuts
[Back to the Top](#how-to-apply-zink)

1. In Desktop Mode, open Steam
2. Select an Xbox Game shortcut in Steam
3. Click the `Gear` icon 
    * <img src="https://user-images.githubusercontent.com/108900299/226738898-c724328a-b91c-42d8-91d3-4109998b8212.png" height="300">
4. Click `Properties` 
5. In the `Launch Options` box, enter: `__GLX_VENDOR_LIBRARY_NAME=mesa MESA_LOADER_DRIVER_OVERRIDE=zink GALLIUM_DRIVER=zink %command%`
    * <img src="https://user-images.githubusercontent.com/108900299/226739203-c14b2c57-3029-4f87-baa3-2fa9d0af8bef.png" height="300">
6. Zink will now be applied to this specific game's Steam shortcut, repeat for each game you would like to apply Zink

#### How to Apply Zink to EmulationStation-DE Games
[Back to the Top](#how-to-apply-zink)

1. In Desktop Mode, open the `Emulation/roms/xbox` folder
2. Right click anywhere in the folder, click `Create New --> Text File`
    * <img src="https://user-images.githubusercontent.com/108900299/226739494-0e7b44c7-0fcf-4f9b-820a-8fa3351cfcfc.png" height="300">
3. Match the name of the text file to the game you are applying Zink to and change the file extension to `.esprefix`
    * For example: 
        * ROM Name: `Conker - Live & Reloaded.iso`
        * New text file name: `Conker - Live & Reloaded.esprefix`
    * <img src="https://user-images.githubusercontent.com/108900299/226740001-1738684d-854c-4466-86f3-96e14ac1bfb0.png" height="300">
4. Open the newly created text file in Kate or a text editor of your choice
5. On a single line, write: 
    * `__GLX_VENDOR_LIBRARY_NAME=mesa MESA_LOADER_DRIVER_OVERRIDE=zink GALLIUM_DRIVER=zink`
    * Example:
        * <img src="https://user-images.githubusercontent.com/108900299/226754331-28689940-10ef-42b5-9164-4bc58188ea68.png" height="300">
6. Zink will now be applied to this specific game in EmulationStation-DE, repeat for each game you would like to apply Zink

***

### vs_position_always_invariant=true
[Back to the Top](#xemu-table-of-contents)

For more information on what `vs_position_always_invariant=true` is, see [https://gitlab.freedesktop.org/mesa/mesa/-/commit/9b577f2a887968483b88b629673d3f9904a179ff](https://gitlab.freedesktop.org/mesa/mesa/-/commit/9b577f2a887968483b88b629673d3f9904a179ff).

Setting `vs_position_always_invariant=true` for Xemu games can be considered an alternative option to the [How to Apply Zink](#how-to-apply-zink) section. Zink may cause performance issues or graphical issues. If that is the case, you can try the steps in this section. However, applying `vs_position_always_invariant=true` may also cause its own set of performance or graphical issues.
 
**Practical Uses of `vs_position_always_invariant=true`**

* Fixes black screen issues
    * Games with black screen issues (Not an exhaustive list)
        * Burnout 3 and Phantom Dust   

Read one of the below sections to learn how to apply Zink to your Xbox games:

- [How to Apply vs_position_always_invariant=true to Steam ROM Manager Shortcuts](#how-to-apply-vs_position_always_invarianttrue-to-steam-rom-manager-shortcuts)
- [How to Apply vs_position_always_invariant=true to EmulationStation-DE Games](#how-to-apply-vs_position_always_invarianttrue-to-emulationstation-de-games)

#### How to Apply vs_position_always_invariant=true to Steam ROM Manager Shortcuts

1. In Desktop Mode, open Steam
2. Select an Xbox Game shortcut in Steam
3. Click the `Gear` icon 
    * <img src="https://user-images.githubusercontent.com/108900299/226738898-c724328a-b91c-42d8-91d3-4109998b8212.png" height="300">
4. Click `Properties` 
5. In the `Launch Options` box, enter: `vs_position_always_invariant=true %command%`
6. `vs_position_always_invariant=true` will now be applied to this specific game's Steam shortcut, repeat for each game you would like to apply `vs_position_always_invariant=true`

#### How to Apply vs_position_always_invariant=true to EmulationStation-DE Games

1. In Desktop Mode, open the `Emulation/roms/xbox` folder
2. Right click anywhere in the folder, click `Create New --> Text File`
    * <img src="https://user-images.githubusercontent.com/108900299/226739494-0e7b44c7-0fcf-4f9b-820a-8fa3351cfcfc.png" height="300">
3. Match the name of the text file to the game you are applying `vs_position_always_invariant=true` to and change the file extension to `.esprefix`
    * For example: 
        * ROM Name: `Conker - Live & Reloaded.iso`
        * New text file name: `Conker - Live & Reloaded.esprefix`
    * <img src="https://user-images.githubusercontent.com/108900299/226740001-1738684d-854c-4466-86f3-96e14ac1bfb0.png" height="300">
4. Open the newly created text file in Kate or a text editor of your choice
5. On a single line, write: 
    * `vs_position_always_invariant=true`
6. `vs_position_always_invariant=true` will now be applied to this specific game in EmulationStation-DE, repeat for each game you would like to apply `vs_position_always_invariant=true`

***

### How to Access Saves
[Back to the Top](#xemu-table-of-contents)

Your save files are located here: `Emulation/storage/xemu/xbox_hdd.qcow2`

**How to Access Saves**

Download [https://github.com/Ryzee119/LithiumX/releases/tag/v0.9.1](https://github.com/Ryzee119/LithiumX/releases/tag/v0.9.1), extract the zip file, and launch the ISO in Xemu.

Follow the instructions here: [https://xemu.app/docs/ftp/](https://xemu.app/docs/ftp/), to access the saves in the `xbox_hdd.qcow2` file. 

***

### How to Roll Back Xemu to an Older Version
[Back to the Top](#xemu-table-of-contents)

1. In Desktop Mode, open `Konsole`
2. To see a list of prior versions of the emulator, type:
    * `flatpak remote-info --log flathub app.xemu.xemu`
    * Each version will have a long accompanying alphanumeric string (the “commit” code). Copy the string for the version you want to downgrade to.
3. To downgrade to the version you want:
    * `flatpak update --commit=put_commit_code_here app.xemu.xemu`
    * Replace `put_commit_code_here` with the actual code you located in Step 2. 
    * If this line does not work, you may need to type:
        * `sudo flatpak update --commit=put_commit_code_here app.xemu.xemu`

***