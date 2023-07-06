# Xenia is an Xbox 360 Emulator.

Website: https://xenia.jp/

Github: https://github.com/xenia-project/xenia

Compatibility List: https://github.com/xenia-project/game-compatibility/issues

Xenia's FAQ: https://github.com/xenia-project/xenia/wiki/faq

Xenia's Quickstart Guide: https://github.com/xenia-project/xenia/wiki/Quickstart

**IMPORTANT:** Xenia does not currently run well on Linux/SteamOS. Most games will not boot or will not be playable. This emulator is currently in an experimental state for Linux/SteamOS.

We HIGHLY suggest looking to see if a game you wish to emulate has a native PC version on Steam, Lutris, etc. or has a PS3 version than can be run with RPCS3 instead.

***

# Xenia Table of Contents

1. [Getting Started with Xenia](#getting-started-with-xenia)
    - [Configuration](#xenia-configuration)
    - [How to Download Xenia](#how-to-download-xenia)
    - [How to Update Xenia](#how-to-update-xenia)
    - [How to Launch Xenia in Desktop Mode](#how-to-launch-xenia-in-desktop-mode)
    - [File Formats](#xenia-file-formats)
    - [Hotkeys](#xenia-hotkeys)
    - [EmuDeck Compatibility List](#emudeck-compatibility-list)

2. [Common Issues](#xenia-common-issues)
    - [The Dangers of Proton](#the-dangers-of-proton)
    - [How to Fix !Status or GPU Command Error Messages](#how-to-fix-status-or-gpu-command-error-messages)

3. [Xenia Tips and Tricks](#xenia-tips-and-tricks)
    - [How to Swap Out Xenia Builds](#how-to-swap-out-xenia-builds)


***

# Getting Started with Xenia
[Back to the Top](#xenia-table-of-contents)

**IMPORTANT:**  Currently, Xbox Live Arcade games have the highest compatibility on Linux/SteamOS. Most Xbox 360 games do not run well on Xenia, on Linux/SteamOS at this time. Xenia does not currently run well on Linux/SteamOS. Most games will not boot or will not be playable. This emulator is currently in an experimental state for Linux/SteamOS.

Xenia is a fairly straight-forward emulator to set up. Place your Xbox 360 ROMs in `Emulation/roms/xbox360/roms` or Xbox Live Arcade ROMs in `Emulation/roms/xbox360/roms/xbla`. No additional setup is required. Read the [Configuration](#xenia-configuration) section to learn more about Xenia and its folder locations.

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Xbox 360 ROMs:

* `EmulationStation-DE`
* `Microsoft Xbox 360 - Xenia`
* `Microsoft Xbox 360 - Xenia - XBLA`
* `Emulators`

***

## Xenia Configuration
[Back to the Top](#xenia-table-of-contents)


* Type of Emulator: Windows Executable through Proton
* Executable Location (Xenia Script): `Emulation/tools/launchers/xenia.sh`
  * Use `xenia.sh` to launch Xenia in Desktop Mode
* Executable Location (Windows EXE): `Emulation/roms/xbox360/xenia_canary.exe`
  * Do not launch Xenia in Desktop Mode with `xenia_canary.exe`
* Config Location: `Emulation/roms/xbox360`
* Xbox 360 ROM Location: `Emulation/roms/xbox360/roms`
  * Note the second `roms` folder in the path
* Xbox Live Arcade ROM Location: `Emulation/roms/xbox360/roms/xbla`
  * Note the second `roms` folder in the path
* BIOS: No BIOS are required to play Xenia
* Saves Location: `Emulation/roms/xbox360/content`

### Works With
* Steam ROM Manager
* EmulationStation-DE

***

## How to Download Xenia
[Back to the Top](#xenia-table-of-contents)

Xenia cannot be installed on your initial installation of EmuDeck. It can only be installed through the `Manage Emulators` page. It is recommended to not follow online guides if you intend on using EmuDeck's set-up. Any deviations from EmuDeck configurations to Steam ROM Manager, or Xenia's general set-up **will not** be supported.

**Here's How to Download Xenia**

1. In Desktop Mode, open the EmuDeck application
2. Click the `Manage Emulators` button
3. Click `Xenia`
4. Click `Install`
   * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/084ab99a-8a3c-4c58-8772-321700a2f3f0" height="300">
5. Xenia will be installed to `Emulation/roms/xbox360`
   * Place your Xbox 360 ROMs in `Emulation/roms/xbox360/roms` and Xbox Live Arcade ROMs in `Emulation/roms/xbox360/roms/xbla`

**No** additional setup is required with Steam ROM Manager and EmulationStation-DE. If you do not have the latest Steam ROM Manager configurations, either run a `Custom Reset` or click the `Reset configuration` button on the Steam ROM Manager page within the EmuDeck application.



***

## How to Update Xenia
[Back to the Top](#xenia-table-of-contents)

**How to Update Xenia**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `xenia_canary.exe`
  * Refer to https://github.com/dragoonDorise/EmuDeck/wiki/file-management#how-to-swap-out-appimages-and-binaries for instructions.

***

## How to Launch Xenia in Desktop Mode
[Back to the Top](#xenia-table-of-contents)

**How to Launch Xenia in Desktop Mode**

* Launch `xenia (Proton)` from the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `xenia.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

## Xenia File Formats
[Back to the Top](#xenia-table-of-contents)

* .iso
* .xex
* No file extension
  * For Xbox Live Arcade Games

***

## Xenia Hotkeys
[Back to the Top](#xenia-table-of-contents)

N/A

***

## EmuDeck Compatibility List
[Back to the Top](#xenia-table-of-contents)

Currently, Xbox Live Arcade games have the highest compatibility on Linux/SteamOS. Most Xbox 360 games do not run well on Xenia, on Linux/SteamOS at this time.

Check the EmuDeck community compatibility list to see what Xbox 360 games run well on the Steam Deck (on SteamOS): https://docs.google.com/spreadsheets/d/1fRqvAh_wW8Ho_8i966CCSBgPJ2R_SuDFIvvKsQCv05w/edit#gid=1989583881.

To submit games to the EmuDeck community compatibility list: https://docs.google.com/forms/d/e/1FAIpQLScavGFOuGpEVpyHdRVcPjdrCEquG9ItBaloa8Q0XaiNlu_Afg/viewform.


***

# Xenia Common Issues
[Back to the Top](#xenia-table-of-contents)

***

## The Dangers of Proton
[Back to the Top](#xenia-table-of-contents)

**IMPORTANT:**

**DO NOT set Proton Compatibity on Xenia or Xenia games added to Steam.** Do NOT set `STEAM_COMPAT_MOUNTS` in parameters.

**Turning on Proton is not necessary because EmuDeck created a custom script to launch Xenia through Proton. Turning on Proton through Steam breaks EmuDeck's custom script.**

Do not open the `Compatibility` screen in `Game Mode`. Do not touch any of the settings on the `Compatibility` screen in `Game Mode`.

<img width="500" alt="proton" src="https://user-images.githubusercontent.com/108900299/194777064-526930f4-c36c-44be-b26a-ec192375ef7b.png">

***

## How to Fix !Status or GPU Command Error Messages
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

If you get an error message with either `!Status` or `GPU Commands`, you will need to downgrade Xenia to a specific version. Currently (as of April 26th, 2023), build `e9d1e51_canary_experimental` (released April 2nd, 2023) has the highest compatibility. 

There is an open issue on the Xenia GitHub tracking this issue: https://github.com/xenia-canary/xenia-canary/issues/158. Consider subscribing to the issue to keep up to date with the latest progress. 

However, downgrading to this build is not guaranteed to fix your issue. Xenia on Linux, through Proton, is still in a highly experimental state. Many games do not work. Xbox Live Arcade Games currently have the highest compatibility. 

To downgrade to build `e9d1e51_canary_experimental`, read: [How to Swap Out Xenia Builds](#how-to-swap-out-xenia-builds), this section specifically covers downgrading to the `e9d1e51_canary_experimental` build. 

***

# Xenia Tips and Tricks
[Back to the Top](#xenia-table-of-contents)

***

## How to Swap Out Xenia Builds
[Back to the Top](#xenia-table-of-contents)

Xenia, through Proton/Wine, is currently in an experimental state. Updates may break or affect the emulator in unexpected ways. If an update does break certain games launching from Xenia, it is easy to swap out the build for an older one so you can continue playing.

Currently (as of April 26th, 2023), build `e9d1e51_canary_experimental` (released April 2nd, 2023) has the highest compatibility. This section will go over how to swap out the latest build of Xenia Canary for `e9d1e51_canary_experimental`. However, you can take what is written here and apply it to future builds of Xenia Canary as well.

**Tutorial**

1. In Desktop Mode, download `xenia_canary.zip` from: https://github.com/xenia-canary/xenia-canary/releases/tag/e9d1e51
2. Extract the zip file to a folder of your choice
3. Copy or move `xenia_canary.exe` in the newly extracted folder to `Emulation/roms/xbox360` and overwrite the pre-existing `xenia_canary.exe`
4. To test, you can open Xenia by launching `xenia.sh` from `Emulation/tools/launchers` or `xenia (Proton)` from the applications launcher in the bottom left
5. Xenia will now be using your swapped out build. However, you can update to the latest build at any time through EmuDeck

**Visual Tutorial**

https://user-images.githubusercontent.com/108900299/235378389-43bdae68-1365-43a6-9ca1-0a8beb9d5f12.mp4

***