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

### Yuzu Configuration
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
    * Symlink folder to the proper place. **DO NOT OVERWRITE** THE FOLDER or it won't work
    * Target Location: `/home/deck/.local/share/yuzu/keys`
* Saves:
    * Symlink: `Emulation/saves/yuzu/`
    * Target Location: `Emulation/storage/yuzu/nand/user/save/`

**Note:** `~/.local` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

#### Works with:
* Steam ROM Manager
* EmulationStation-DE

***

### How to Update Yuzu
[Back to the Top](#yuzu-table-of-contents)

**How to Update Yuzu**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `Yuzu`
    * Refer to [How to Swap Out AppImages and Binaries](../../other/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions
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

Ryujinx expects your DLC and update files to stay permanently in a folder, either in a folder of your choice, or in `Emulation/storage/ryujinx/patchesAndDlc`. For further detail, read: [Ryujinx: How to Manage DLC and Updates](../steamos/ryujinx.md#how-to-manage-dlc-and-updates). 

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

**Note:** 

* [Steam Deck Button Layout](../../emudeck-essentials/steamos/hotkeys.md#steam-deck-button-layout)


***

### Known Issues
[Back to the Top](#yuzu-table-of-contents)

* Files with special characters in the name will not launch from shortcuts created by Steam ROM Manager in Steam or EmulationStation-DE. Rename your ROMs if they contain any of the following characters.
    * Known Cases: 
        * `é` in Pokémon
        * `'` in Link's Awakening
* The 3.4.6 SteamOS Stable Update on March 13th updated Mesa to 23.1. Some games may be affected. 
    * Known Issues: 
        * Super Mario 3D World has flicking textures in snow levels. 
    * Recommended Workarounds:
        * Use the Yuzu Flatpak
        * Test older Yuzu versions
    * Date added to this page: March 14th, 2023
* Yuzu Mainline 1296 merged YFC 1.5. Recent versions of Yuzu may have some stability issues or regressions. 
    * Recommended Versions: 
        * Mainline 1295: [https://github.com/yuzu-emu/yuzu-mainline/releases/tag/mainline-0-1295](https://github.com/yuzu-emu/yuzu-mainline/releases/tag/mainline-0-1295)
    * Date added to this page: January 19th, 2023
* Shin Megami Tensei V may have some performance regressions in recent versions of Yuzu. 
    * Recommended Versions: 
        * Mainline 1069: [https://github.com/yuzu-emu/yuzu-mainline/releases/tag/mainline-0-1069](https://github.com/yuzu-emu/yuzu-mainline/releases/tag/mainline-0-1069)
    * Date added to this page: January 19th, 2023
* Pokemon Legends Arceus may have some crashes in recent versions of Yuzu.
    * Recommended Versions: 
       * Mainline 984: [https://github.com/yuzu-emu/yuzu-mainline/releases/download/mainline-0-984/yuzu-20220414-0d81d4395.AppImage](https://github.com/yuzu-emu/yuzu-mainline/releases/download/mainline-0-984/yuzu-20220414-0d81d4395.AppImage)



***

## Yuzu Common Issues
[Back to the Top](#yuzu-table-of-contents)

***

### Special Characters
[Back to the Top](#yuzu-table-of-contents)

Files with special characters in the ROM name will not launch from Steam. Rename your ROMs and remove the special character.

Known **Cases**:

* `é` in `Pokémon`
* `'` in `The Legend of Zelda: Link's Awakening`

If you used Steam ROM Manager previously, re-run Steam ROM Manager after renaming your ROMs. 

***

### Combined XCI Files

Combined Nintendo Switch games can be unreliable. These combined games will still work if you open them through Yuzu directly. 

However, using combined games may cause issues if you are using a shortcut created by Steam ROM Manager or running the game through EmulationStation-DE. 

It is recommended you do not use combined games if you want to use shortcuts created by Steam ROM Manager or run your games through EmulationStation-DE.

***

### Why is Mario Kart 8 stuck on the Mii selection screen?
[Back to the Top](#yuzu-table-of-contents)

Dump and use your firmware and keys from your console following Yuzu's [quickstart guide](https://yuzu-emu.org/help/quickstart/). 

The firmware **must contain** Mii data. Without it, the game will get stuck on the Mii selection screen.

If the game is stuck on a Mii selection screen, that means your firmware does not contain Mii data. You will need to re-dump your firmware. 

Reference Image: <img src="https://user-images.githubusercontent.com/108900299/229313988-00e1529b-636d-43bf-989b-49c44ba82a10.png" height="300">

After you dump your firmware with Mii data, place it in `Emulation/bios/yuzu/firmware`.

Once you have dumped your firmware with the proper Mii data and place it in the correct folder, you will be able to proceed through the Mii selection menu.  

***

### Why is New Super Mario Bros U Deluxe stuck on a black screen?
[Back to the Top](#yuzu-table-of-contents)

Dump and use your firmware and keys from your console following Yuzu's [quickstart guide](https://yuzu-emu.org/help/quickstart/). 

The firmware must contain Mii data. Without it, the game will launch into a black screen. 

If the game is stuck on a black screen, that means your firmware **does not** contain Mii data. You will need to re-dump your firmware. 

After you dump your firmware with Mii data, place it in `Emulation/bios/yuzu/firmware`.

Once you have dumped your firmware with the proper Mii data and place it in the correct folder, the game will proceed and you will be able to play.  

***

## Yuzu Tips and Tricks
[Back to the Top](#yuzu-table-of-contents)

***

### How to Configure Gyro
[Back to the Top](#yuzu-table-of-contents)

Gyro for Yuzu requires SteamDeckGyroDSU. SteamDeckGyroDSU can be installed via EmuDeck, or it can be installed manually.

Visit [SteamDeckGyroDSU](../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu) to learn how to install and utilize SteamDeckGyroDSU. 

***

### How to Optimize Performance (Power Tools)
[Back to the Top](#yuzu-table-of-contents)

Visit [Power Tools](../../emudeck-application/steamos/emudeck-application-101.md#power-tools) to learn how to optimize performance using Power Tools. 

***

### How to Configure Multiplayer
[Back to the Top](#yuzu-table-of-contents)

Multiplayer for Yuzu is configured out of the box, no additional configuration is needed. 

You may need to set the `Controller Order` in the Steam QAM (`...` button). 

***
### How to Install Mods
[Back to the Top](#yuzu-table-of-contents)

**Mod Resources**

_This list is not comprehensive_

* Yuzu Mods: [https://yuzu-emu.org/wiki/switch-mods/](https://yuzu-emu.org/wiki/switch-mods/)
     * This is not an exhaustive list of mods available for Yuzu
     * Alternate link: https://github.com/yuzu-emu/yuzu/wiki/Switch-Mods
* Yuzu Mod Instructions: [https://yuzu-emu.org/help/feature/game-modding/](https://yuzu-emu.org/help/feature/game-modding/)
* GameBanana Mods: [https://gamebanana.com/](https://gamebanana.com/)
     * Search by game name
* Nexus Mods: [https://www.nexusmods.com/](https://www.nexusmods.com/)
     * Search by game name
* GBAtemp: [https://gbatemp.net/forums/nintendo-switch.283/?prefix_id=56](https://gbatemp.net/forums/nintendo-switch.283/?prefix_id=56)
     * Use [https://gbatemp.net/search/?type=post](https://gbatemp.net/search/?type=post) to search
        * Sort by `ROM Hack` in the prefixes list and `Nintendo Switch` in the `Search in forums` list
     * To narrow search results, use the `Search titles only` toggle
* SweetFX: [http://sfx.thelazy.net/games/](http://sfx.thelazy.net/games/)
     * Search by game name
* theboy181
     * 1: Github Collection: [https://github.com/theboy181/switch-ptchtxt-mods](https://github.com/theboy181/switch-ptchtxt-mods)
     * 2: Github Collection: [https://github.com/theboy181/switch-cheat-mods](https://github.com/theboy181/switch-cheat-mods)
     * 3: theboy181's Discord: [https://linktr.ee/theboy181](https://linktr.ee/theboy181)

***

**Preface**

Read Yuzu's instructions on how to install mods here: https://yuzu-emu.org/help/feature/game-modding/

The **folder structure** of a mod **is important**. It should generally look like the following:

```
mod_directory
  - exefs
  - romfs
  - romfs_ext
```

A few examples:

```
# Blur Removal Mod for The Legend of Zelda: Link's Awakening

Blur Removal
  - exefs
      - Zelda-Links Awakening v1.0.1 - DOF.pchtxt
```

```
# 60 FPS Mod for The Legend of Zelda: Link's Awakening

Stable-60fps-v2
  - exefs
      - 1.0.0.pchtxt
```

```
# Faster Battles Mod for Pokemon Brilliant Diamond

Faster Battles
  - romfs
      - Data
         - StreamingAssets
             - AssetAssistant
                 - Battle
                     - battle_masterdatas
```


***

**Tutorial**

1. In Desktop Mode, open Yuzu
2. Right click a game you intend on modding
3. Click `Open Mod Data Location`
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/201798674-bdc115fd-b6f9-465f-a9d3-39374e756a97.png" height="300">
4. Place your mod folder in the opened folder
    1. You may need to extract the mod first
    2. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/201798900-ec578de7-de6f-45f7-b5a4-dfc2fd82b4c3.png" height="300">
5. In Yuzu, right click the same game, open `Properties`, click the `Add-Ons` tab
6. Check the box to the left of your mod(s)
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/201799059-bd2e8a1a-0549-47ea-9d7b-1b5b75807f8d.png" height="300">
7. Your mod is now installed

***

### Special Game Configurations
[Back to the Top](#yuzu-table-of-contents)

Some games will take additional setup, requiring mods or an extensive alteration of settings. The EmuDeck Community Creations page collects these configurations in one centralized location. 

You can submit or view special game configurations here: [Special Game Configurations](../../other/steamos/community-creations.md#yuzu-nintendo-switch)

**Current List of Special Game Configurations**

* The Legend of Zelda: Link's Awakening


***

### How to Set Up Early Access
[Back to the Top](#yuzu-table-of-contents)

EmuDeck 2.1 added an option to enable Yuzu (Early Access).

**Here's how to set it up**

1. Open EmuDeck
2. Click the `Manage Emulators` button
3. Click `Yuzu`
4. Click `Setup Early Access`
5. Enter your token
6. Whenever you launch Yuzu, it will now use the `Early Access` version

*** 
