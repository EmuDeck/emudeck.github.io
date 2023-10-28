# Known Issues: EmuDeck for SteamOS

**Note:** Each section of this page includes the date it was added to this page in its header. 

***

[TOC]

***


## PCSX2 - not launching - October 26th, 2023

A recent update of PCSX2 also included updates to its required libraries. With the stable version of SteamOS being nearly a year old, SteamOS' libraries are now outdated. Without these updated libraries, newer versions of PCSX2 will not work. In order to continue using PCSX2 on Stable SteamOS, you will need to revert to an older version to continue playing.

**Here's How**

1. Download `pcsx2-v1.7.5129-linux-appimage-x64-Qt.AppImage` from: [https://github.com/PCSX2/pcsx2/releases/tag/v1.7.5129](https://github.com/PCSX2/pcsx2/releases/tag/v1.7.5129) to your `/home/deck/Downloads` folder
2. Rename `pcsx2-v1.7.5129-linux-appimage-x64-Qt.AppImage` to `pcsx2-Qt.AppImage`
3. Move the downloaded emulator from Step 1 to `/home/deck/Applications` and overwrite the current `pcsx2-Qt.AppImage` file
4. Right click `pcsx2-Qt.AppImage`, click `Properties`, click `Permissions`, check `Is executable`
5. Your games will now launch using `v1.7.5129`, stay on this version for the foreseeable future

**Note:** Although SteamOS Preview (SteamOS 3.5 as of October 26th, 2023) does have slightly more updated libraries than SteamOS Stable (SteamOS 3.4 as of October 26th, 2023), these libraries are still too old for the latest versions of PCSX2. It is uncertain whether or not a SteamOS 3.5 dot release (Ex - SteamOS 3.5.1) or SteamOS 3.6 will include the prequisite libraries for the latest version of PCSX2 to run. 

***

## DuckStation - audio not working - September 16th, 2023

The September 16th update of the DuckStation Flatpak did not have working audio. If you have not updated DuckStation in a while and the emulator does not have sound, you will need to open Discover in Desktop Mode and update DuckStation. RetroAcheivements will also fully work on the latest versions of DuckStation. 

***

## Gyro suddenly stopped working - June 15th, 2023

The latest Steam Client update on June 14th, [https://store.steampowered.com/oldnews/195171](https://store.steampowered.com/oldnews/195171), adjusted how gyro works on the Steam Deck. 

Gyro, through SteamDeckGyroDSU, now requires a few additional steps to enable in Game Mode. 

Visit the [SteamDeckGyroDSU](../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu) section to learn how to configure gyro.

***

## RPCS3 - emulator does not work - May 7th, 2023

The May 7th update of the RPCS3 Flatpak did not behave as expected due to a missing dependency. If you have not updated RPCS3 in a while and the emulator no longer launches, you will need to open Discover in Desktop Mode and update RPCS3. 

There are **no currently known** issues with the latest version of RPCS3.   

***

## RetroArch does not work anymore - April 30th, 2023

If you recently updated from an older version of RetroArch and you notice your games are suddenly not working, you will need to check Discover for any system updates. Updating RetroArch on its own is not enough and will prevent it from working.

After you have updated any pending system library updates in Discover, RetroArch will work again. 

1. In Desktop Mode, open Discover (shopping bag icon)
    * <img src="https://user-images.githubusercontent.com/108900299/236019379-be39493c-8b61-4163-be41-ff3de4d14177.png" height=50>
    * <img src="https://user-images.githubusercontent.com/108900299/236021304-1d8a5494-c866-4103-8491-f0baf93a9a88.png" height=300>
2. Click Update (x) in the bottom left
    * There will usually be a number in the ()
3. Click Update All in the top right
    * <img src="https://user-images.githubusercontent.com/108900299/236020629-558f88f7-76f2-4fa6-b137-adaf077411bb.png" height="300">
4. Wait, once the updates are finished, test RetroArch again

***
