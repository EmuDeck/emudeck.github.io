# Flycast is a Dreamcast emulator

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


***