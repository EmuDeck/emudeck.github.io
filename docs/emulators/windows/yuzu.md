# Yuzu is a Nintendo Switch emulator.

Website: https://yuzu-emu.org/

Github: https://github.com/yuzu-emu/yuzu-mainline

Github Releases: https://github.com/yuzu-emu/yuzu-mainline/releases

Compatibility List: https://yuzu-emu.org/game/

Quickstart guide: https://yuzu-emu.org/help/quickstart/

***


## Yuzu Table of Contents

1. [Getting Started with Yuzu](#getting-started-with-yuzu)
    - [Configuration](#yuzu-configuration)
    - [How to Update Yuzu](#how-to-update-yuzu)
    - [How to Launch Yuzu in Desktop Mode](#how-to-launch-yuzu-in-desktop-mode)
    - [File Formats](#yuzu-file-formats)
    - [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    - [Hotkeys](#yuzu-hotkeys)
    - [Known Issues](#known-issues)

2. [Common Issues](#yuzu-common-issues)
    - [Special Characters](#special-characters)
    - [Combined XCI Files](#combined-xci-files)
    - [Why is Mario Kart 8 stuck on the Mii selection screen?](#why-is-mario-kart-8-stuck-on-the-mii-selection-screen)
    - [Why is New Super Mario Bros U Deluxe stuck on a black screen?](#why-is-new-super-mario-bros-u-deluxe-stuck-on-a-black-screen)

2. [Yuzu Tips and Tricks](#yuzu-tips-and-tricks)
    - [How to Configure Gyro](#how-to-configure-gyro)
    - [How to Optimize Performance (Power Tools)](#how-to-optimize-performance-power-tools)
    - [How to Configure Multiplayer](#how-to-configure-multiplayer)
    - [How to Install Mods](#how-to-install-mods)
    - [Special Game Configurations](#special-game-configurations)
    - [How to Set Up Early Access](#how-to-set-up-early-access)


***

## Getting Started with Yuzu
[Back to the Top](#yuzu-table-of-contents)

In order to play Nintendo Switch games on Yuzu, you will need a `prod.keys` file and `title.keys` to decrypt your ROMs. You will need to continue to keep your `prod.keys` and `title.keys` up to date as new Nintendo Switch firmware releases. 

If you play a Nintendo Switch game with Miis (for example - Mario Kart 8 Deluxe), you will need firmware files. 

Read Yuzu's Quick Start guide to learn how to dump Nintendo Switch keys, firmware, and ROMs: https://yuzu-emu.org/help/quickstart/. 

Place your ROMs in `Emulation/roms/switch`. Place your `prod.keys` file in `Emulation/bios/yuzu/keys`. Place your firmware files in `Emulation/bios/yuzu/firmware`. 

Read the [Configuration](#yuzu-configuration) section to learn more about Yuzu and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Nintendo Switch ROMs:

* `EmulationStation-DE`
* `Nintendo Switch - Yuzu` 
* `Emulators`


***

### Yuzu Configuration:
[Back to the Top](#yuzu-table-of-contents)

* Type of Emulator: AppImage
* Executable Location: `/home/deck/Applications/yuzu.AppImage`
* Config Location: `/home/deck/.config/yuzu/`
* Default storage Location: `/home/deck/.share/local/yuzu/`
* Persistent Storage: `Emulation/storage/yuzu`
    * Contains the following folders: 
        * `dump`
        * `load`
        * `nand`  
            * Firmware: `Emulation/storage/yuzu/nand/system/Contents/registered`
                * `Emulation/bios/yuzu/firmware` is a symlink to the above location
        * `screenshots`
        * `sdmc`
        * `tas`
 * ROMs: `Emulation/roms/switch/`
* Firmware: `Emulation/bios/yuzu/firmware/` 
    * Symlink folder to the proper place. **DO NOT OVERWRITE** THE FOLDER or it won't work
    * Target Location: `Emulation/storage/yuzu/nand/system/Contents/registered`
* Keys: `Emulation/bios/yuzu/keys/` 
    * Ssymlink folder to the proper place. **DO NOT OVERWRITE** THE FOLDER or it won't work
    * Target Location: `/home/deck/.local/share/yuzu/keys`
* Saves:
  * Symlink: `Emulation/saves/yuzu/`
  * Target Location: `Emulation/storage/yuzu/nand/user/save/`

**Note:** `~/.local` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

### Works with:
* Steam ROM Manager
* EmulationStation-DE

***

### How to Update Yuzu
[Back to the Top](#yuzu-table-of-contents)

**How to Update Yuzu**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `Yuzu`
  * Refer to https://github.com/dragoonDorise/EmuDeck/wiki/File-Management#how-to-swap-out-appimages-and-binaries for instructions. 
* Through the application's automatic updater
  * When you open Yuzu you may be prompted for an update, accept the prompt to update the application

***

### How to Launch Yuzu in Desktop Mode
[Back to the Top](#yuzu-table-of-contents)

**How to Launch Yuzu in Desktop Mode**

* Launch `yuzu AppImage` from the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `yuzu.sh`
* Launch the AppImage in `/home/deck/Applications/Yuzu.AppImage`
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

**Preface:** Do not keep your DLC or update files in the `Emulation/roms/switch` folder. Steam ROM Manager will parse your updates and DLC and create broken shortcuts. After installing your DLC or updates, you can discard them or save them for Ryujinx. 

Ryujinx expects your DLC and update files to stay permanently in a folder, either in a folder of your choice, or in `Emulation/storage/ryujinx/patchesAndDlc`. For further detail, read: https://github.com/dragoonDorise/EmuDeck/wiki/ryujinx#how-to-manage-dlc-and-updates. 

DLC and Updates are installed directly through the Yuzu menu. 

**Quick Tutorial**

1. In Desktop Mode, open Yuzu
2. Click `File`
3. Click `Install Files to NAND..`
    * <img src="https://user-images.githubusercontent.com/108900299/221684457-9e642cec-06bc-4acb-b6ba-ec7acf8b3539.png" height="300">
4. (Optional) If your DLC or update files are on your SD Card, your path is: `/run/media/...`. To navigate here, click `Computer` on the left, open the `/` folder, open the `run` folder, then the `media` folder, and follow the path to the files on your SD Card. 
5. Locate your DLC or update files in your directory
6. Your DLC or update files are now installed

***

### Yuzu Hotkeys
[Back to the Top](#yuzu-table-of-contents)

Combo hotkeys have been mapped for this emulator.

| Hotkey       | Yuzu                  |
|--------------|-----------------------|
| Menu / Full Screen | `Select` + `R3`       |
| Docked Mode  | `Start` + `DPAD Up`   |
| GPU Accuracy | `Start` + `DPAD Down` |
| Filter       | `Start` + `DPAD Left` |
| Pause        | `Select` + `A`        |
| Fast Forward | `Select` + `R2`       |
| Exit | `Select` + `Start`|

***

### How to Set Up Early Access
[Back to the Top](#yuzu-table-of-contents)

Download it and copy Yuzu's files to USERFOLDER\EmuDeck\EmulationStation-DE\Emulators\yuzu

*** 
