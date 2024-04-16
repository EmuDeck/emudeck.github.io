# Flycast is a Dreamcast Emulator.

GitHub: [https://github.com/flyinghead/flycast](https://github.com/flyinghead/flycast)

***

## Flycast Table of Contents

1. [Getting Started with Flycast](#getting-started-with-flycast)
    - [Configuration](#flycast-configuration)
    - [Flycast Folder Locations](#flycast-folder-locations)
    - [How to Update Flycast](#how-to-update-flycast)
    - [How to Launch Flycast in Desktop Mode](#how-to-launch-flycast-in-desktop-mode)
    - [File Formats](#flycast-file-formats)
    - [Hotkeys](#flycast-hotkeys) 
        - [Steam Deck Light Gun Controls](#steam-deck-light-gun-controls)

2. [Flycast Tips and Tricks](#flycast-tips-and-tricks)
    - [How to Install Custom Textures](#how-to-install-custom-textures)
    - [How to Configure the Sega Dreamcast Microphone](#how-to-configure-the-sega-dreamcast-microphone)
    - [How to Configure Light Gun Games](#how-to-configure-light-gun-games)


***

## Getting Started with Flycast
[Back to the Top](#flycast-table-of-contents)

Flycast is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/dreamcast`. Place your BIOS directly in `Emulation/bios/flycast/bios`. Read the [Configuration](#flycast-configuration) section to learn more about Flycast and its folder locations.

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Flycast ROMs:

* `EmulationStation-DE`
* `Sega Dreamcast - Flycast (Standalone)`
* `Arcade - Atomiswave - Flycast (Standalone)`
* `Arcade - NAOMI - Flycast (Standalone)`
* `Arcade - NAOMI 2 - Flycast (Standalone)` 
* `Emulators`


***

### Flycast Configuration
[Back to the Top](#flycast-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `$HOME/.var/app/org.flycast.Flycast`
* ROM Location: 
  * Dreamcast: `Emulation/roms/dreamcast`
  * Atomiswave: `Emulation/roms/atomiswave`
  * NAOMI: `Emulation/roms/naomi`
  * NAOMI 2: `Emulation/roms/naomi2`
* BIOS Location: `Emulation/bios/flycast/bios`
    * Dreamcast (Optional BIOS): `dc_boot.bin`
    * Atomiswave: `awbios.zip`
    * NAOMI: `naomi.zip`
    * NAOMI 2: `naomi2.zip`
* Saves:
    * Symlink: `Emulation/saves/flycast/saves`
    * Target Location: `$HOME/.var/app/org.flycast.Flycast/data/flycast/`
* Save States:
    * Symlink: `Emulation/saves/flycast/states`
    * Target Location: `$HOME/.var/app/org.flycast.Flycast/config/data/flycast/`

**Note:** `~/.var` is a hidden folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

***

### Flycast Folder Locations
[Back to the Top](#flycast-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.var/app/org.flycast.Flycast`

```
org.flycast.Flycast/
├── config
│   ├── data
│   │   └── flycast
│   └── flycast
│       ├── emu.cfg
│       └── mappings
│           ├── SDL_Keyboard.cfg
│           └── SDL_Microsoft X-Box 360 pad 0.cfg
└── data
    └── flycast
```


***

### How to Update Flycast
[Back to the Top](#flycast-table-of-contents)

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application


***

### How to Launch Flycast in Desktop Mode
[Back to the Top](#flycast-table-of-contents)

* Launch `Flycast` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `flycast.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

### Flycast File Formats
[Back to the Top](#flycast-table-of-contents)

* .cdi
* .chd 
* `.cue and .bin` 
* `.gdi and .bin`
* .zip

***

### Flycast Hotkeys
[Back to the Top](#flycast-table-of-contents)

{{ read_csv('flycast-hotkeys.csv') }}

* When playing arcade games through Flycast, the `Select` button will no longer open the `Quick Menu`. For arcade games specifically, the `Select` button is mapped to `Insert Coin`. For Dreamcast games, the `Select` button is mapped to the `Quick Menu`
* When playing arcade games through Flycast, `STEAM` + `DPad Right` will no longer `Fast Forward`. For arcade games specifically, `STEAM` + `DPad Right` is mapped to `Insert Card`. For Dreamcast games, the `STEAM` + `DPad Right` button is mapped to `Fast Forward`

#### Steam Deck Light Gun Controls

Flycast also comes with a `EmuDeck - Steam Deck Light Gun Controls` profile intended to be used with light gun games. To use this profile, apply it manually. For instructions, see [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile).

{{ read_csv('emudeck-steam-deck-light-gun-controls.csv') }}

***

## Flycast Tips and Tricks
[Back to the Top](#flycast-table-of-contents)

***

### How to Install Custom Textures
[Back to the Top](#flycast-table-of-contents)

**Texture Pack Sources**

_This list is not exhaustive_

* [https://old.reddit.com/r/Flycast_texture_packs/](https://old.reddit.com/r/Flycast_texture_packs/)


1. Open the `/home/deck/.var/app/org.flycast.Flycast/data/` folder
    * `~/.var` is a hidden folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
2. Create two folders: `TEXDUMP` and `TEXTURES`, casing matters
3. Place your texture pack(s) in `/home/deck/.var/app/org.flycast.Flycast/data/TEXTURES`
4. Open Flycast, click the `Video` tab, scroll to the `Texture Upscaling` section, check `Load Custom Textures`
5. Your texture pack will now be installed

***

### How to Configure the Sega Dreamcast Microphone
[Back to the Top](#flycast-table-of-contents)

For a full list of games that used the Sega Dreamcast Microphone, see [https://segaretro.org/Dreamcast_Microphone](https://segaretro.org/Dreamcast_Microphone).

1. Open Flycast
2. Click the `Controls` tab
3. Under the `Dreamcast Devices` section, on the `Port A` controller, set the first port to `Sega VMU` and the second port to `Microphone`
4. Exit out of Flycast and your microphone will now automatically be enabled

To set this on a per-game setting:

1. Open the respective game
2. Press the `Select` button
3. Click `Settings`
4. Click the `Controls` tab
5. Under the `Dreamcast Devices` section, on the `Port A` controller, set the first port to `Sega VMU` and the second port to `Microphone`
6. Click `Make Game Config` at the top of the screen
7. Exit out of the settings and your microphone will only be enabled for this game

***

### How to Configure Light Gun Games
[Back to the Top](#flycast-table-of-contents)

#### Flycast Controls

1. Open a game with light gun support
2. Press `STEAM` or `...` + `DPad Down` to open the `Quick Menu`
3. At the top, click `Make Game Config`
4. Click the `Controls` Tab
5. Scroll down to `Dreamcast Devices`
6. Set the `Port A` controller to `Light Gun` and check the `Crosshair` box

#### Steam Input

1. In Game Mode, single click the game you would like to change the Steam Input Profile for, and click the `Controller Icon` on the right of the screen. Click the layout (whichever name it is currently set to) at the top
2. Click the `Templates` tab
3. Select the `EmuDeck - Steam Deck Light Gun Controls` profile
4. Light gun controls will now be configured for this game


***