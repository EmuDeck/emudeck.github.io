# Supermodel is a Sega Model 3 Emulator.

Website: [https://www.supermodel3.com/](https://www.supermodel3.com/)

GitHub: [https://github.com/trzy/Supermodel](https://github.com/trzy/Supermodel)

***

## Supermodel Table of Contents

1. [Getting Started with Supermodel](#getting-started-with-supermodel)
    - [Configuration](#supermodel-configuration)
    - [Supermodel Folder Locations](#supermodel-folder-locations)
    - [How to Update Supermodel](#how-to-update-supermodel)
    - [How to Launch Supermodel in Desktop Mode](#how-to-launch-supermodel-in-desktop-mode)
    - [File Formats](#supermodel-file-formats)
    - [Hotkeys](#supermodel-hotkeys) 

***

## Getting Started with Supermodel
[Back to the Top](#supermodel-table-of-contents)

Supermodel is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/model3`. Read the [Configuration](#supermodel-configuration) section to learn more about Supermodel and its folder locations.

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Supermodel ROMs:

* `EmulationStation-DE`
* `Sega Model 3 - Supermodel`
* `Emulators`


***

### Supermodel Configuration
[Back to the Top](#supermodel-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `$HOME/.supermodel`
* ROM Location: `Emulation/roms/model3`
* Saves: N/A

**Note:** `~/.supermodel` is a hidden folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

***

### Supermodel Folder Locations
[Back to the Top](#supermodel-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.supermodel`

```
.supermodel/
├── Analysis
├── Assets
│   ├── DIR.txt
│   ├── p1crosshair.bmp
│   └── p2crosshair.bmp
├── Config
│   ├── Games.xml
│   └── Supermodel.ini
├── Log
└── NVRAM
    ├── dayto2pe.nv
    ├── daytona2.nv
    ├── dirtdvls.nv
    ├── eca.nv
    ├── fvipers2.nv
    ├── getbassur.nv
    ├── harley.nv
    ├── lamachin.nv
    ├── lemans24.nv
    ├── lostwsga (Calibrated for 4x3 resolutions).nv
    ├── lostwsga.nv
    ├── magtruck.nv
    ├── mgtrkbad.nv
    ├── oceanhuna.nv
    ├── oceanhun.nv
    ├── scud.nv
    ├── scudplus.nv
    ├── skichamp.nv
    ├── spikeofe.nv
    ├── spikeout.nv
    ├── srally2dx.nv
    ├── srally2.nv
    ├── swtrilgy.nv
    ├── vf3.nv
    ├── vf3tb.nv
    ├── von2.nv
    ├── vs298.nv
    ├── vs2.nv
    └── vs2v991.nv
```


***

### How to Update Supermodel
[Back to the Top](#supermodel-table-of-contents)

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application


***

### How to Launch Supermodel in Desktop Mode

!!! info

    Supermodel does not have a GUI. In order to launch and configure Supermodel, you will need to do so from the command line. 

* In Konsole, run `flatpak run com.supermodel3.Supermodel`
    * If you want to see a list of commands, run:
        * `flatpak run com.supermodel3.Supermodel --help`
* In `Emulation/tools/launchers`, right click anywhere, click `Open Terminal Here`, type `./supermodel.sh`
    * If you want to see a list of commands, run:
        * `./supermodel.sh --help`

***

### Supermodel File Formats
[Back to the Top](#supermodel-table-of-contents)

* .zip

***

### Supermodel Hotkeys
[Back to the Top](#supermodel-table-of-contents)

N/A

***