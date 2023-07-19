# RetroArch is an open source and cross platform frontend/framework for emulators.

Website: [https://www.retroarch.com/](https://www.retroarch.com/)

Github: [https://github.com/libretro/RetroArch](https://github.com/libretro/RetroArch)

RetroArch Wiki: [https://docs.libretro.com/](https://docs.libretro.com/)

RetroArch FAQ: [https://www.retroarch.com/?page=faq](https://docs.libretro.com/)

***

## RetroArch Table of Contents

1. [Getting Started with RetroArch](#getting-started-with-retroarch)
    - [Configuration](#retroarch-configuration)
    - [How to Update RetroArch And Its Cores](#how-to-update-retroarch-and-its-cores)
    - [How to Launch RetroArch in Desktop Mode](#how-to-launch-retroarch-in-desktop-mode)
    - [A Breakdown of Overrides](#a-breakdown-of-overrides)
    - [Hotkeys](#retroarch-hotkeys)
    - [List of RetroArch Cores Used by Emudeck](#list-of-retroarch-cores-used-by-emudeck)

2. [Common Issues](#common-issues)


3. [RetroArch Tips and Tricks](#retroarch-tips-and-tricks)
    - [How to Optimize Storage (Compression Tool)](#how-to-optimize-storage-compression-tool)   
    - [How to Manage Multiple Discs](#how-to-manage-multiple-discs)
    - [How to Change Shaders](#how-to-change-shaders)
    - [How to Change Controller Layouts on a Per Game Basis](#how-to-change-controller-layouts-on-a-per-game-basis)
    - [How to Change Controller Layouts for a System](#how-to-change-controller-layouts-for-a-system)
    - [How to Set Game Settings On a Per-Game Basis](#how-to-set-game-settings-on-a-per-game-basis)
    - [How to Change Settings On a Per-Core Basis](#how-to-change-settings-on-a-per-core-basis)

4. [RetroArch Cores](#retroarch-cores)
    * [Flycast](#flycast)
        * [How to Install Custom Textures For Flycast](#how-to-install-custom-textures-for-flycast)
    * [Fuse](#fuse)
        * [How to Configure Controls For Fuse](#how-to-configure-controls-for-fuse)
    * [MelonDS](#melonds)
        * [How to Use the Trackpad for the Touch Screen](#how-to-use-the-trackpad-for-the-touch-screen)
    * [Mupen64Plus-Next](#mupen64Plus-next)
        * [How to Install Custom Textures for Mupen64Plus-Next](#how-to-install-custom-textures-for-mupen64plus-next)
    * [Neko Project II Kai](#neko-project-ii-kai)
        * [Configuring controls](#configuring-controls)
    * [PPSSPP RetroArch Core](#ppsspp-retroarch-core)
        * [How to Download Asset Files (Required)](#how-to-download-asset-files-required)
    * [PX68k](#px68k)
        * [Section 1](#section-1)
***

## Getting Started with RetroArch
[Back to the Top](#retroarch-table-of-contents)

***

### RetroArch Configuration
[Back to the Top](#retroarch-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.libretro.RetroArch`
* Storage: `Emulation/storage/retroarch`
    * Contains: `cheats`
* ROMs: Refer to the [Cheat Sheet](../../cheat-sheet.md)
* BIOS: Refer to the [Cheat Sheet](../../cheat-sheet.md)
* Saves:
    * Symlink: `Emulation/saves/retroarch/saves`
    * Target Location: `/home/deck/.var/app/org.libretro.RetroArch/config/retroarch/saves/`
* Save States:
    * Symlink: `Emulation/saves/retroarch/states`
    * Target Location: `/home/deck/.var/app/org.libretro.RetroArch/config/retroarch/states/`
   
**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

#### Works With
* Steam Rom Manager
* EmulationStation-DE

***

### How to Update RetroArch And Its Cores
[Back to the Top](#retroarch-table-of-contents)

#### How to Update RetroArch

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application

#### How to Update RetroArch Cores

1. Open `RetroArch`
2. Open the `Main Menu`
3. Scroll down and select `Online Updater`
4. Select `Update Installed Cores`

**Visual Reference:** 

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-update-retroarch-cores.mp4" type="video/mp4">
  </video>
</figure>

***

### How to Launch RetroArch in Desktop Mode
[Back to the Top](#retroarch-table-of-contents)

**How to Launch RetroArch in Desktop Mode**

* Launch `RetroArch` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `retroarch.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam Rom Manager`


***

### A Breakdown of Overrides
[Back to the Top](#retroarch-table-of-contents)

1. Global = Everything.
2. Core = Anything run by a specific core.
3. Content Directory = Any ROM in a specific directory. 
    * These are used for the EmuDeck applied shaders.
4. Game = that specific ROM.

As you get lower in this list it takes precedence, so if you do nothing but set a core shader preset, it will  not override the content directory preset already applied.

For more information: [https://docs.libretro.com/guides/overrides/](https://docs.libretro.com/guides/overrides/)

***

### RetroArch Hotkeys
[Back to the Top](#retroarch-table-of-contents)

|       Hotkeys      |        RetroArch        |
|:------------------:|:-----------------------:|
| Menu               | `L3` + `R3`             |
| Exit               | `Select` + `Start `     |
| Pause/Unpause      | `Select` + `A`          |
| Fast Forward       | `Select` + `R2`         |
| Rewind             | `Select` + `L1`         |
| Save State         | `Select` + `R1`         |
| Load State         | `Select` + `L1`         |
| Next Save Slot     | `Select` + `DPAD Right` |
| Previous Save Slot | `Select` + `DPAD Left`  |
| Toggle Runahead    | `Select` + `DPad Up`    |
| Toggle FPS Display | `Select` + `X`          |
| Screenshot         | `Select` + `B`          |
| Toggle Screen Layout (NDS) | `R2`    |
| Blow Mic  (NDS)    | `L2`                    |

**Note:** 

* Screenshots are saved in: `/home/deck/.var/app/org.libretro.RetroArch/config/retroarch/screenshots`
* The `Blow Mic` hotkey only blows white noise. It cannot be used to speak into the Steam Deck microphone. The white noise may not be strong enough to progress in some games. 
* [Steam Deck Button Layout](../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)

***

### List of RetroArch Cores Used by EmuDeck
[Back to the Top](#retroarch-table-of-contents)

| Console/System            | RetroArch Core (Click for Libretro Article)                                                                               |
|---------------------------|---------------------------------------------------------------------------------------------------------------------------|
| 3DO                       | [RetroArch Opera](https://docs.libretro.com/library/opera/)                                                               |
| Amiga                     | [RetroArch PUAE](https://docs.libretro.com/library/puae/)                                                                 |
| Amiga 600                 | [RetroArch PUAE](https://docs.libretro.com/library/puae/)                                                                 |
| Amiga 1200                | [RetroArch PUAE](https://docs.libretro.com/library/puae/)                                                                 |
| Amiga CD32                | [RetroArch PUAE](https://docs.libretro.com/library/puae/)                                                                 |
| Amstrad CPC               | [RetroArch Caprice32](https://docs.libretro.com/library/caprice32/)                                                       |
| Atari 2600                | [RetroArch Stella](https://docs.libretro.com/library/stella/)                                                             |
| Atari Lynx                | [RetroArch Stella](https://docs.libretro.com/library/stella/)                                                             |
| Commodore 16              | [RetroArch Vice](https://docs.libretro.com/library/vice/)                                                                 |
| Commodore 64              | [RetroArch Vice](https://docs.libretro.com/library/vice/)                                                                 |
| Commodore VIC-20          | [RetroArch Vice](https://docs.libretro.com/library/vice/)                                                                 |
| Doom                      | [RetroArch PrBoom](https://docs.libretro.com/library/prboom/)                                                             |
| DOS                       | [RetroArch DOSBox Pure](https://docs.libretro.com/library/dosbox_pure/)                                                   |
| EasyRPG                   | [RetroArch EasyRPG](https://docs.libretro.com/library/easyrpg/)                                                           |
| Final Burn Neo            | [RetroArch FinalBurn Neo](https://docs.libretro.com/library/fbneo/)                                                       |
| MAME 2003 Plus            | [RetroArch MAME 2003 Plus](https://docs.libretro.com/library/mame2003_plus/)                                              |
| MAME 2010                 | [RetroArch MAME 2010](https://docs.libretro.com/library/mame_2010/)                                                       |
| MAME Current              | [RetroArch MAME Current](https://docs.libretro.com/development/cores/core-specific/mame/)                                 |
| NEC PC-98                 | [RetroArch Neko Project II Kai](https://docs.libretro.com/libraryneko_project_ii_kai/)                                    |
| NEC TurboGrafx-16         | [RetroArch Beetle PCE](https://docs.libretro.com/library/beetle_pce_fast/)                                                |
| NEC TurboGrafx-CD         | [RetroArch Beetle PCE](https://docs.libretro.com/library/beetle_pce_fast/)                                                |
| Neo Geo Pocket & Color    | [RetroArch Beetle NeoPop](https://docs.libretro.com/library/beetle_neopop/)                                               |
| Nintendo 64               | [RetroArch Mupen64plus-Next](https://docs.libretro.com/library/mupen64plus/)                                              |
| Nintendo DS               | [RetroArch melonDS](https://docs.libretro.com/library/melonds/)                                                           |
| Nintendo Gameboy          | [RetroArch SameBoy](https://docs.libretro.com/library/sameboy/)                                                           |
| Nintendo GameBoy          | [RetroArch Gambatte](https://docs.libretro.com/library/gambatte/)                                                         |
| Nintendo GameBoy Advance  | [RetroArch mGBA core](https://docs.libretro.com/library/mgba/)                                                            |
| Nintendo GameBoy Color    | [RetroArch SameBoy](https://docs.libretro.com/library/sameboy/)                                                           |
| Nintendo GameBoy Color    | [RetroArch Gambatte](https://docs.libretro.com/library/gambatte/)                                                         |
| Nintendo NES              | [RetroArch Mesen](https://docs.libretro.com/library/mesen/)                                                               |
| Nintendo NES              | [RetroArch Nestopia](https://docs.libretro.com/library/nestopia_ue/)                                                      |
| Pico-8                    | [RetroArch Pico-8](https://github.com/Jakz/retro8)                                                                        |
| Sega 32X                  | [RetroArch PicoDrive](https://docs.libretro.com/library/picodrive/)                                                       |
| Sega CD                   | [RetroArch Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)                                           |
| Sega Dreamcast            | [RetroArch FlyCast](https://docs.libretro.com/library/flycast/)                                                           |
| Sega Game Gear            | [RetroArch Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)                                           |
| Sega Genesis / Mega Drive | [RetroArch Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)                                           |
| Sega Genesis Widescreen   | [RetroArch Genesis Plus GX](https://www.libretro.com/index.php/genesis-plus-gx-wide-now-available-for-libretroretroarch/) |
| Sega Master System        | [RetroArch Genesis Plus GX](https://docs.libretro.com/library/genesis_plus_gx/)                                           |
| Sega Saturn               | [RetroArch Beetle Saturn](https://docs.libretro.com/library/beetle_saturn/)                                               |
| Sega Saturn               | [RetroArch Kronos](https://docs.libretro.com/library/kronos/)                                                             |
| Sega Saturn               | [RetroArch Yabause](https://docs.libretro.com/library/yabause/)                                                           |
| Sharp X68000              | [RetroArch PX68k](https://docs.libretro.com/library/px68k/)                                                               |
| Sony Playstation          | [RetroArch Beetle HW](https://docs.libretro.com/library/beetle_psx/)                                                      |
| Sony Playstation          | [RetroArch Swanstation](https://www.libretro.com/index.php/category/swanstation/)                                         |
| Sony Playstation Portable | [RetroArch PPSSPP](https://docs.libretro.com/library/ppsspp/)                                                             |
| Super Nintendo            | [RetroArch Snes9x](https://docs.libretro.com/library/snes9x/)                                                             |
| Super Nintendo Widescreen | [RetroArch bsnes hd beta](https://github.com/DerKoun/bsnes-hd)                                                            |
| Wonderswan & Color        | [RetroArch Beetle Cygne](https://docs.libretro.com/library/beetle_cygne/)                                                 |
| ZX Spectrum               | [RetroArch Fuse](https://docs.libretro.com/library/fuse/)                                                                 |

***

## Common Issues
[Back to the Top](#retroarch-table-of-contents)

## RetroArch Tips and Tricks
[Back to the Top](#retroarch-table-of-contents)

***

### How to Optimize Storage (Compression Tool)
[Back to the Top](#retroarch-table-of-contents)

To optimize storage, you can use the `EmuDeck Compressor` within EmuDeck.  

The `EmuDeck Compressor` will compress your Dreamcast, Playstation 1, Sega/MegaCD, 3DO, Saturn, TurboGraphix/PCEngineCD, PC-FX, Amiga CD32, and NeoGeoCD ROMs to CHD. If your ROM is a BIN/CUE, the Compression Tool will only compress it if you have both the BIN and the CUE files for a ROM. If the ROM is in a zip file or is missing a paired BIN or CUE file, the Compression Tool will not detect the ROM. 

After running the `EmuDeck Compression Tool`, re-run Steam ROM Manager to update your ROM shortcuts to the newly compressed ROM. 

**Visual Reference:** <img src="https://user-images.githubusercontent.com/108900299/198798630-9cf85bc5-ff42-45c4-bceb-7fc4ac740c3c.png" height="300">

***

### How to Manage Multiple Discs
[Back to the Top](#retroarch-table-of-contents)

M3U files can be used to manage multiple discs for RetroArch. [Learn how to create an M3U File](../../file-management/steamos/file-management.md#how-to-create-an-m3u-file).

When the time comes to switch discs:

1. Press L3 and R3 together
2. Select manage discs

***

### How to Change Shaders
[Back to the Top](#retroarch-table-of-contents)

#### How to Download/Update Shaders

1. Open RetroArch
    * You may also do this in game by pressing L3 and R3
2. Open the `Main Menu`
3. Select `Online Updater`
4. Select `Update Slang Shaders` 

#### How to Apply Shaders

1. Load content that has a shader applied automatically
2. Open the Quick Menu with L3 and R3
3. Select `Shaders`
    * <img src="https://user-images.githubusercontent.com/1683513/174447565-be119f1e-38a3-4297-9248-ae3fcc48ee0f.png" height="300">
3. In Shaders, select the `Remove` button
    * <img src="https://user-images.githubusercontent.com/1683513/174447588-6390f58b-2606-4f10-9935-3f82acbf3ad1.png" height="300">
4. Select `Remove Content Directory Preset`
    * <img src="https://user-images.githubusercontent.com/1683513/174447596-38bc3c39-d667-4c5a-8b06-8cc8c3b9505b.png" height="300">
5. Close RetroArch and reload content. No shaders will be applied
    * Yes, it may be hard to see, but no more LCD squares
    * <img src="https://user-images.githubusercontent.com/1683513/174447652-b4ca78d1-7b5a-4ae9-b3f9-120a5b16f3cc.png" height="300">
6. If you want to select a different shader, open the `Shaders` menu again, and select your preferred settings/shaders. When you are satisfied, select the `Save` button
    * <img src="https://user-images.githubusercontent.com/1683513/174447945-3929b8d0-cb9f-45f8-9e15-18d172703cd7.png" height="300">

The order they are listed in is the order they take precedence, from most general to most specific.

1. Global = Everything.
2. Core = Anything run by a specific core.
3. Content Directory = Any ROM in a specific directory. 
    * These are used for the EmuDeck applied shaders.
4. Game = that specific ROM.

As you get lower in this list it takes precedence, so if you do nothing but set a core shader preset, it will  not override the content directory preset already applied.


***

### How to Change Controller Layouts on a Per Game Basis
[Back to the Top](#retroarch-table-of-contents)

```
How to remap the controls for a single game:

1. Start content with the core for which you want to remap controls
2. Open the Quick Menu with L3 + R3
3. Select Controls
4. Configure controls
5. Select Manage Remap Files
6. Select Save Game Remap File
```

Copied From: [https://docs.libretro.com/guides/input-and-controls/#remapping-controls-for-individual-cores-or-content](https://docs.libretro.com/guides/input-and-controls/#remapping-controls-for-individual-cores-or-content)

*** 

### How to Change Controller Layouts for a System
[Back to the Top](#retroarch-table-of-contents)

```
How to remap the controls for a single system/core:

1. Start content with the core for which you want to remap controls
2. Open the Quick Menu with L3 + R3
3. Select Controls
4. Configure controls
5. Select Manage Remap Files
6. Select Save Content Directory Remap File
```

Copied From: [https://docs.libretro.com/guides/input-and-controls/#remapping-controls-for-individual-cores-or-content](https://docs.libretro.com/guides/input-and-controls/#remapping-controls-for-individual-cores-or-content)


***

### How to Set Game Settings On a Per-Game Basis
[Back to the Top](#retroarch-table-of-contents)

```
How to Set Game Settings On a Per-Game Basis:

1. Start content with the core for which you want to change settings
2. Open the Quick Menu with L3 + R3
3. Configure settings
4. Select Overrides
5. Select Save Game Overrides
```

***

### How to Change Settings On a Per-Core Basis
[Back to the Top](#retroarch-table-of-contents)

```
How to Change Settings On a Per-Core Basis

1. Start content with the core for which you want to change settings
2. Open the Quick Menu with L3 + R3
3. Configure settings
4. Select Overrides
5. Select Save Content Directory Overrides
```

***

## RetroArch Cores
[Back to the Top](#retroarch-table-of-contents)

***

### Flycast
[Back to the Top](#retroarch-table-of-contents)

**Flycast is a Dreamcast Core for RetroArch.**

Wiki Link: [https://docs.libretro.com/library/flycast/](https://docs.libretro.com/library/flycast/)

***

#### How to Install Custom Textures For Flycast
[Back to the Top](#retroarch-table-of-contents)

1. In `Emulation/bios`, create a `dc` folder
2. In `Emulation/bios/dc`, create 3 folders: `texdump`, `textures`, and `skins` folder
    * `texdump` - Dumped Textures Folder
    * `textures` - Texture Pack Folder
3. Place texture packs in `Emulation/bios/dc/textures`
4. Open a game, press `L3` and `R3`, open the settings menu and enable `Load Custom Textures`

Texture Pack Resources: [https://old.reddit.com/r/Flycast_texture_packs/](https://old.reddit.com/r/Flycast_texture_packs/)

***

### Fuse
[Back to the Top](#retroarch-table-of-contents)

**Fuse is a ZX Spectrum Core for RetroArch.**

Wiki Link: [https://docs.libretro.com/library/fuse/](https://docs.libretro.com/library/fuse/)

***

#### How to Configure Controls for Fuse
[Back to the Top](#retroarch-table-of-contents)

You will want to set a joystick in the quick menu/controls/port one. 

RetroArch sets it controller by default, but thats useless for a computer.

I always suggest setting it to "Kempston" and saving a core remap.

Kempston works for a lot of games so is a good base, but it may need changing on a game by game basis, which is easy enough. 

If you load a game and kempston doesnt work, just head back to quick menu/controls/port one, and try one of the other joysticks.

When you find one that works save that as a game remap. 

Bear in mind though the speccy was a computer, and some games will be keyboard only, you may be able to work around that via steam input. 

***

### MelonDS
[Back to the Top](#retroarch-table-of-contents)

**MelonDS is a Nintendo DS Core for RetroArch.**

Wiki Link: [https://docs.libretro.com/library/melonds/](https://docs.libretro.com/library/melonds/). For the standalone emulator, visit the [melonDS](../../emulators/steamos/melonds.md) page.

***

#### How to Use the Trackpad for the Touch Screen
[Back to the Top](#retroarch-table-of-contents)

**Description:** This allows you to use one of the trackpads as a touch screen for a Nintendo DS game. 

**RetroArch**

1. Press both `L3` and `R3` while playing a DS game
2. `Quick Menu` > `Core Options` > `Screen` > `Touch Mode` > change from `Touch` to `Mouse`
3. `Quick Menu` > `Manage Core Options` > `Save Content Directory Options`

**Steam Input**

1. Change one of your trackpads to a mouse and either use the `B` button or `Left Click` as the click option

***

### Mupen64Plus-Next
[Back to the Top](#retroarch-table-of-contents)

**Mupen64Plus-Next is a Nintendo 64 Core for RetroArch.**

Wiki Link: [https://docs.libretro.com/library/mupen64plus/](https://docs.libretro.com/library/mupen64plus/)

***

#### How to Install Custom Textures for Mupen64Plus-Next
[Back to the Top](#retroarch-table-of-contents)

1. In `Emulation/hdpacks/Mupen64plus_next`, create two folders, `cache` and `hires_texture`
2. A breakdown of which folder to use: 
    * .png textures stored in hires_texture/ should generate a cache when loading a matching game and then work
    * .htc/.hts textures in cache/ should work but the RA settings need to match the settings used when generating the cache
3. Open a game, access the Quick Menu > Options > GlideN64 > Use High-Res textures
    * Enable:
        * Cache Textures
        * Use High-Res Full Alpha Channel
        * Use Hi-Res Storage

***

### Neko Project II Kai
[Back to the Top](#retroarch-table-of-contents)

**Neko Project II Kai is a NEC PC-98 Core for RetroArch.**

Wiki Link: [https://docs.libretro.com/library/neko_project_ii_kai/](https://docs.libretro.com/library/neko_project_ii_kai/)

***

#### Configuring controls
[Back to the Top](#retroarch-table-of-contents)

Neko Project II Kai, soon:tm:

***

### PPSSPP RetroArch Core
[Back to the Top](#retroarch-table-of-contents)

PPSSPP is a Playstation Portable Core for RetroArch. For the standalone emulator, visit the [PPSSPP](../../emulators/steamos/ppsspp.md) page.

***

#### How to Download Asset Files (Required)
[Back to the Top](#retroarch-table-of-contents)

The PPSSPP RetroArch core requires assets files to be fully functional.

To download these asset files:

1. Open `RetroArch`
2. Click `Online Updater`
3. Click `Core System Files Downloader` to download `ppsspp.zip`     
4. `ppsppp.zip` will be downloaded to `Emulation/bios`, no additional steps are required

***

### PX68k
[Back to the Top](#retroarch-table-of-contents)

**PX68k is a Sharp - X68000 Core for RetroArch.**

***

#### Section 1
[Back to the Top](#retroarch-table-of-contents)

***