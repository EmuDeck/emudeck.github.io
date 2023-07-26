# Frequently Asked Questions

## Frequently Asked Questions: Table of Contents

1. [Getting Started with the EmuDeck Basics](#getting-started-with-the-emudeck-basics)
    - [What Does EmuDeck install?](#what-does-emudeck-install)
    - [Where Does EmuDeck install?](#where-does-emudeck-install)
    - [How are the various emulators and tools installed or downloaded?](#how-are-the-various-emulators-and-tools-installed-or-downloaded)
    - [How do I open the various emulators and tools in Desktop Mode?](#how-do-i-open-the-various-emulators-and-tools-in-desktop-mode)
    - [Why is EmuDeck not downloading?](#why-is-emudeck-not-downloading)
    - [Where do I get ROMs?](#where-do-i-get-roms)
    - [Where do I get BIOS files?](#where-do-i-get-bios-files)
    - [Which emulators require BIOS files or firmware?](#which-emulators-require-bios-files-or-firmware)
    - [What are the expected file types for the various emulators?](#what-are-the-expected-file-types-for-the-various-emulators)
    - [Which folders match which systems?](#which-folders-match-which-systems)
    - [Where do I put my games?](#where-do-i-put-my-games)
    - [Where do I put my BIOS files?](#where-do-i-put-my-bios-files)
    - [What are the hotkeys for the various emulators?](#what-are-the-hotkeys-for-the-various-emulators)
    - [If I install EmuDeck, will it clutter my Steam library?](#if-i-install-emudeck-will-it-clutter-my-steam-library)
    - [How do I update EmuDeck and emulators?](#how-do-i-update-emudeck-and-emulators)
    - [How do I choose which emulators to install?](#how-do-i-choose-which-emulators-to-install)
    - [How do I remotely control my Steam Deck?](#how-do-i-remotely-control-my-steam-deck)
    - [How do I transfer files to my Steam Deck?](#how-do-i-transfer-files-to-my-steam-deck)
    - [How do I transfer my initial install of EmuDeck to my SD Card and Vice Versa?](#how-do-I-transfer-my-initial-install-of-EmuDeck-to-my-SD-Card-and-Vice-Versa)
    - [How do I change the Steam Input Controller Profile?](#how-do-i-change-the-steam-input-controller-profile) 
    - [How to Verify ROMs](#how-to-verify-roms)
    - [Why is my emulator or game muted?](#why-is-my-emulator-or-game-muted)
    - [For systems with multiple emulators, how do I select which emulator to use?](#for-systems-with-multiple-emulators-how-do-i-select-which-emulator-to-use)


2. [EmuDeck Tips and Tricks](#emudeck-tips-and-tricks)
    - [How do I find .var, .config, or any folder with a period in front?](#how-do-i-find-var-config-or-any-folder-with-a-period-in-front)
    - [How do I reset an emulator's configurations?](#how-do-i-reset-an-emulators-configurations)
    - [How do I navigate to my SD Card through an emulator's menu?](#how-do-i-navigate-to-my-sd-card-through-an-emulators-menu)
    - [Why are my emulators stuttering? How do I improve emulator performance?](#why-are-my-emulators-stuttering-How-do-I-improve-emulator-performance)
    - [Does EmuDeck have a game compatibility list?](#does-emudeck-have-a-game-compatibility-list)
    - [How do I install Power Tools and Deckyloader?](#how-do-i-install-power-tools-and-deckyloader)
    - [How do I install SteamDeckGyroDSU?](#how-do-i-install-SteamDeckGyroDSU)
    - [How do I manage ROMs with multiple discs?](#how-do-i-manage-roms-with-multiple-discs)
    - [How do I link folders or files?](#how-do-i-link-folders-or-files)
    - [How do I use DeckyControls?](#how-do-i-use-deckycontrols)

     

3. [Steam ROM Manager FAQ](#steam-rom-manager-faq)
    - [Where Did Steam ROM Manager Go?](#where-did-steam-rom-manager-go)
    - [Help, I just opened Steam ROM Manager and I have no controls!](#help-i-just-opened-steam-rom-manager-and-i-have-no-controls)

4. [Common Words and Acronyms](#common-words-and-acronyms)

5. [How to Debug](#how-to-debug)
    - [Understanding What You Are Using](#understanding-what-you-are-using)
    - [Debugging Using Steam Shortcuts](#debugging-using-steam-shortcuts)
    - [Debugging by Resetting Configurations](#debugging-by-resetting-configurations)
    - [Debugging Through the EmuDeck Log](#debugging-through-the-emudeck-log)

***

## Getting Started with the EmuDeck Basics
[Back to the Top](#frequently-asked-questions-table-of-contents)

[EmuDeck](https://www.emudeck.com/) is a collection of scripts that allows you to autoconfigure your Steam Deck for emulation, it creates your ROMs directory structure and downloads all of the needed emulators for you along with optimized configurations.

For a tutorial (pick one):

**Watch:** Retro Game Corps' video: [https://www.youtube.com/watch?v=rs9jDHIDKkU](https://www.youtube.com/watch?v=rs9jDHIDKkU)

**Watch (In Spanish):** D0aTech's video: [https://www.youtube.com/watch?v=eZhHWwHmUnM](https://www.youtube.com/watch?v=eZhHWwHmUnM)

**Read:** Retro Game Corps' guide: [https://retrogamecorps.com/2022/10/16/steam-deck-emulation-starter-guide/](https://retrogamecorps.com/2022/10/16/steam-deck-emulation-starter-guide/)

[The EmuDeck Cheat Sheet](../../cheat-sheet.md) should be by your side when you're first setting up EmuDeck. It contains a list of included emulators, ROM formats, and the names of the expected files in `Emulation/bios`. 

[The EmuDeck Emulation Database](https://docs.google.com/spreadsheets/d/1fRqvAh_wW8Ho_8i966CCSBgPJ2R_SuDFIvvKsQCv05w/edit?usp=sharing): This community database is an excellent tool to find games that run well. 

[The EmuDeck Emulation Database Form](https://docs.google.com/forms/d/e/1FAIpQLScavGFOuGpEVpyHdRVcPjdrCEquG9ItBaloa8Q0XaiNlu_Afg/viewform): As you emulate games, make sure to submit how well they run to the EmuDeck Emulation Database! 

Don't forget to join the [EmuDeck Discord!](https://discord.gg/b9F7GpXtFP)

***

### What Does EmuDeck Install?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### List of Projects installed by EmuDeck

* [Decky Loader (Plugin Launcher)](https://github.com/SteamDeckHomebrew/decky-loader) *Optional
* [EmulationStation-DE (Emulator Front-End)](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)
* [Power Tools (Power Tweaks)](https://github.com/NGnius/PowerTools) *Optional
* [SteamDeckGyroDSU](https://github.com/kmicki/SteamDeckGyroDSU) *Optional
* [Steam ROM Manager](https://github.com/SteamGridDB/steam-rom-manager)

#### List of Standalone Emulators installed by EmuDeck

* [Cemu (Wii U)](https://cemu.info/)
* [Citra (3DS)](https://citra-emu.org/)
* [Dolphin (Gamecube and Wii)](https://dolphin-emu.org/)
* [DuckStation (Playstation 1)](https://www.duckstation.org/)
* [MAME (Arcade games and more)](https://www.mamedev.org/)
* [melonDS (Nintendo DS) (Standalone)](https://melonds.kuribo64.net/)
* [mGBA (Gameboy, Gameboy Color, and Gameboy Advance) (Standalone)](https://mgba.io/)
* [PCSX2 (Playstation 2)](https://pcsx2.net/)
* [PPSSP (Playstation Portable)](https://www.ppsspp.org/)
* [PrimeHack (Metroid Prime Trilogy)](https://forums.dolphin-emu.org/Thread-fork-primehack-fps-controls-and-more-for-metroid-prime)
* [RetroArch (Retro Systems)](https://github.com/libretro/RetroArch/)
   * [List of RetroArch Cores Used by EmuDeck](../../emulators/steamos/retroarch.md#list-of-retroarch-cores-used-by-emudeck)
* [Rosalie's Mupen GUI (Nintendo 64)](https://github.com/Rosalie241/RMG)
* [RPCS3 (Playstation 3)](https://rpcs3.net/)
* [Ryujinx (Nintendo Switch)](https://ryujinx.org/)
* [ScummVM (Point and Click Adventures)](https://www.scummvm.org/)
* [Vita3K (Playstation Vita)](https://vita3k.org/)
* [Yuzu (Nintendo Switch)](https://yuzu-emu.org/)
* [Xemu (OG Xbox)](https://xemu.app/)
* [Xenia (Xbox 360)](https://xenia.jp/)

If you do not see an emulator in the list above, it is likely installed as a Retroarch core. 

Refer to the [List of RetroArch Cores Used by EmuDeck](../../emulators/steamos/retroarch.md#list-of-retroarch-cores-used-by-emudeck).

***

### Where Does EmuDeck install?
[Back to the Top](#frequently-asked-questions-table-of-contents)

When you install EmuDeck, EmuDeck prompts for an install location, either the SD Card or the Internal SSD. This install location contains the directory for your ROMs, BIOS, and storage files. Regardless of the location you choose, EmuDeck will install its suite of emulators and tools onto your internal SSD.

***

### How are the various emulators and tools installed or downloaded?
[Back to the Top](#frequently-asked-questions-table-of-contents)

The emulators and tools that come with EmuDeck come in four primary types: AppImage, Binary, Flatpak, and EXE (through Proton).

**Note:**

* Flatpaks can also be updated and managed through Discover. 
* AppImages, Binaries, and Cemu can be updated through the `Manage Emulators` section of the EmuDeck application. 

Here's a full list breaking down each type:

***

#### AppImage

**Tools**

* [EmulationStation-DE](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)
* [Steam ROM Manager](https://github.com/SteamGridDB/steam-rom-manager) 

**Emulators**

* [Cemu](https://cemu.info/)
* [mGBA](https://mgba.io/)
* [PCSX2](https://pcsx2.net/)
* [Yuzu](https://yuzu-emu.org/)

***

#### Flatpak

**Emulators**

* [Citra](https://citra-emu.org/)
* [Dolphin](https://dolphin-emu.org/)
* [DuckStation](https://www.duckstation.org/)
* [MAME](https://www.mamedev.org/)
* [melonDS](https://melonds.kuribo64.net/)
* [PPSSPP](https://www.ppsspp.org/)
* [PrimeHack](https://forums.dolphin-emu.org/Thread-fork-primehack-fps-controls-and-more-for-metroid-prime)
* [RPCS3](https://rpcs3.net/)
* [Rosalie's Mupen GUI](https://github.com/Rosalie241/RMG)
* [Retroarch](https://github.com/libretro/RetroArch/)
* [ScummVM](https://www.scummvm.org/)
* [Xemu](https://xemu.app/)

***

#### EXE (Through Proton)

**Emulators**

* [Cemu](https://cemu.info/)
* [Xenia](https://xenia.jp/)

***

#### Binary

**Emulators**

* [Ryujinx](https://ryujinx.org/) *Optional
* [Vita3K](https://vita3k.org/)

***

#### Other

**Tools**

* [Decky Loader](https://github.com/SteamDeckHomebrew/decky-loader) *Optional
* [Power Tools](https://github.com/NGnius/PowerTools) *Optional
* [SteamDeckGyroDSU](https://github.com/kmicki/SteamDeckGyroDSU) *Optional

***

### How do I open the various emulators and tools in Desktop Mode?
[Back to the Top](#frequently-asked-questions-table-of-contents)

The emulators and tools that come with EmuDeck come in four primary types: AppImage, Binary, Flatpak, and EXE (through Proton).

**Note:**

* Flatpaks can also be updated and managed through Discover. 
* AppImages, Binaries, and Cemu can be updated through the `Manage Emulators` section of the EmuDeck application. 

Here's how to open everything in Desktop Mode:

***

#### Through the Applications Launcher

In Desktop Mode, click the `Steam` icon in the bottom left, and locate your application in the list. 

Here's which applications can be opened this way:

* [Cemu](https://cemu.info/)
    * EXE (Through Proton)
* [Cemu](https://cemu.info/)
    * AppImage
* [Citra](https://citra-emu.org/)
    * Flatpak
* [Dolphin](https://dolphin-emu.org/)
    * Flatpak
* [DuckStation](https://www.duckstation.org/)
    * Flatpak
* [MAME](https://www.mamedev.org/)
    * Flatpak
* [melonDS](https://melonds.kuribo64.net/)
    * Flatpak
* [mGBA](https://mgba.io/)
    * AppImage
* [PCSX2](https://pcsx2.net/)
    * AppImage
* [PPSSPP](https://www.ppsspp.org/)
    * Flatpak
* [PrimeHack](https://forums.dolphin-emu.org/Thread-fork-primehack-fps-controls-and-more-for-metroid-prime)
    * Flatpak
* [Rosalie's Mupen GUI](https://github.com/Rosalie241/RMG)
    * Flatpak
* [RPCS3](https://rpcs3.net/)
    * Flatpak
* [Ryujinx](https://ryujinx.org/)
    * Binary
* [ScummVM](https://www.scummvm.org/)
    * Flatpak
* [Steam ROM Manager](https://github.com/SteamGridDB/steam-rom-manager)
    * AppImage
* [Vita3K](https://vita3k.org/)
    * Binary
* [Yuzu](https://yuzu-emu.org/)
    * AppImage
* [Xemu](https://xemu.app/)
    * Flatpak
* [Xenia](https://xenia.jp/)
    * EXE (Through Proton)

***

#### Through opening the executable

**Location 1**

In Desktop Mode, open `/home/deck/Applications` and locate your application in this folder.

Here's which applications can be opened this way:

* [EmuDeck](https://www.emudeck.com/)
    * AppImage
* [mGBA](https://mgba.io/)
    * AppImage
* [PCSX2](https://pcsx2.net/)
    * AppImage
* [Ryujinx](https://ryujinx.org/)
    * `/home/deck/Applications/publish/Ryujinx`
    * Binary
* [Vita3K](https://vita3k.org/)
    * `/home/deck/Applicaitons/Vita3K/Vita3K`
    * Binary
* [Yuzu](https://yuzu-emu.org/)
    * AppImage

**Location 2**

In Desktop Mode, open `Emulation/tools` and locate your application in this folder.

Here's which applications can be opened this way:

* [EmulationStation-DE](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)
    * AppImage
* [Steam ROM Manager](https://github.com/SteamGridDB/steam-rom-manager)
    * `Emulation/tools/srm/Steam-ROM_Manager.AppImage`
    * AppImage

***

#### Through the Application's Shortcut

In Desktop Mode, open `Emulation/tools/launchers` and locate your application in this folder.

Here's which applications can be opened this way:

* [Cemu](https://cemu.info/)
* [Citra](https://citra-emu.org/)
* [Dolphin](https://dolphin-emu.org/)
* [DuckStation](https://www.duckstation.org/)
* [MAME](https://www.mamedev.org/)
* [melonDS](https://melonds.kuribo64.net/)
* [mGBA](https://mgba.io/)
* [PCSX2](https://pcsx2.net/)
* [PPSSPP](https://www.ppsspp.org/)
* [PrimeHack](https://forums.dolphin-emu.org/Thread-fork-primehack-fps-controls-and-more-for-metroid-prime)
* [Retroarch](https://github.com/libretro/RetroArch/)
* [Rosalie's Mupen GUI](https://github.com/Rosalie241/RMG)
* [RPCS3](https://rpcs3.net/)
* [Ryujinx](https://ryujinx.org/)
* [ScummVM](https://www.scummvm.org/)
* [Vita3K](https://vita3k.org/)
* [Yuzu](https://yuzu-emu.org/)
* [Xemu](https://xemu.app/)
* [Xenia](https://xenia.jp/)


***

### Why is EmuDeck not downloading?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Internet issues are an increasingly common issue among Steam Decks, even if your internet works perfectly fine on other devices, or you have the latest and fastest internet. You may notice that EmuDeck isn't installing properly, or is taking a long time time to install. You may notice these same internet issues when you try to browse the internet or download a game and the internet speeds are much slower than you would expect. 

You can fix these issues by adjusting your DNS, in System Settings within Desktop Mode, in `Configure Network Settings`. 

**Note:** If you are noticing unexpected behavior with RetroAchievements causing errant controls or freezing, consider trying the below steps. 

**Here's How:** 

1. Click the bottom left icon in the taskbar (Steam Deck icon), click `Settings` in the list, open `System Settings`.
2. Click `Connections` on the left.
3. On the `IPv4` tab, change the `Method` to `Automatic (Only Addresses)`.
4. In the `DNS Servers` box, enter `1.1.1.1`.
5. Click the `IPv6` tab at the top, change the `Method` to `Disabled`.
6. For good measure, restart your Steam Deck.

**Note:** If the above steps still do not fix the issue for you, you can try switching to a 2.4 GHz WiFi network if your ISP provides you with one. 

**Visual Reference**

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/main/GIFs/How%20to%20Configure%20Internet%20Settings.gif?raw=true"/>


***

### Where do I get ROMs?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Legally, ROMs must be obtained from your console. Various emulator websites have guides on how to dump games. Other methods are piracy and cannot be discussed here or on the EmuDeck Discord. 

Read this Reddit thread for additional information: [https://www.reddit.com/r/RetroArch/comments/ul15v7/where_to_get_roms_and_games_for_retroarch/](https://www.reddit.com/r/RetroArch/comments/ul15v7/where_to_get_roms_and_games_for_retroarch/)

***

### Which emulators require BIOS files or firmware?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Refer to [The EmuDeck Cheat Sheet](../../cheat-sheet.md) for a list of required BIOS files. 

***

### What are the expected file types for the various emulators?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Refer to [The EmuDeck Cheat Sheet](../../cheat-sheet.md) for a list of the expected file types. 

***



### Where do I get BIOS files?
[Back to the Top](#frequently-asked-questions-table-of-contents)

EmuDeck does not come with BIOS files, you must obtain these on your own. 

Legally, BIOS files or firmware must be obtained from your console. Various emulator websites have guides on how to dump BIOS files or firmware. Other methods are piracy and cannot be discussed here or on the EmuDeck Discord.

Refer to [The EmuDeck Cheat Sheet](../../cheat-sheet.md) for a list of required BIOS files. 

***

### Which folders match which systems?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Refer to [The EmuDeck Cheat Sheet](../../cheat-sheet.md) for a mapping of the folders and their respective systems. 

***

### Where do I put my games?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### SD Card

If you installed EmuDeck to your SD Card (any of the following paths work): 

* `/run/media/SDCARDNAME/Emulation/roms` 
    * **Note:** To locate this file path, open Dolphin (file manager), click `rootfs` on the left, follow the above path. 
    * **Note:** Your SD Card may be named: `mmcblk0p1`
* In Dolphin (file manager), click `Primary` on the left. Open `Emulation/roms`

***

#### Internal SSD

* `/home/deck/Emulation/roms`

***

### Where do I put my BIOS files?
[Back to the Top](#frequently-asked-questions-table-of-contents)

***

#### SD Card

If you installed EmuDeck to your SD Card (any of the following paths work): 

* `/run/media/SDCARDNAME/Emulation/bios` 
    * **Note:** To locate this file path, open Dolphin (file manager), click `rootfs` on the left, follow the above path. 
    * **Note:** Your SD Card may be named: `mmcblk0p1`
* In Dolphin (file manager), click `Primary` on the left. Open `Emulation/bios`

**IMPORTANT:** 

* Files go directly in this folder. **Do not** make or use any additional folders unless otherwise specified on the [The EmuDeck Cheat Sheet](../../cheat-sheet.md).
* Do not make or use a `PS2`, `PCSX2`, or any sort of folder here. PCSX2 will not be able to find your BIOS files if they are in a folder.
* Do not make or use a `PSX`, `PS1`, or any sort of folder here. DuckStation and Beetle PSX will not be able to find your BIOS files if they are in a folder. 

***

#### Internal SSD

* `/home/deck/Emulation/bios`


**IMPORTANT:** 

* Files go directly in this folder. **Do not** make or use any additional folders unless otherwise specified on the [The EmuDeck Cheat Sheet](../../cheat-sheet.md).
* Do not make or use a `PS2`, `PCSX2`, or any sort of folder here. PCSX2 will not be able to find your BIOS files if they are in a folder.
* Do not make or use a `PSX`, `PS1`, or any sort of folder here. DuckStation will not be able to find your BIOS files if they are in a folder. 

***

#### Keep in Mind

Refer to [The EmuDeck Cheat Sheet](../../cheat-sheet.md) for a list of required BIOS files. 

**IMPORTANT:** 

* Files go directly in this folder. **Do not** make or use any additional folders unless otherwise specified on the [The EmuDeck Cheat Sheet](../../cheat-sheet.md)
* Do not make or use a `PS2`, `PCSX2`, or any sort of folder here. PCSX2 will not be able to find your BIOS files if they are in a folder.
    * **IMPORTANT:** PCSX2 will not be able to find your files if they are in a sub-folder. Do not make or use any sub-folders.   
* Do not make or use a `PSX`, `PS1`, or any sort of folder here. DuckStation will not be able to find your BIOS files if they are in a folder. 
    * **IMPORTANT:** DuckStation and Beetle PSX will not be able to find your files if they are in a sub-folder. Do not make or use any sub-folders. 

***

### What are the hotkeys for the various emulators?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Refer to the [Hotkeys](../../controls-and-hotkeys/steamos/hotkeys.md) page for a list of hotkeys per system.


***

### If I install EmuDeck, will it clutter my Steam library?
[Back to the Top](#frequently-asked-questions-table-of-contents)

No! EmuDeck is a "dumb" script that installs a suite of tools and emulators to your Steam Deck. One tool that EmuDeck installs is "Steam ROM Manager", a tool that allows you to add ROMs as non-Steam game shortcuts to your library. You are not required to use Steam ROM Manager.

EmuDeck also installs EmulationStation-DE, a front-end that manages all of your ROMs within a single app. You may choose to use either Steam ROM Manager, EmulationStation-DE, both, or neither of them. EmuDeck is simply a script, and how you choose to use its installed suite of tools and emulators is up to you. 

After you have installed EmuDeck, you can use Steam ROM Manager and select which parsers you would like to use. You can use the `Emulationstation-DE` parser and the `Emulators` parser to add EmulationStation-DE and EmuDeck's installed suite of emulators to your Steam library. Adding emulators to your library allows you to tweak settings directly in Game Mode. Turning on other parsers will add the respective system's ROMs to your library. Learn how to generate and save an app list here: [How to Generate and Save an App List](../../tools/steamos/steam-rom-manager.md#how-to-generate-and-save-an-app-list). 

**Read:** [What does EmuDeck Install?](#what-does-emudeck-install), for a list of the tools and emulators EmuDeck installs.

**Read:** [Steam ROM Manager](../../tools/steamos/steam-rom-manager.md) for more information on Steam ROM Manager.

**Read:** [EmulationStation-DE](../../tools/steamos/emulationstation-de.md) for more information on EmulationStation-DE.

***

### How do I update EmuDeck and emulators?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Visit the [Updating](../../emudeck-maintenance/steamos/updating.md) page for more information.

***

### How do I choose which emulators to install?
[Back to the Top](#frequently-asked-questions-table-of-contents)

You can run EmuDeck in `Custom Mode` for more granular options, including a prompt that allows you to select which emulators you would like to install.

**For a visual reference:** <img src="https://user-images.githubusercontent.com/108900299/196045960-e2daba03-fdf7-4601-9806-91568df6cf38.png" height="300">


***

### How do I remotely control my Steam Deck?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### Method 1: Anydesk 

In desktop mode, click the start menu, open Discover (an included flatpak store), and install Anydesk. On your other device, install Anydesk: [https://anydesk.com/en](https://anydesk.com/en). 

***

#### Method 2: Steam Link

On your other device, install Steam Link: [https://store.steampowered.com/remoteplay#anywhere](https://store.steampowered.com/remoteplay#anywhere). You do not need to install any additional software on your Steam Deck. You should be able to connect as long as Steam is open on the Steam Deck. As a bonus, you should also be able to connect while the Steam Deck is in Game Mode.

**Note:** If you are using Steam ROM Manager, it will close out of Steam and disconnect you from Steam Link. 

***

#### Method 3: Barrier

In desktop mode, click the start menu, open Discover (an included flatpak store), and install Barrier. On your other device, install Barrier: [https://github.com/debauchee/barrier](https://github.com/debauchee/barrier). 

***

### How do I transfer files to my Steam Deck?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### Preface

By default, Steam Deck formats your SD card in ext4 format, which is not readable on Windows without additional tinkering. Use one of the following methods to transfer files to your Steam Deck.

#### List of File Transfer Methods

- [Method 1: SSH](#method-1-ssh)
    - [Tutorial 1: Text](#tutorial-1-text)
    - [Tutorial 2: Video](#tutorial-2-video)
- [Method 2: DeckMTP](#method-2-deckmtp)
- [Method 3: Removable Storage Device ](#method-3-removable-storage-device)
- [Method 4: AnyDesk](#method-4-anydesk)
- [Method 5: SMB Shares](#method-5-smb-shares)

***

##### Method 1: SSH
[Back to the Top](#list-of-file-transfer-methods)

Select **one** of the two tutorials below:

* [Tutorial 1: Text](#tutorial-1-text)
* [Tutorial 2: Video](#tutorial-2-video)

Although the below guide may look lengthy, SSH is a quick and easy process to set up. Once you have it set up, you can transfer files with ease in both Desktop Mode and Game Mode, no additional storage device needed. 

***

##### Tutorial 1: Text
[Back to the Top](#list-of-file-transfer-methods)

###### Part 1 of 2: On the Steam Deck

1. Open `Konsole`
2. In Konsole, type  `passwd` and follow the prompts to set a password for the account
    1. Your password will be invisible. Press enter when you've finished, you will be prompted to type it once again as confirmation
3. In Konsole, type `sudo systemctl enable --now sshd` to both start and permanently enable the service
4. In Konsole, type `ip addr | grep inet | grep wlan0`, jot down the `###.###.##.##` number in front of `inet`

***

###### Part 2 of 2: On the Non-Steam Deck PC

Install Filezilla or WinSCP on your computer. No additional program is needed on the Steam Deck. 

WinSCP is only available on Windows: [https://winscp.net/eng/download.php](https://winscp.net/eng/download.php)

Filezilla is available on Linux, Mac, and Windows:

* Windows: [https://filezilla-project.org/download.php?platform=win64](https://filezilla-project.org/download.php?platform=win64)
* Mac: [https://filezilla-project.org/download.php?platform=osx](https://filezilla-project.org/download.php?platform=osx)

Select **one** of the two and follow the respective guide below. 

* [Option 1: How to Use Filezilla](#option-1-how-to-use-filezilla)
* [Option 2: How to Use WinSCP](#option-2-how-to-use-winscp)

***

###### Option 1: How to Use Filezilla 

1. Install FileZilla: [https://filezilla-project.org/](https://filezilla-project.org/) on your non-Steam Deck PC
    * No additional program is needed on the Steam Deck
2. Click the icon in the top left
    * <img src="https://user-images.githubusercontent.com/108900299/215377386-9b8309b2-b928-436f-8c17-d0364fbfc1be.png" height="300">
3. Click `New Site`, give it a memorable name
4. Use the following template: 
    * Protocol: `SFTP - SSH File Transfer Protocol`
    * Host: `steamdeck` or the `###.###.##.##` number you received in `Step 4` in the `On the Steam Deck` section
    * Port: Either blank or `22`
    * Logon Type: Normal
    * User: `deck`
    * Password: The password you set in `Step 2` in the `On the Steam Deck` section
    * <img src="https://user-images.githubusercontent.com/108900299/215377846-c56b35ba-6549-4f8a-a37b-f14418cd8504.png" height="300">
5. Click `Connect`
6. (Optional) To browse to your SD Card, click the `..` at the top two times, select the `run` folder, `media`, `mmcblk0p1`
7. Drag files between the two windows or use the context menu (`Right Click`) to transfer files

***

###### Option 2: How to Use WinSCP  

1. Install WINSCP: [https://winscp.net/eng/index.php](https://winscp.net/eng/index.php) on your non-Steam Deck PC
    * No additional program is needed on the Steam Deck
2. Open WinSCP and you should be prompted with WinSCP's address book
    * <img src="https://user-images.githubusercontent.com/108900299/215378920-f87386d9-1641-4fa1-9991-5a8237daeb6b.png" height="300">
    * You can also re-open this interface by clicking `New Session` in the top left
3. On the right side of the screen, use the following template: 
    * File Protocol: `SFTP`
    * Host Name: `steamdeck` or the `###.###.##.##` number you received in `Step 4` in the `On the Steam Deck` section
    * Port number: `22` or blank
    * User name: `deck` 
    * Password: The password you set in `Step 2` in the `On the Steam Deck` section
    * <img src="https://user-images.githubusercontent.com/108900299/215379408-cda464b4-f62e-417a-b615-5b05b57c6806.png" height="300">
4. Click `Save` under the `User name` box and give the site name a memorable name
    * <img src="https://user-images.githubusercontent.com/108900299/215379673-81f61afa-7f15-450b-bf2f-1ad0f2bb5c63.png" height="300">
5. Click `Login`
6. (Optional) To browse to your SD Card, click the `..` at the top two times, select the `run` folder, `media`, `mmcblk0p1`
7. Drag files between the two windows or use the context menu (`Right Click`) to transfer files

***

###### Post File Transfer

After you are finished setting up SSH and you have transferred your files, you may want to consider disabling SSH.

With a weak sudo password, leaving SSH enabled **may** be a security risk if you take your Steam Deck outside of your home and connect it to public Wi-Fi. With a strong sudo password, this risk is less apparent. Regardless, this section will cover how to disable SSH. 

Select **one** of the two and follow the respective section below. 

* [Option 1: Terminal Command](#option-1-terminal-command)
* [Option 2: Decky Loader Plugin](#option-2-decky-loader-plugin)

###### Option 1: Terminal Command

1. In Desktop Mode, enter the below command in Konsole to disable SSH 
    * `sudo systemctl disable --now sshd`
2. To re-enable SSH, enter the below command in Konsole
    * `sudo systemctl enable --now sshd`

###### Option 2: Decky Loader Plugin

Skip Steps 1-4 if you have already installed Decky Loader

1. Open `EmuDeck` on your desktop
2. Select `Power Tools` 
3. Enter your password, and click `Install PowerTools`
    * If you have not set a password, this page will prompt you to create one
4. Restart your Steam Deck
5. In Game Mode, press the `...` button, press the Socket icon
6. Click the store icon in the top right, install `System Toolbox`
7. After installing `System Toolbox`: In Game Mode, press the QAM (`...`) button, press the socket icon (Decky Loader's icon), select `System Toolbox` and disable `Remote Terminal Access`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/c3828e0a-0cb8-481b-9271-13f04150d825" height="300">
8. When you would like to transfer files again, re-enable `Remote Terminal Access`

***

#### Tutorial 2: Video
[Back to the Top](#list-of-file-transfer-methods)

Watch: [https://www.youtube.com/watch?v=F790rBfyAQM](https://www.youtube.com/watch?v=F790rBfyAQM)

***

#### Method 2: DeckMTP
[Back to the Top](#list-of-file-transfer-methods)

**Preface**

Watch: [https://www.youtube.com/watch?v=4GcbEWl12Uc](https://www.youtube.com/watch?v=4GcbEWl12Uc)

For further reading: [https://github.com/dafta/DeckMTP](https://github.com/dafta/DeckMTP)

DeckMTP is a Decky Loader plugin that allows the Steam Deck to be detected as a MTP drive (similar to a USB drive), once directly plugged into a PC via USB. (MacOS users may need the Android File Transfer App to be able to transfer files to MTP devices.)

<img src="https://user-images.githubusercontent.com/108900299/216796388-fa7c565d-3e5a-4d6a-948f-8c6a67acfe3c.png" height="400">

***

##### How to Install DeckMTP

1. Boot to desktop mode and open `Konsole`
2. In Konsole, type  `passwd` and follow the prompts to set a password for the account
    * Your password will be invisible. Press enter when you've finished, you will be prompted to type it once again as confirmation
3. Install Decky Loader by choosing one of the two following ways:
    * Install through the EmuDeck application
    * Install from the DeckyLoader Github: [https://github.com/SteamDeckHomebrew/decky-loader](https://github.com/SteamDeckHomebrew/decky-loader)
       * Press the big `Download` button at the top
4. Restart the Steam Deck
5. In Game Mode, press the QAM (`...`) button
6. Press the `Socket` icon at the bottom of the list
    * <img src="https://user-images.githubusercontent.com/108900299/216795951-4fffeb0e-a832-4b23-ad53-2f198f72426c.png" height="300">
7. In the top right, press the `Store` icon
    * <img src="https://user-images.githubusercontent.com/108900299/216795961-456cda9d-557b-4300-aec5-642ae2ef579b.png" height="300">
8. Install DeckMTP
    * <img src="https://user-images.githubusercontent.com/108900299/216795999-0777edee-9e92-4d6c-b74a-267367f23bd2.png" height="300">

***

##### How to Set up DeckMTP

DeckMTP requires enabling DRD. 

For a Youtube Video, watch: [https://www.youtube.com/watch?v=4GcbEWl12Uc](https://www.youtube.com/watch?v=4GcbEWl12Uc)

1. To enable DRD, shut down your Steam Deck
2. Enter the BIOS by holding Volume Up and Power until you hear a beep
3. Select Setup Utility
4. Select Advanced
5. Select USB Configuration
6. Select USB Dual-Role Device
7. Select DRD instead of the existing XHCI
8. Plugging your Steam Deck into a PC via USB should now make it show up as a drive


***

#### Method 3: Removable Storage Device
[Back to the Top](#list-of-file-transfer-methods)

Use a flash drive or a removable storage device that can be read on both Windows and Linux. You may need either a USB C adapter or a USB C Hub. 

***

#### Method 4: AnyDesk
[Back to the Top](#list-of-file-transfer-methods)

##### On the Steam Deck

1. Install Anydesk from Discover (Shopping Bag icon) in desktop mode
2. Install Flatseal from Discover (Shopping Bag icon) in desktop mode
3. Open Flatseal
4. On the left, select AnyDesk
5. Under `Filesystem`, toggle `All system files, filesystem=host`
    * <img src="https://user-images.githubusercontent.com/108900299/211130727-6ccad2e8-2092-4d7c-a83d-2ecdc97555d1.png" height="300">

##### On the Non-Steam Deck PC

1. Install AnyDesk on your other PC from the website: [https://anydesk.com/](https://anydesk.com/) 
2. Connect to your Steam Deck
3. Use AnyDesk's file transfer feature to transfer files between your Steam Deck and non Steam Deck PC

##### How to use AnyDesk to Transfer Files

1. Connect to your Steam Deck
2. Click the box with a right arrow at the top
    * <img src="https://user-images.githubusercontent.com/108900299/221331901-c8699d5d-18c0-40aa-9f28-1b14db691052.png" height="300">
3. Your non-Steam Deck PC will be on the left side of the screen, your Steam Deck will be on the right side of the screen, right click files on either side to `Upload` or `Download` to the respective devices

##### Tips

* Your SD Card path is `/run/media/...`. To navigate to your SD Card, click the `..` dots at the top until you are in the `/` directory. You will see the `run` folder, you can navigate to the remaining folders from here

***

#### Method 5: SMB Shares
[Back to the Top](#list-of-file-transfer-methods)

Pick a tutorial: 

* Watch: [https://www.youtube.com/watch?v=x4_Sexd1UAw](https://www.youtube.com/watch?v=x4_Sexd1UAw)
* Read (Verbose): [https://www.reddit.com/r/SteamDeck/comments/wdyqya/the_semiultimate_guide_to_smb_shares_on_steam_deck/](https://www.reddit.com/r/SteamDeck/comments/wdyqya/the_semiultimate_guide_to_smb_shares_on_steam_deck/)
* Read (Succinct): [https://www.reddit.com/r/SteamDeck/comments/tfjq1m/how_to_connect_to_smb_shares/iosxjcm/](https://www.reddit.com/r/SteamDeck/comments/tfjq1m/how_to_connect_to_smb_shares/iosxjcm/)

***

### How do I transfer my initial install of EmuDeck to my SD Card and Vice Versa?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### Preface

When you install EmuDeck, EmuDeck prompts for an install location, either the SD Card or the Internal SSD. This install location contains the directory for your ROMs, BIOS, and storage files. Regardless of the location you choose, EmuDeck will install its suite of emulators and tools onto your internal SSD. 

However, you may decide to buy an SD Card and want to move that install location from your internal SSD to your SD card. Or you may want to move all of your files back to the internal SSD. 

**Here's how:**

***

#### Transferring from the Internal SSD to SD Card

_Note: If you haven't already, format your SD card in game mode._

1. Switch to Desktop Mode.
2. Locate the `/home/deck` folder, right click the `Emulation` folder, click cut.
    1. You will not see `deck` in the file path, this folder is the `home` folder for the user, `deck`.
3. Open the SD card, right click, press paste. 
    1. To locate this file path, either: 
    2. Open Dolphin (file manager), click Primary on the left.
    3. Open Dolphin (file manager), click rootfs on the left, follow this path, `/run/media/SDCARDNAME/`
        1. Your SD Card may be named: `mmcblk0p1`
4. Open `EmuDeck` on your desktop. If you don't have this shortcut, you can also re-download it from EmuDeck's website: [http://www.emudeck.com/](http://www.emudeck.com/).
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/196099299-afb63d83-5434-4822-bd6c-8d93d76cadcf.png" height="60"> 
5. Re-run the EmuDeck installer, choose Custom Mode. 
    1. This installer will not delete any of your files. The EmuDeck installer is designed to be re-run.
6. Select your SD card. 
7. When you reach the `Emulators for Steam Deck` page on the EmuDeck installer, make sure to select everything that you used previously to ensure that all of your emulators and tools are properly configured with your SD Card. 
    1. <img src="https://user-images.githubusercontent.com/108900299/219220123-0e911910-883d-4a2b-b46d-73b55378636a.png" height="300">
8. When you reach the `Update emulator's configurations` page on the EmuDeck installer, make sure to select everything that you used previously to ensure that all of your emulators and tools are properly configured with your SD Card. 
    1. <img src="https://user-images.githubusercontent.com/108900299/208755070-937a5ced-b6d9-4a3e-92fe-142c63acd272.png" height="300">
9. Re-run Steam ROM Manager to update the shortcuts for your emulators, EmulationStation-DE, and ROMs.
    1. Even if you only use Steam ROM Manager to add emulators or EmulationStation-DE to your Steam Library, make sure to re-run it to ensure that the shortcuts are properly updated. 
10. Your EmuDeck setup will now officially be transferred over to your SD card. 

***

#### Transferring from SD Card to the Internal SSD

1. Switch to desktop mode.
2. Open the SD card, right click the `Emulation` folder, click cut. 
    1. To locate this file path, either: 
    2. Open Dolphin (file manager), click Primary on the left.
    3. Open Dolphin (file manager), click rootfs on the left, follow this path, `/run/media/SDCARDNAME/`
        1. Your SD Card may be named: `mmcblk0p1`
2. Locate the `/home/deck` folder, click paste.
    1. You will not see `deck` in the file path, this folder is the `home` folder for the user, `deck`.
4. Open "EmuDeck" on your desktop. If you don't have this shortcut, you can also re-download it from EmuDeck's website: [http://www.emudeck.com/](http://www.emudeck.com/).
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/196099299-afb63d83-5434-4822-bd6c-8d93d76cadcf.png" height="60"> 
5. Re-run the EmuDeck installer, choose Custom Mode. 
    1. This installer will not delete any of your files. The EmuDeck installer is designed to be re-run.
6. Select the internal SSD. 
7. When you reach the `Emulators for Steam Deck` page on the EmuDeck installer, make sure to select everything that you used previously to ensure that all of your emulators and tools are properly configured with your internal SSD. 
    1. <img src="https://user-images.githubusercontent.com/108900299/219220123-0e911910-883d-4a2b-b46d-73b55378636a.png" height="300">
8. When you reach the `Update emulator's configurations` page on the EmuDeck installer, make sure to select everything that you used previously to ensure that all of your emulators and tools are properly configured with your internal SSD. 
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/208755070-937a5ced-b6d9-4a3e-92fe-142c63acd272.png" height="300">
9. Re-run Steam ROM Manager to update the shortcuts for your emulators, EmulationStation-DE, and ROMs.
    1. Even if you only use Steam ROM Manager to add emulators or EmulationStation-DE to your Steam Library, make sure to re-run it to ensure that the shortcuts are properly updated. 
10. Your EmuDeck setup will now officially be transferred over to your internal SSD. 

***

### How do I change the Steam Input Controller Profile?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### Preface 

EmuDeck comes with a few Steam Input profiles to make hotkeys easier to use in a few emulators. If an emulator does not have a Steam Input Profile, make sure you're on `Gamepad with Joystick Trackpad`, otherwise some controls may not work.

EmuDeck comes with Steam Input Profiles for the following emulators:

* Cemu
    * The Steam Input Profile is necessary to switch screens
* Citra
    * The Steam Input Profile is necessary to switch screens
* DuckStation
* melonDS
* mGBA
* PPSSPP
* RMG

#### Changing Steam Input Profiles

In Game Mode, single click the game you would like to change the Steam Input Profile for, and click the `Controller Icon` on the right of the screen. Click the layout (whatever name it is currently set to) at the top, and you will see a drop-down menu. When playing a PSX, 3DS, or Wii U Game, switch to the respective Steam Input Profile.

For a visual, watch the following GIF (DuckStation is being used as an example):

<img src="https://user-images.githubusercontent.com/108900299/194612525-670e56a1-a16a-4dbf-a03f-85d14e7f7b76.gif?raw=true"/>


***

### How to Verify ROMs
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### How to Verify a ROM Successfully Transferred 

Sometimes, data loss or corruption can occur when you transfer ROMs to your Steam Deck. You can verify that the ROM successfully transferred by checking its MD5 Checksum. An MD5 Checksum is a 32-character hexadecimal number that is computed on a file. If the MD5 checksum on both the file on the Steam Deck and the original PC is an exact match, the file transferred successfully. If they do not match, the file is potentially corrupt. You will need to correct or adjust how you transfer files. 

**Here's How**

**On the Steam Deck**

1. Right click the ROM
2. Click Properties
    1. <img src="https://user-images.githubusercontent.com/108900299/210105434-0ed44a57-c686-462b-afe9-a5ea52faeab3.png" height="300">
3. Click the Checksums tab
4. Click `Calculate` to the right of `MD5`
    1. Wait, it may take a few moments
    2. <img src="https://user-images.githubusercontent.com/108900299/210106031-f77bd8ef-c0ab-44df-8603-75a502f81934.png" height="300">

**On the non-Steam Deck PC**

* **Windows:** 
    * Download: [https://github.com/gurnec/HashCheck/releases](https://github.com/gurnec/HashCheck/releases)
    * Instructions: [https://steemit.com/utopian-io/@wangwenjing/how-to-use-hashcheck-in-windows](https://steemit.com/utopian-io/@wangwenjing/how-to-use-hashcheck-in-windows)
* **Mac:** [https://ss64.com/osx/md5.html](https://ss64.com/osx/md5.html)
* **Linux (Command-line):** [https://man7.org/linux/man-pages/man1/md5sum.1.html](https://man7.org/linux/man-pages/man1/md5sum.1.html)

#### How to Verify a ROM is Valid

For one reason or another, your ROM may be corrupt and may not work properly. One way to confirm that you have a valid ROM is by comparing it to the ROM page on [redump.org](http://redump.org). Redump is an internet community "dedicated to collecting precise and accurate information about every video game ever released". You can validate your ROM by comparing its MD5 Checksum, a 32-character hexadecimal number that is computed on a file, to the MD5 Checksum on [redump.org](http://redump.org). 

**Here's How**

#### How to Find your MD5 Checksum

**Note:** `Vampire Night`, for the Playstation 2 is being used as an example in the below guide. 

1. Right click the ROM
2. Click Properties
      * <img src="https://user-images.githubusercontent.com/108900299/222926543-2411c324-fd05-43db-91ae-0842bcc7989c.png" height="300">
3. Click the Checksums tab
4. Click `Calculate` to the right of `MD5`
      * Wait, it may take a few moments
      * <img src="https://user-images.githubusercontent.com/108900299/222926493-df0a8680-ba47-497c-a372-25905943d412.png" height="300">
      * Note down the MD5 Checksum for the next section

#### How to Compare your MD5 Checksum to Redump

1. Open redump.org, and search for your ROM 
     * For example, Vampire Night's page: [http://redump.org/disc/13152/](http://redump.org/disc/13152/)
2. Note down the MD5 Checksum on the redump.org page and compare it to your ROM
     * Using Vampire Night as an example:
         * MD5 Checksum on the ROM: <img src="https://user-images.githubusercontent.com/108900299/222926493-df0a8680-ba47-497c-a372-25905943d412.png" height="300">
         * Redump's MD5 Checksum: <img src="https://user-images.githubusercontent.com/108900299/222926621-b1b64ee7-0ed4-4a37-b22c-109c851bd836.png" height="300">
3. The Vampire Night ISO MD5 Checksum matches to the MD5 Checksum on the redump page, meaning the ROM is valid

***

### Why is my emulator or game muted?
[Back to the Top](#frequently-asked-questions-table-of-contents)

There is no one known reason why an emulator or ROM (run through an emulator) can accidentally be muted. However, the fix is simple.

**Tutorial**

1. In Desktop Mode, open the emulator
    * Example: If you are playing a PS2 ROM, open PCSX2
2. Either temporarily turn off the `Start in Fullscreen` feature or make sure you have a way to use `Alt` + `Tab`
    * You can bind `Alt` + `Tab` to a back bumper, plug in a keyboard, or use Anydesk to switch out of the emulator
3. Launch a game
4. In the taskbar, press the audio icon, select the `Applications` tab, in the list, you should see your emulator with a muted speaker icon
    * <img src="https://user-images.githubusercontent.com/108900299/216749000-600e9792-4f15-449f-9eaf-aba6bc0c6465.png" height="300">
5. Click the speaker icon to unmute the emulator
    * Make sure to turn fullscreen back on if you turned it off
6. This fix applies to any game you launch through that emulator


***

### For systems with multiple emulators, how do I select which emulator to use?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### Steam ROM Manager

These systems will have multiple parsers, each corresponding to a different emulator or RetroArch core. For example: PSX can be played through DuckStation (Standalone), SwanStation, or Beetle PSX. If you prefer to use DuckStation (Standalone) for PSX, enable the Sony PlayStation - DuckStation parser and make sure the SwanStation and Beetle PSX parsers are disabled

#### EmulationStation-DE

These systems will have a set default. However, you can change which emulator or RetroArch core is used:

1. In EmulationStation-DE, press the Start button
2. Scroll down and select Other Settings
3. Select Alternative Emulators
4. Scroll down to the system you would like to configure, press B, and select your preferred emulator


***

## EmuDeck Tips and Tricks
[Back to the Top](#frequently-asked-questions-table-of-contents)

*** 

### How do I find .var, .config, or any folder with a period in front?
[Back to the Top](#frequently-asked-questions-table-of-contents)

**Tutorial**

1. Open Dolphin (the file manager with a folder icon).
2. In Dolphin (the file manager), press the hamburger button in the top right, `☰`.
3. Select `Show Hidden Files`.
4. You should now see a handful of folders with reduced transparency, including `.var` and `.config`. 

**Visual Reference (View Hidden Files - Off):** <img src="https://user-images.githubusercontent.com/108900299/194964848-c3ae95e9-1a11-448b-86df-660fe46cfbf3.png" height="300">

**Visual Reference (View Hidden Files - On):** <img src="https://user-images.githubusercontent.com/108900299/194965352-c7491487-85e2-406d-9e79-48a08b5c8806.png" height="300">

***

### How do I reset an emulator's configurations?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Sometimes after installing EmuDeck, you may notice an emulator's configurations were not set properly or you tweaked something on accident and you do not remember the default settings. 

You may reset an emulator's configurations in the `Manage Emulators` page. 

**Tutorial**

1. Open EmuDeck on your desktop.
2. Click the `Manage Emulators` button.
3. Select which emulator configurations you would like to reset in the drop-down menu.
4. Click `Reset configuration`, wait a moment.
    1. Using PCSX2 as an example: <img src="https://user-images.githubusercontent.com/108900299/196877825-0a4fd76f-bed0-487a-95d5-5454e631f920.png" height="200">
5. Your selected emulator has been reset.


***

### How do I navigate to my SD Card through an emulator's menu?
[Back to the Top](#frequently-asked-questions-table-of-contents)

For some emulators, you may need to navigate to your SD Card to install updates/DLC or locate a file of some sort for the emulator. On Linux, your SD card is a file path, so navigating there through the menu will look different. 

**Using Yuzu as a Reference:**

1. Open Yuzu.
2. Click `Files`, `Install files to NAND`.
3. Click `Computer` on the left.
4. Your SD Card path is `/run/media/mmcblk0p1`.
    1. `mmcblk0p1` is the default name of the SD Card when formatted by the Steam Deck.
5. You will now see your `Emulation` folder and you can proceed to locate your files. 

For some emulators, you may need to click `Other Locations` first before seeing `Computer`. 

Visual Reference (Ryujinx):
* `Other Locations`, `Computer`: <img src="https://user-images.githubusercontent.com/108900299/197047851-c59bb1ce-f064-4111-8036-065799fbbfbd.png" height="300">
* `mmcblk0p1` (your SD Card): <img src="https://user-images.githubusercontent.com/108900299/197048116-4e762160-a5e0-48df-887c-24129123dffb.png" height="300">

Visual Reference (Yuzu):
* `Computer`: <img src="https://user-images.githubusercontent.com/108900299/197048223-941a5f71-39db-4262-b89a-444e892f057d.png" height ="300">
* `mmcblk0p1` (your SD Card): <img src="https://user-images.githubusercontent.com/108900299/197048383-1e2c7101-da86-4c33-8065-3f734fcfbdf9.png" height="300">

Visual Reference (Dolphin):
* `Other Locations`, `Computer`: <img src="https://user-images.githubusercontent.com/108900299/197048561-b791cd7f-34f9-4971-89a8-69c523098c6c.png" height="300">
* `mmcblk0p1` (your SD Card): <img src="https://user-images.githubusercontent.com/108900299/197048683-623c38ab-f2fd-4097-849a-77f62040a2d9.png" height="300">

Visual Reference (RPCS3):
* `rootfs`: <img src="https://user-images.githubusercontent.com/108900299/197050154-f026381f-093d-45c6-8fc3-e9674ee2f8dd.png" height="300">
* `mmcblk0p1` (your SD Card): <img src="https://user-images.githubusercontent.com/108900299/197050241-662e7d70-c99e-47e4-b6fe-13c51200a2db.png" height="300">


***

### Why are my emulators stuttering? How do I improve emulator performance?
[Back to the Top](#frequently-asked-questions-table-of-contents)

There may be a number of reasons for this, but your first debugging tool should be to ensure that both the frame limiter and the refresh rate are off. Consider turning off half rate shading if you had it previously on. Half rate shading may cause visual glitches as well. 

To find these options, press the QAM ("..." button), press the battery icon, press advanced view. 

**Note:** It's a good idea to use per game profiles if you intend on changing any of these settings. 

***

### Does EmuDeck have a game compatibility list?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Yes!

Manacharge, an EmuDeck community member, put together a Google Form and a Google Spreadsheet to keep track of how emulated games run on the Steam Deck. 

You can contribute to the community games database here: [https://docs.google.com/forms/d/e/1FAIpQLScavGFOuGpEVpyHdRVcPjdrCEquG9ItBaloa8Q0XaiNlu_Afg/viewform](https://docs.google.com/forms/d/e/1FAIpQLScavGFOuGpEVpyHdRVcPjdrCEquG9ItBaloa8Q0XaiNlu_Afg/viewform).

You can view the community database using one of the following two links: 

* [https://docs.google.com/spreadsheets/d/1fRqvAh_wW8Ho_8i966CCSBgPJ2R_SuDFIvvKsQCv05w/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1fRqvAh_wW8Ho_8i966CCSBgPJ2R_SuDFIvvKsQCv05w/edit?usp=sharing)
* [https://brantje.github.io/emudeck-compatibility-list/](https://brantje.github.io/emudeck-compatibility-list/)

***

### How do I install Power Tools and Deckyloader?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Visit the [Power Tools](../../emudeck-application/steamos/emudeck-application-101.md#power-tools) section to learn how to both install Power Tools and optimize performance using Power Tools. 

***

### How do I install SteamDeckGyroDSU?
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### Preface
SteamDeckGyroDSU is a tool that allows some emulators to use Steam Deck's motion control/gyro. 

SteamDeckGyroDSU's website: [https://github.com/kmicki/SteamDeckGyroDSU](https://github.com/kmicki/SteamDeckGyroDSU)

**Which emulators can use SteamDeckGyroDSU?** 

* [Dolphin (Gamecube and Wii)](https://dolphin-emu.org/)
* [Citra (3DS)](https://citra-emu.org/)
* [Cemu (Wii U)](https://cemu.info/)
* [Yuzu (Switch)](https://yuzu-emu.org/) 
* [Ryujinx (Switch)](https://ryujinx.org/)


Visit the [SteamDeckGyroDSU](../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu) section to learn how to install and utilize SteamDeckGyroDSU. 

***

### How do I manage ROMs with multiple discs?
[Back to the Top](#frequently-asked-questions-table-of-contents)

[How to Manage ROMs with Multiple Discs](../../file-management/steamos/file-management.md#how-to-manage-roms-with-multiple-discs)

***

### How do I link folders or files?
[Back to the Top](#frequently-asked-questions-table-of-contents)

Use symlinks! 

[How to Use Symlinks](../../file-management/steamos/file-management.md#how-to-create-a-symlink)


***

### Steam ROM Manager FAQ
[Back to the Top](#frequently-asked-questions-table-of-contents)

***

#### Where Did Steam ROM Manager Go?
[Back to the Top](#frequently-asked-questions-table-of-contents)

The latest EmuDeck update removed all of its shortcuts from your desktop except for EmuDeck itself. These shortcuts included: Steam ROM Manager, an Emulator Updater, and an uninstaller.

The current update moves all of these icons directly into EmuDeck itself. After you run the new EmuDeck update for the first time, open it again, and you will find a `Steam ROM Manager` button.

In addition to the above, you will also find Steam ROM Manager as a shortcut in the bottom left menu, in desktop mode (Steam Deck icon). 

***

#### Help, I just opened Steam ROM Manager and I have no controls!
[Back to the Top](#frequently-asked-questions-table-of-contents)

When you open Steam ROM Manager, it will exit out of Steam. Since your controls are tied to Steam being open, your controls will revert to `Lizard Mode`. You can use `L2` to right click, `R2` to left click, and the `Right Trackpad` to move the mouse.

Alternatively, you can either use a mouse/keyboard (Bluetooth or through a USB-C Hub) or remote into your Steam Deck.

Learn how to remotely control your Steam Deck: #how-do-i-remotely-control-my-steam-deck

***

### How do I use DeckyControls?
[Back to the Top](#frequently-asked-questions-table-of-contents)

DeckyControls is a plugin for Decky Loader, which allows you to view EmuDeck's hotkeys in Game Mode. 

Installation Page: <img src="https://user-images.githubusercontent.com/108900299/208507103-f8311344-a12d-4927-a2b4-8ca84d0a5c6b.png" height="300">

After installing `DeckyControls`, restart your Steam Deck (Returning to Game Mode is not equivalent to a restart). 

**How to Use DeckyControls**

1. In Game Mode, press the `...` (QAM), press the `Socket` Icon
2. Select `EmuDeck Hotkeys`
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/208507696-fb7281a7-386e-4e5c-97f1-192591ccee64.png" height="300">
3. Select a system
    1. Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/208507783-c920190d-b8ea-4c5f-8cba-b9b1d43095b3.png" height="300">
4. A page with the hotkeys for that system will pop up on your screen
    1. Visual Reference (Using Citra as an example): <img src="https://user-images.githubusercontent.com/108900299/208507849-e9426d2b-ab3d-4e95-b7fc-be4fa880fec4.png" height="300">

**Tips** 

* Some systems have multiple tabs for hotkeys. For example, Dolphin has a `Hotkeys` tab and a `Hotkeys - Expert` tab. 

***

## Common Words and Acronyms
[Back to the Top](#frequently-asked-questions-table-of-contents)

**Common Words**

* Log
   * A log file is a computer-generated data file. When you install EmuDeck, a log is automatically created recording general information about the install, errors, or any problems that may have occurred during the install. The log contains important information about each pieces of the EmuDeck install. The EmuDeck log can be found here: `/home/deck/emudeck/emudeck.log`

* MD5
> MD5 works by taking pieces of the original file(the number of pieces overall is not important), applying mathematical functions to it, and adding the result to the hash. When all of the blocks have been processed, your final hash is the result.
> Because of the design of MD5, a change in any block, no matter how small, is propogated to the other blocks during the hashing process. So even a single bit change is going to effect the hash.
> MD5 does have some rare occasions where two different files produce the same hash. However, these occasions(called collisions) are very very rare. 

***

**Common Acronyms**

* ROM 
     * A software image of read-only memory, of a game cartridge, used in emulation. Commonly used for ISOs as well. 
* BIOS
> BIOS is actually an acronym standing for Basic Input/Output System. It is a term used to refer to the set of computer instructions that are built into the system which initialises the hardware when it's switched on.
> At a very basic level, emulators 'pretend' to be the system that they are emulating. In order to do this, they must still "initialise" the fake hardware so that the Operating System/Program (in this case, the game you're playing) - can still access stuff like the buttons, speakers and the screen in order to make things happen.
> The emulator acts as a go-between: it accepts the game's commands to the original hardware, translates it into something your current hardware can interpret, and back again. For example: play a sound or music, draw a character to screen, or accept your input from pressing buttons. 
* SRM 
    * Steam ROM Manager, [Steam ROM Manager](../../tools/steamos/steam-rom-manager.md) and [https://github.com/SteamGridDB/steam-rom-manager](https://github.com/SteamGridDB/steam-rom-manager)
* ES-DE
    * EmulationStation-DE, [EmulationStation-DE](../../tools/steamos/emulationstation-de.md) and [https://es-de.org/](https://es-de.org/)

***

**Sources**

* [https://en.wiktionary.org/wiki/ROM](https://en.wiktionary.org/wiki/ROM)
* [https://gaming.stackexchange.com/questions/264229/what-does-a-bios-file-do-in-an-emulator-like-myboy](https://gaming.stackexchange.com/questions/264229/what-does-a-bios-file-do-in-an-emulator-like-myboy)
* [https://old.reddit.com/r/explainlikeimfive/comments/pend0/eli5_checksums_md5_files/](https://old.reddit.com/r/explainlikeimfive/comments/pend0/eli5_checksums_md5_files/)

***

## How to Debug
[Back to the Top](#frequently-asked-questions-table-of-contents)

***

### Understanding What You Are Using
[Back to the Top](#frequently-asked-questions-table-of-contents)

#### EmuDeck

EmuDeck is the installer. It installs "stuff" for you, including emulators, EmulationStation-DE, Steam ROM Manager, and a few other tools. 

#### Front-Ends

EmulationStation-DE and Steam are the two primary front-ends that you can use to launch your ROMs. Steam ROM Manager adds your ROMs to Steam, or you can launch your ROMs entirely from EmulationStation-DE. EmulationStation-DE and the shortcuts created by Steam ROM Manager in Steam are not typically directly related to the settings configured in the emulators. 

For example, if you are running a Gamecube game through a shortcut created by Steam ROM Manager or EmulationStation-DE, you are still using the Dolphin emulator to run that Gamecube game. You are not running the Gamecube game through Steam, EmulationStation-DE, or EmuDeck. Steam (through Steam ROM Manager created shortcuts) and EmulationStation-DE are two front-ends that launch your game for you, but, have little to no relation to the actual execution of the game. That is all dependent on the emulator being launched by these two front-ends.

#### Emulators

Using a front-end like Steam shortcuts created by Steam ROM Manager or EmulationStation-DE means you are launching an emulator. If you have issues while in game, typically you want to debug what is going on with the emulator.

For a full list of emulators installed by EmuDeck and their associated websites: [What does EmuDeck install?](#what-does-emudeck-install)

Let's run through a few examples.

#### Examples

**Debugging Using Incomplete Information**

* "I am using EmuDeck to launch my games."
    * Remember, EmuDeck is only an installer. Once it finishes installing its suite of emulators and tools, it has no bearing on the actual launching of the ROM or the emulator.

* "I am using EmulationStation-DE to launch my games."
    * The front-end can be helpful information to include and should be included when you're requesting support or understanding how to debug your game. However, you also need to understand what EmulationStation-DE is specifically launching, to then open your game. If you are playing a Gamecube game, EmulationStation-DE is launching the Dolphin emulator to play that Gamecube game. 
    * If you understand what emulator your ROM is using, then you can try opening that emulator on its own to see if the emulator can provide additional feedback on what may be wrong with the ROM. 

**Debugging Using Somewhat Complete Information**

* "I am using EmulationStation-DE to launch my games. I am trying to open a Gamecube game (Dolphin emulator), Super Mario Sunshine, through EmulationStation-DE, but it is not launching."
    * This provides a lot more information, but to fully debug what's going on, you will want to try launching your ROM through the emulator, in addition to the front-end. You can either use Steam ROM Manager to add emulators to Game Mode or you can launch emulators in Desktop Mode (make sure to hold the start button to switch between desktop and gamepad configurations) and test your ROM from the emulator directly. For the most part, emulators can provide important error messages that can alert you to what's specifically wrong with your ROM.

**Debugging Using Complete Information**

* "I am using EmulationStation-DE to launch my games. I am trying to open a Gamecube game (Dolphin emulator), Super Mario Sunshine, through EmulationStation-DE, but it is not launching. I tried opening Dolphin, in Desktop Mode, to play my ROM and Dolphin said my ROM was corrupt."
    * This rounds out working through each aspect of what you are using to launch your ROM and provides you with information that can be used to debug what's going on. In some cases, you may not have set the emulator up fully (in the case of Yuzu, Ryujinx, and RPCS3), and need to read through documentation to fully set up the emulator before you can start playing. 


***

### Debugging Using Steam Shortcuts
[Back to the Top](#frequently-asked-questions-table-of-contents)

Testing shortcuts created by Steam ROM Manager in a terminal can provide you with output information. This information may be valuable in debugging specifically what's wrong with your ROM, in the case of corruption/file error, or some sort of setting gone awry in the emulator. 

***

#### Retrieving the Steam Shortcut

1. In `Desktop Mode`, open `Steam`
2. Select the game you are debugging
3. Click the `Gear` icon
    1. <img src="https://user-images.githubusercontent.com/108900299/212619919-ec4c720a-64bc-47fe-8265-3447e1e7c735.png" height="300">
4. Click `Properties`
5. Copy the `Target`, `Start In`, and `Launch Options` fields entirely
    1. The `Launch Options` field may be blank, skip it if it the box is empty
    1. <img src="https://user-images.githubusercontent.com/108900299/212620245-87056dcf-0e1d-462a-a58b-adfd57739e09.png" height="300">
6. In the taskbar, click the `Steam` icon in the bottom left to open the Applications Launcher, open `Kate`, or a text editor of your choice
7. Paste the `Target`, `Start In`, and `Launch Options` fields here
    1. <img src="https://user-images.githubusercontent.com/108900299/212620438-2758b7b5-6a82-40a5-a7ae-441347028fd1.png" height="300">
8. Using the Shortcut:
    * If you are receving support through EmuDeck's Discord or Subreddit, take a photo of the shortcut in `Kate`, using your phone or however you usually take photos and share it with the person providing you support
    * [If you are debugging on your own](#if-you-are-debugging-on-your-own)

#### Using the Steam Shortcut

Pick one of the below:

##### If You Are Receiving Support through EmuDeck's Discord or Subreddit

1. Take a photo of the shortcut in `Kate`, using your phone or however you usually take photos
   - You can zoom in to make it easier to read
2.  Share it with the person providing you support

##### If You Are Debugging On Your Own

1. Paste the command into `Konsole`  
    - If you are using RetroArch, add a `-v` before the `-L` in the shortcut
    - Example: 
    - Original Shortcut: `"/usr/bin/flatpak" run org.libretro.RetroArch -L /gambatte_libretro.so "/run/media/mmcblk0p1/Emulation/roms/gb/Super Mario Land (World) (Rev 1).gb"`
    - Debugging Shortcut: `"/usr/bin/flatpak" run org.libretro.RetroArch -v -L /gambatte_libretro.so "/run/media/mmcblk0p1/Emulation/roms/gb/Super Mario Land (World) (Rev 1).gb"`
    - Pasting the shortcut into `Kate` will make it easier to edit the shortcut for debugging purposes
2. Read the error, and see if it is providing valuable information. If it is an error code or something you do not understand, Google the error outputted

***

### Debugging by Resetting Configurations
[Back to the Top](#frequently-asked-questions-table-of-contents)

A valuable part of the EmuDeck application is a feature to reset emulators and Steam ROM Manager to EmuDeck's defaults. Resetting will revert global configurations but keep any configurations made on a per-game level. Uninstalling EmuDeck is almost never required to debug. 

To reset an emulator's configurations, switch to Desktop Mode, open EmuDeck and open the `Manage Emulators` page. 

**Tutorial**

1. Open EmuDeck on your desktop.
2. Click the `Manage Emulators` button.
3. Select which emulator configurations you would like to reset in the drop-down menu.
4. Click `Reset configuration`, wait a moment.  
    1. Using PCSX2 as an example: <img src="https://user-images.githubusercontent.com/108900299/196877825-0a4fd76f-bed0-487a-95d5-5454e631f920.png" height="200">
5. Your selected emulator has been reset.


***

### Debugging Through the EmuDeck Log
[Back to the Top](#frequently-asked-questions-table-of-contents)

The EmuDeck log can contain valuable information about why a certain EmuDeck feature is not working as expected. If you are receiving support through EmuDeck's Discord or Subreddit, you may be asked to share the log so the other individual can read it and figure out what is wrong. This section will go over how to both retrieve and share the log file.

***

#### How to get the EmuDeck Log

##### Method 1

1. In `Desktop Mode`, open the EmuDeck application
2. Click `Fetch Log File`
3. Share the URL with the person providing you support 

##### Method 2

1. Open `/home/deck/emudeck`
2. Right click `emudeck.log`, click `Share --> Pastebin...`
    * It may appear blank, you can see the full log by clicking the `raw` button on the Pastebin page
3. Share the Pastebin URL with the person providing you support
    * If you do not have a way of sharing URLs easily, share the alphanumerical string at the end of the URL with the person providing you support
        * You may need to type this manually, however the alphanumerical string is fairly short

***

#### How to get the EmuDeck AppImage Log

1. Open `/home/deck/emudeck`
2. Right click `EmuDeck.AppImage.log`, click `Share --> Pastebin...`
    * It may appear blank, you can see the full log by clicking the `raw` button on the Pastebin page
3. Share the Pastebin URL with the person providing you support
    * If you do not have a way of sharing URLs easily, share the alphanumerical string at the end of the URL with the person providing you support
        * You may need to type this manually, however the alphanumerical string is fairly short

*** 