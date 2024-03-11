---
draft: false 
date: 2024-03-10T22:00:00
categories:
  - EmuDeck
---

The recent EmuDeck 2.2 update came out a bit less baked than desired. The EmuDeck team deeply apologizes for any issues you may have faced updating. The team is working hard on pushing out hotfixes, all of which are listed below.

If you have an issue that is not resolved by one of the below items, please create a GitHub account and open an issue on the EmuDeck GitHub repository at https://github.com/dragoonDorise/EmuDeck. Include logs when possible. For a tutorial on how to retrieve logs, see https://emudeck.github.io/troubleshooting/steamos/#how-to-get-the-emudeck-log. Make sure to upload both the EmuDeck log and the AppImage log. 

First, let's begin with Steam shortcuts launching into RetroArch or the emulator instead of the game. 

To fix this issue:

1. Open the EmuDeck app, you will receive a prompt to apply the hotfix
2. Click yes to the prompt and your ROMs will now launch directly into the game

If you say no to the prompt, you may apply this hotfix at any time by resetting the respective emulator on the Manage Emulators page in the EmuDeck application.

***

The hotfixes below are applied when either resetting the respective emulator on the Manage Emulators page or running through an easy/custom reset in the EmuDeck application.

**List of Hotfixes**

* Steam ROM Manager parsers have been rolled back. Instead of dynamically loading parsers, the old way of retrieving parsers is still intact. You will receive the full list of Steam ROM Manager parsers when installing EmuDeck or resetting Steam ROM Manager in the EmuDeck application
* Steam ROM Manager parsers:
    * Bandai WonderSwan Color and TIC-80 parsers have been fixed and now work correctly
    * Flycast and Supermodel have been fixed and now work correctly 
* ES-DE:
    * Now launches the standalone version of Dolphin by default
    * Now launches Ryujinx by default
    * Now launches melonDS DS by default
    * Symlinks to the old ES-DE install so old Steam shortcuts continue to work 
    * ES-DE now no longer shows junk files for Xenia installs 
* Sega Model 2 and Sega Model 3:
    * Widescreen is now fixed for the Model 2 Emulator and Supermodel and will be applied automatically when appropriate
    * Model 2 install now works through EmuDeck 
* If installing an emulator that requires an ES-DE custom system (Cemu, BigPEmu, Model 2 Emulator, and Xenia), you will no longer receive an error if ES-DE is not installed
* Bring Your Own Citra and Yuzu now work correctly if you have the appropriately named AppImages in `$HOME/Applications`. The "Reset Configuration" button will now work, apply the appropriate controls, and grab the latest launchers for you. To emphasize, **no** support for these emulators is guaranteed through EmuDeck
    * `citra-qt.AppImage` and `yuzu.AppImage` are the expected names of the AppImages
* RetroArch:
    * Assets now work properly (previously causing a glitchy GUI in RetroArch)
    * BIOS path is now set correctly 
* Ryujinx save folder creation in `Emulation/saves` has been fixed 
    * If you uninstall EmuDeck, this folder will now be part of the backup process
* Custom icons for the Steam Input radial menu are now copied properly
* EmuDeck Compression Tool:
    * Properly compresses PSP ROMs to CHD without a warning
    * If you have bad PSP CHD ROMs, a decompression option has been added
        * This decompression option also supports CSO if you would like to convert your PSP ROMs to CHD from CSO > ISO > CHD
* SteamDeckGyroDSU install now works properly through the EmuDeck application
* mGBA uninstall is now fixed in EmuDeck
* The EmuDeck Store no longer shows an error 
* The new PCSX2 hotkeys now properly apply
* Fixed bad symlinks between the `gc` and `gamecube` folder
* Cloud services have been rolled back and now work properly