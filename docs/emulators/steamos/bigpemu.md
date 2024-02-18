# BigPEmu is an Atari Jaguar and Atari Jaguar CD Emulator.

Website: [https://www.richwhitehouse.com/jaguar/](https://www.richwhitehouse.com/jaguar/)

Patreon: [https://www.patreon.com/richwhitehouse](https://www.patreon.com/richwhitehouse)

***

## BigPEmu Table of Contents

1. [Getting Started with BigPEmu](#getting-started-with-bigpemu)
    - [Configuration](#bigpemu-configuration)
    - [BigPEmu Folder Locations](#bigpemu-folder-locations)
    - [How to Update BigPEmu](#how-to-update-bigpemu)
    - [How to Launch BigPEmu in Desktop Mode](#how-to-launch-bigpemu-in-desktop-mode)
    - [File Formats](#bigpemu-file-formats)
    - [Hotkeys](#bigpemu-hotkeys)

***

## Getting Started with BigPEmu
[Back to the Top](#bigpemu-table-of-contents)

BigPEmu is a fairly straight-forward emulator to set up. Place your Atari Jaguar ROMs in `Emulation/roms/atarijaguar` or Atari Jaguar CD ROMs in `Emulation/roms/xbox360/roms/atarijaguarcd`. No additional setup is required. Read the [Configuration](#bigpemu-configuration) section to learn more about BigPEmu and its folder locations.

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Xbox 360 ROMs:

* `EmulationStation-DE`
* `Atari Jaguar/Jaguar CD - BigPEmu Proton`
* `Emulators`

***

### BigPEmu Configuration
[Back to the Top](#bigpemu-table-of-contents)


* Type of Emulator: Windows Executable through Proton
* Executable Location (BigPEmu Script): 
  * `Emulation/tools/launchers/bigpemu.sh`
  * `$HOME/Applications/BigPEmu/bigpemu.sh`
    * Use `bigpemu.sh` to launch BigPEmu in Desktop Mode
* Executable Location (Windows EXE): `$HOME/Applications/BigPEmu/BigPEmu.exe`
    * Do not launch BigPEmu in Desktop Mode with `BigPEmu.exe`
* Config Location: `$HOME/Applications/BigPEmu/UserData`
* Atari Jaguar ROM Location: `Emulation/roms/atarijaguar`
* Atari Jaguar CD ROM Location: `Emulation/roms/atarijaguarcd`
* BIOS: No BIOS are required to play BigPEmu
* Saves:
    * Symlink: `Emulation/saves/bigpemu/saves`
    * Target Location: `$HOME/Applications/BigPEmu/UserData`
* Save States:
    * Symlink: `Emulation/saves/bigpemu/states`
    * Target Location: `$HOME/Applications/BigPEmu/UserData`

***

### BigPEmu Folder Locations
[Back to the Top](#bigpemu-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

`$HOME/Applications/BigPEmu/BigPEmu.exe`

```
BigPEmu/
├── BigPEmu.exe
├── bigpemu.sh
├── Data
│   ├── Lenses
│   │   ├── fmt_vrlens.py
│   │   └── lens_fisheye.vrlens
│   ├── ScreenEffects
│   │   ├── cheesy_scanlines
│   │   │   ├── cheesy_scanlines_ps.glsl
│   │   │   └── composite_ps.glsl
│   │   ├── cheesy_scanlines.dstack
│   │   ├── crt-hyllian
│   │   │   ├── _pass00_pixel.glsl
│   │   │   └── _pass00_vertex.glsl
│   │   ├── crt-hyllian.dstack
│   │   ├── example
│   │   │   ├── basic_template.dstack
│   │   │   ├── basic_template_ps.glsl
│   │   │   └── basic_template_vs.glsl
│   │   ├── gamma
│   │   │   └── gamma_ps.glsl
│   │   ├── gamma.dstack
│   │   ├── liz
│   │   │   ├── lizmix.glsl
│   │   │   └── white_diamonds.png
│   │   ├── liz.dstack
│   │   ├── oh_my_gauss
│   │   │   ├── blur_common.h
│   │   │   ├── blur_h_ps.glsl
│   │   │   ├── blur_v_ps.glsl
│   │   │   ├── ol_ps.glsl
│   │   │   ├── ol_vs.glsl
│   │   │   └── scale_up_vs.glsl
│   │   ├── oh_my_gauss.dstack
│   │   ├── shadertoy
│   │   │   ├── shadertoy_framework_ps.glsl
│   │   │   └── shadertoy_resized.dstack
│   │   ├── shadertoy.dstack
│   │   ├── shadertoy.glsl
│   │   ├── util
│   │   │   ├── colorspace.h
│   │   │   ├── common_ubo.h
│   │   │   ├── convenience.h
│   │   │   ├── copypass_ps.glsl
│   │   │   ├── copypass_togamma_ps.glsl
│   │   │   ├── copypass_tolin_ps.glsl
│   │   │   ├── copypass_vs.glsl
│   │   │   └── desaturate_ps.glsl
│   │   ├── warping
│   │   │   └── warping_ps.glsl
│   │   ├── warping.dstack
│   │   ├── xbr-lv2
│   │   │   ├── _pass00_pixel.glsl
│   │   │   └── _pass00_vertex.glsl
│   │   ├── xbr-lv2.dstack
│   │   ├── xbr-lv3
│   │   │   ├── _pass00_pixel.glsl
│   │   │   └── _pass00_vertex.glsl
│   │   └── xbr-lv3.dstack
│   └── ThirdParty
│       ├── bin
│       │   ├── openvr_api.dll
│       │   └── ThirdPartyBin.txt
│       └── Licenses
│           ├── libcurl.txt
│           ├── libpng.txt
│           ├── MUSASHI.txt
│           ├── openvr.txt
│           ├── RapidJSON.txt
│           ├── TinyCC-MIT.txt
│           └── zlib.txt
├── Plugins
│   ├── BigPEmu_Audio_DirectSound.dll
│   ├── BigPEmu_Input_DirectInput.dll
│   ├── BigPEmu_Network_WS2.dll
│   ├── BigPEmu_Other_MMDev.dll
│   ├── BigPEmu_Video_OpenGL.dll
│   └── BigPEmu_VR_OpenVR.dll
├── ReadMe.txt
├── Scripts
│   ├── avp.bigpcvm
│   ├── avp.c
│   ├── avp_mp.bigpcvm
│   ├── avp_mp.c
│   ├── brett_hull_hockey.bigpcvm
│   ├── brett_hull_hockey.c
│   ├── checkered_flag.bigpcvm
│   ├── checkered_flag.c
│   ├── cybermorph.bigpcvm
│   ├── cybermorph.c
│   ├── hello_pussycat.bigpcvm
│   ├── hello_pussycat.c
│   ├── hello_pussycat.png
│   ├── include
│   │   ├── bigpcrt.a
│   │   ├── bigpcrt.h
│   │   ├── bigp_shared.h
│   │   └── jagregs.h
│   ├── iron_soldier.bigpcvm
│   ├── iron_soldier.c
│   ├── mc3d_vr.bigpcvm
│   ├── mc3d_vr.c
│   ├── t2k_rotary.bigpcvm
│   ├── t2k_rotary.c
│   ├── wolf3d.bigpcvm
│   └── wolf3d.c
├── Strings
│   ├── strings_en.bigpfc
│   └── strings_en.txt
└── UserData
    └── BigPEmuConfig.bigpcfg
```

***

### How to Update BigPEmu
[Back to the Top](#bigpemu-table-of-contents)

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application

***

### How to Launch BigPEmu in Desktop Mode
[Back to the Top](#bigpemu-table-of-contents)

* Launch `BigPEmu (Proton)` from the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `bigpemu.sh`
* Launch the script from `$HOME/Applications/BigPEmu`, `bigpemu.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

### BigPEmu File Formats
[Back to the Top](#bigpemu-table-of-contents)

* .abs
* .cdi
* .cof  
* `.cue and .bin`
* .jag   
* .j64
* .rom
* .zip 

***

### BigPEmu Hotkeys
[Back to the Top](#bigpemu-table-of-contents)

{{ read_csv('bigpemu-hotkeys.csv') }}

***
