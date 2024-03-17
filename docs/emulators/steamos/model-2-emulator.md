# Model 2 Emulator is a Sega Model 2 Emulator.

Information: [https://emulation.gametechwiki.com/index.php/Sega_Model_2](https://emulation.gametechwiki.com/index.php/Sega_Model_2)


***

## Model 2 Emulator Table of Contents

1. [Getting Started with Model 2 Emulator](#getting-started-with-model-2-emulator)
    - [Configuration](#model-2-emulator-configuration)
    - [Model 2 Emulator Folder Locations](#model-2-emulator-folder-locations)
    - [How to Update the Model 2 Emulator](#how-to-update-the-model-2-emulator)
    - [How to Launch the Model 2 Emulator in Desktop Mode](#how-to-launch-the-model-2-emulator-in-desktop-mode)
    - [File Formats](#model-2-emulator-file-formats)
    - [Hotkeys](#model-2-emulator-hotkeys)

***

## Getting Started with Model 2 Emulator
[Back to the Top](#model-2-emulator-table-of-contents)

The Model 2 Emulator is a fairly straight-forward emulator to set up. Place your Sega Model 2 ROMs in `Emulation/roms/model2/roms`. No additional setup is required. Read the [Configuration](#model-2-emulator-configuration) section to learn more about the Model 2 Emulator and its folder locations.

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Model 2 ROMs:

* `EmulationStation-DE`
* `Sega Model 2 - Model 2 Emulator`
* `Emulators`

***

### Model 2 Emulator Configuration
[Back to the Top](#model-2-emulator-table-of-contents)


* Type of Emulator: Windows Executable through Proton
* Executable Location (Model 2 Emulator Script): `Emulation/tools/launchers/model2.sh`
    * Use `model2.sh` to launch the Model 2 Emulator in Desktop Mode
* Executable Location (Windows EXE): `Emulation/roms/model2/EMULATOR.EXE`
    * Do not launch the Model 2 Emulator in Desktop Mode with `EMULATOR.EXE`
* Config Location: `Emulation/roms/model2`
* Sega Model 2 ROM Location: `Emulation/roms/model2/roms`
    * Note the second `roms` folder in the path
* BIOS: No BIOS are required to play the Model 2 Emulator
* Saves: N/A

***

### Model 2 Emulator Folder Locations
[Back to the Top](#model-2-emulator-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

`Emulation/roms/model2`

```
model2/
├── CFG
│   ├── bel.input
│   ├── dayton93.input
│   ├── daytonagtx.input
│   ├── daytona.input
│   ├── daytonam.input
│   ├── daytonase.input
│   ├── daytonas.input
│   ├── daytonata.input
│   ├── desert.input
│   ├── doa.input
│   ├── dynabb97.input
│   ├── dynamcop.input
│   ├── dyndeka2.input
│   ├── fvipers.input
│   ├── gunblade.input
│   ├── hotd.input
│   ├── indy500.input
│   ├── lastbrnx.input
│   ├── manxttc.input
│   ├── motoraid.input
│   ├── overrev.input
│   ├── pltkids.input
│   ├── rchase2.input
│   ├── schamp.input
│   ├── segawski.input
│   ├── sgt24h.input
│   ├── skisuprg.input
│   ├── skytargt.input
│   ├── srallyc.input
│   ├── srallyp.input
│   ├── stcc.input
│   ├── topskatr.input
│   ├── vcop2.input
│   ├── vcop.input
│   ├── vf2.input
│   ├── von.input
│   ├── vstriker.input
│   ├── waverunr.input
│   └── zerogun.input
├── common.lua
├── daytona.lua
├── daytona.pat
├── EMULATOR.EXE
├── EMULATOR.INI
├── EMULATOR.INI.bak
├── emulator_multicpu.exe
├── media -> /home/sunflower/Emulation/tools/downloaded_media/model2
├── metadata.txt
├── mode_1.ps
├── mode_2.ps
├── model2.lua
├── model2lua.txt
├── NVDATA
│   ├── bel.DAT
│   ├── dayton93.DAT
│   ├── daytona.DAT
│   ├── daytonagtx.DAT
│   ├── daytonam.DAT
│   ├── daytonas.DAT
│   ├── daytonase.DAT
│   ├── daytonata.DAT
│   ├── desert.DAT
│   ├── doa.DAT
│   ├── dynabb97.DAT
│   ├── dynamcop.DAT
│   ├── dyndeka2.DAT
│   ├── fvipers.DAT
│   ├── gunblade.DAT
│   ├── hotd.DAT
│   ├── indy500.DAT
│   ├── lastbrnx.DAT
│   ├── manxttc.DAT
│   ├── motoraid.DAT
│   ├── overrev.DAT
│   ├── pltkids.DAT
│   ├── rchase2.DAT
│   ├── schamp.DAT
│   ├── segawski.DAT
│   ├── sgt24h.DAT
│   ├── skisuprg.DAT
│   ├── skytargt.DAT
│   ├── srallyc.DAT
│   ├── srallyp.DAT
│   ├── stcc.DAT
│   ├── topskatr.DAT
│   ├── vcop2.DAT
│   ├── vcop.DAT
│   ├── vf2.DAT
│   ├── von.DAT
│   ├── vstriker.DAT
│   ├── waverunr.DAT
│   └── zerogun.DAT
├── pfx
│   └── pfx.txt
├── README.TXT
├── roms
│   └── roms.txt
├── scripts
│   ├── 4x3 Scripts
│   │   ├── bel.lua
│   │   ├── common.lua
│   │   ├── dayton93.lua
│   │   ├── daytonagtx.lua
│   │   ├── daytona.lua
│   │   ├── daytonam.lua
│   │   ├── daytonase.lua
│   │   ├── daytonas.lua
│   │   ├── daytonata.lua
│   │   ├── daytonat.lua
│   │   ├── desert.lua
│   │   ├── doaa.lua
│   │   ├── doa.lua
│   │   ├── dynabb97.lua
│   │   ├── dynamcop.lua
│   │   ├── dyndek2b.lua
│   │   ├── dyndeka2.lua
│   │   ├── dynmcopb.lua
│   │   ├── dynmcopc.lua
│   │   ├── fvipers.lua
│   │   ├── gunblade.lua
│   │   ├── hotd.lua
│   │   ├── indy500d.lua
│   │   ├── indy500.lua
│   │   ├── indy500to.lua
│   │   ├── lastbrnxj.lua
│   │   ├── lastbrnx.lua
│   │   ├── lastbrnxu.lua
│   │   ├── manxttc.lua
│   │   ├── manxtt.lua
│   │   ├── model2.lua
│   │   ├── model2lua.txt
│   │   ├── motoraid.lua
│   │   ├── overrevb.lua
│   │   ├── overrev.lua
│   │   ├── pltkidsa.lua
│   │   ├── pltkids.lua
│   │   ├── rchase2.lua
│   │   ├── scanlines_default.png
│   │   ├── schamp.lua
│   │   ├── segawski.lua
│   │   ├── sfight.lua
│   │   ├── sgt24h.lua
│   │   ├── skisuprg.lua
│   │   ├── skytargt.lua
│   │   ├── srallycb.lua
│   │   ├── srallyc.lua
│   │   ├── srallyp.lua
│   │   ├── stcca.lua
│   │   ├── stccb.lua
│   │   ├── stcc.lua
│   │   ├── topskatrj.lua
│   │   ├── topskatr.lua
│   │   ├── topskatru.lua
│   │   ├── vcop2.lua
│   │   ├── vcopa.lua
│   │   ├── vcop.lua
│   │   ├── vf2a.lua
│   │   ├── vf2b.lua
│   │   ├── vf2.lua
│   │   ├── vf2o.lua
│   │   ├── vonj.lua
│   │   ├── von.lua
│   │   ├── vstriker.lua
│   │   ├── vstrikro.lua
│   │   ├── waverunr.lua
│   │   ├── zerogunaj.lua
│   │   ├── zeroguna.lua
│   │   ├── zerogunj.lua
│   │   └── zerogun.lua
│   ├── bel.lua
│   ├── common.lua
│   ├── dayton93.lua
│   ├── daytonagtx.lua
│   ├── daytona.lua
│   ├── daytonam.lua
│   ├── daytonase.lua
│   ├── daytonas.lua
│   ├── daytonata.lua
│   ├── daytonat.lua
│   ├── desert.lua
│   ├── doaa.lua
│   ├── doa.lua
│   ├── dynabb97.lua
│   ├── dynamcop.lua
│   ├── dyndek2b.lua
│   ├── dyndeka2.lua
│   ├── dynmcopb.lua
│   ├── dynmcopc.lua
│   ├── fvipers.lua
│   ├── gunblade.lua
│   ├── hotd.lua
│   ├── indy500d.lua
│   ├── indy500.lua
│   ├── indy500to.lua
│   ├── lastbrnxj.lua
│   ├── lastbrnx.lua
│   ├── lastbrnxu.lua
│   ├── manxttc.lua
│   ├── manxtt.lua
│   ├── model2.lua
│   ├── model2lua.txt
│   ├── motoraid.lua
│   ├── overrevb.lua
│   ├── overrev.lua
│   ├── pltkidsa.lua
│   ├── pltkids.lua
│   ├── rchase2.lua
│   ├── scanlines_default.png
│   ├── schamp.lua
│   ├── segawski.lua
│   ├── sfight.lua
│   ├── sgt24h.lua
│   ├── skisuprg.lua
│   ├── skytargt.lua
│   ├── srallycb.lua
│   ├── srallyc.lua
│   ├── srallyp.lua
│   ├── stcca.lua
│   ├── stccb.lua
│   ├── stcc.lua
│   ├── topskatrj.lua
│   ├── topskatr.lua
│   ├── topskatru.lua
│   ├── vcop2.lua
│   ├── vcopa.lua
│   ├── vcop.lua
│   ├── vf2a.lua
│   ├── vf2b.lua
│   ├── vf2.lua
│   ├── vf2o.lua
│   ├── vonj.lua
│   ├── von.lua
│   ├── vstriker.lua
│   ├── vstrikro.lua
│   ├── waverunr.lua
│   ├── zerogunaj.lua
│   ├── zeroguna.lua
│   ├── zerogunj.lua
│   └── zerogun.lua
├── srallycb.lua
├── srallyc.lua
└── systeminfo.txt
```

***

### How to Update the Model 2 Emulator
[Back to the Top](#model-2-emulator-table-of-contents)

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application

***

### How to Launch the Model 2 Emulator in Desktop Mode
[Back to the Top](#model-2-emulator-table-of-contents)

* Launch `Model 2 Emulator (Proton)` from the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `model2.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

### Model 2 Emulator File Formats
[Back to the Top](#model-2-emulator-table-of-contents)

* .zip

***

### Model 2 Emulator Hotkeys
[Back to the Top](#model-2-emulator-table-of-contents)

{{ read_csv('model-2-emulator-hotkeys.csv') }}

***
