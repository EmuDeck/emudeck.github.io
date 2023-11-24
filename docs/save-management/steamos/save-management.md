# Save Management

***

## Save Management Table of Contents

1. [Save Management](#save-management)
    - [Emulator Save and Save State Locations](#emulator-save-and-save-state-locations)

2. [Emulator Quirks](#emulator-quirks)
    - [Xemu: How to Access Saves](#xemu-how-to-access-saves)
    - [Yuzu: Save Data Disappeared](#yuzu-save-data-disappeared)

***

## Emulator Save and Save State Locations
[Back to the Top](#save-management-table-of-contents)


**Note:** Some of the save locations below may include both a `Symlink` and a `Target` location. A `Symlink` is similar to a Windows shorcut, it points to the original location of the file and allows for easier access of that file. If you are backing up save files or interacting with save files, be sure to use the `Target` location. Backing up the `Symlink` location will not preserve the original save files.

Some of the Symlinks below (including RPCS3 and Yuzu) may point to another location within the `Emulation` folder created by EmuDeck. Although backing up the symlink will not preserve these saves, these saves are still localized within your general `Emulation` folder meaning that if your EmuDeck install is on an SD Card or you backed up the entire `Emulation` folder, these saves are safe.

#### Cemu Native

* Saves Location:
    * Symlink:  `Emulation/saves/Cemu/saves/`
    * Target: `Emulation/roms/wiiu/mlc01/usr/save`

#### Cemu Proton

* Saves Location:
    * Symlink:  `Emulation/saves/Cemu/saves/`
    * Target: `Emulation/roms/wiiu/mlc01/usr/save`

#### Citra

* Saves Location:
    * Symlink: `Emulation/saves/citra/saves`
    * Target: `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu/sdmc`
* Save States Location:
    * Symlink: `Emulation/saves/citra/states/`
    * Target: `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu/states`

#### Dolphin

* Saves (Wii):
    * Symlink: `Emulation/saves/dolphin/Wii`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Wii`
* Saves (GameCube):
    * Symlink: `Emulation/saves/dolphin/GC`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC`
* Save States (Wii):
    * Symlink: `Emulation/saves/dolphin/StateSaves`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/StateSaves`
* Save States (GameCube):
    * Symlink: `Emulation/saves/dolphin/StateSaves`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/StateSaves`

#### DuckStation

* Saves: `Emulation/saves/duckstation/saves`
* Save States: `Emulation/saves/duckstation/states`

#### MAME

* Saves: `Emulation/saves/MAME/saves`
* Save States: `Emulation/saves/MAME/states`

#### melonDS

* Saves: `Emulation/saves/melonds/saves`
* Save States: `Emulation/saves/melonds/states`

#### mGBA

* Saves: `Emulation/saves/mgba/saves`
* Save States `Emulation/saves/mgba/states`

#### PCSX2

* Saves: `Emulation/saves/pcsx2/saves`
* Save States `Emulation/saves/pcsx2/states`

#### PPSSPP

* Saves: 
    * Symlink: `Emulation/saves/ppsspp/saves`
    * Target: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/SAVEDATA`
* Save States:
    * Symlink: `Emulation/saves/ppsspp/states/`
    * Target: `/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP/PPSSPP_STATE`

#### PrimeHack

* Saves:
    * Symlink: `Emulation/saves/primehack/Wii`
    * Target: `/home/deck/.var/app/io.github.shiiion.primehack/data/dolphin-emu/Wii`
* Save States:
    * Symlink: `Emulation/saves/primehack/Savestates`
    * Target: `/home/deck/.var/app/io.github.shiiion.primehack/data/dolphin-emu/StateSaves/`

#### RetroArch

* Saves:
    * Symlink: `Emulation/saves/retroarch/saves`
    * Target Location: `/home/deck/.var/app/org.libretro.RetroArch/config/retroarch/saves/`
* Save States:
    * Symlink: `Emulation/saves/retroarch/states`
    * Target Location: `/home/deck/.var/app/org.libretro.RetroArch/config/retroarch/states/`

#### Rosalie's Mupen GUI

* Saves: `Emulation/saves/RMG/saves`
* Save States: `Emulation/saves/RMG/states`

#### RPCS3

* Saves: 
    * Symlink: `Emulation/saves/rpcs3/saves`
    * Target: `Emulation/storage/rpcs3/dev_hdd0/home/00000001/savedata`

#### Ryujinx

* Saves:
    * Symlink: `Emulation/saves/ryujinx/saves`
    * Target: `/home/deck/.config/Ryujinx/bis/user/save`
* saveMeta:
    * Symlink: `Emulation/saves/Ryujinx/saveMeta`
    * Target: `/home/deck/.config/Ryujinx/bis/user/saveMeta`

#### ScummVM

* Saves: `Emulation/saves/scummvm/saves`

#### Vita3K

* Saves: `Emulation/storage/Vita3K/ux0/user/00/savedata`
    * Save folders correspond to a game's Title ID. To locate your game's Title ID, open Vita3K, right click a game, and click `Information`

#### Xemu

* Saves:
    * `Emulation/storage/xemu/xbox_hdd.qcow2`
        * To access your saves, read [Xemu How to Access Saves](../../emulators/steamos/xemu.md#how-to-access-saves)
    * `Emulation/storage/xemu/eeprom.bin`

#### Xenia

* Saves: `Emulation/roms/xbox360/content`

#### Yuzu

* Saves:
    * Symlink: `Emulation/saves/yuzu/`
    * Target Location: `Emulation/storage/yuzu/nand/user/save/`

***

## Emulator Quirks

***

### Xemu: How to Access Saves
[Back to the Top](#save-management-table-of-contents)

See [Xemu: How to Access Saves](../../emulators/steamos/xemu.md#how-to-access-saves).

***

### Yuzu: Save Data Disappeared
[Back to the Top](#save-management-table-of-contents)

See [Yuzu: Save Data Disappeared](../../emulators/steamos/yuzu.md#save-data-disappeared).

***