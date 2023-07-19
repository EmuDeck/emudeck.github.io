# PPSSPP is a Playstation Portable emulator.

Website: [https://www.ppsspp.org/](https://www.ppsspp.org/)

Github: [https://github.com/hrydgard/ppsspp](https://www.ppsspp.org/)

Compatibility List: [https://forums.ppsspp.org/showthread.php?tid=1473](https://www.ppsspp.org/)

***

## PPSSPP Table of Contents

1. [Getting Started with PPSSPP](#getting-started-with-ppsspp)
    - [Configuration](#ppsspp-configuration)
    - [How to Update PPSSPP](#how-to-update-ppsspp)
    - [How to Launch PPSSPP](#how-to-launch-ppsspp)
    - [File Formats](#ppsspp-file-formats)
    - [How to Manage DLC](#ppsspp-how-to-manage-dlc)
    - [Hotkeys](../../controls-and-hotkeys/windows/hotkeys.md#ppsspp-playstation-portable)

2. [PPSSPP Tips and Tricks](#ppsspp-tips-and-tricks)

***

## Getting Started with PPSSPP
[Back to the Top](#ppsspp-table-of-contents)

PPSSPP is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation\roms\psp`. No additional setup is required. Read the [Configuration](#ppsspp-configuration) section to learn more about PPSSPP and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your PSP ROMs:

* `EmulationStation-DE`
* `Sony PlayStation Portable - PPSSPP` 
* `Emulators`

***

### PPSSPP Configuration
[Back to the Top](#ppsspp-table-of-contents)

* Executable Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\PPSSPPWindows64.exe`
* Config Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\memstick\PSP\SYSTEM`
* Memstick Location: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\memstick`
* ROM Location: `Emulation\roms\psp`
* PPSSPP does not require any additional BIOS or firmware
* Saves: 
    * Shortcut: `Emulation\saves\ppsspp\saves`
    * Target: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\memstick\PSP\SAVEDATA`
* Save States:
    * Shortcut: `Emulation\saves\ppsspp\states`
    * Target: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\memstick\PSP\PPSSPP_STATE` 

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### How to Update PPSSPP
[Back to the Top](#ppsspp-table-of-contents)

***

### How to Launch PPSSPP
[Back to the Top](#ppsspp-table-of-contents)

* Launch `PPSSPP` from the `EmuDeck` folder in the `Start Menu`
* Launch `PPSSPP.bat` file in `Emulation\tools\launchers`
* Launch `PPSSPPWindows64.exe` in `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP` 
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

### PPSSPP File Formats
[Back to the Top](#ppsspp-table-of-contents)

* .elf 
* .cso 
* .iso 
* .pbp 
* .prx

***

### PPSSPP How to Manage DLC
[Back to the Top](#ppsspp-table-of-contents)

**Preface** 

The Memstick folder is located here: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\memstick\PSP`

**How to Manage DLC**

1. In the Memstick folder, create two folders: `GAME` and `SAVEDATA`
    * If these folders exist, skip this step
2. Determine which type of DLC you have
    * DLC Type 1: `GAME` DLC
        * If the DLC folder includes `PARAM.PBP`, you have `GAME` DLC
    2. DLC Type 2: `SAVEDATA` DLC
        * If the DLC folder includes `PARAM.SFO`, you have `SAVEDATA` DLC
3. Place the DLC into the matching folder
    * `GAME` DLC are placed here: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\memstick\PSP\GAME` 
    * `SAVEDATA` DLC are placed here: `%USERPROFILE%\emudeck\EmulationStation-DE\Emulators\PPSSPP\memstick\PSP\SAVEDATA`

***

## PPSSPP Tips and Tricks
[Back to the Top](#ppsspp-table-of-contents)

***