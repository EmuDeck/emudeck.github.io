# Tools and Guides, learn the tricks of the emulation trade!

***

[TOC]

***

## Tools

***

### How to Set Up SyncThing

[SyncThing](https://syncthing.net/) is a free self hosted "cloud" solution. There are limitations, the biggest here with the steam deck and the way EmuDeck moves/renames folders and the use of symlinks which is a “virtual file or folder” that can point to another. This is VERY nice, but due to the nature of differing filesystems, there is a reason SyncThing does not support this, and this tutorial avoids symlinks. Emudeck does make a few changes where syncing is not as straightforward as it could be, simply because the devs changed the default folder via the emulator. PCSX2 savestates and memcard folders are not only named differently from default but also moved from their default directory.
 
On the PC/Mac end, you will want to setup SynctThing to the corresponding location which will differ for each user. Just use your head, and would be wise to copy the same `Ignore Patterns`

Ryujinx and Yuzu, I find it easiest to share the entire `NAND` (Yuzu) / `User` (Ryujinx) so that the user ID is the same on your OTHER device, and if the save is locked to an ID, you still have access to it. This does mean, before setting up Syncthing, BACKUP BACKUP BACKUP! Choose your Syncthing `File Versioning` as desired. Some systems/games may save often (IE Nintendo Switch) causing more overhead or even problems with a file versioning choice. 

**Steam Deck Syncthing paths and Ignore Patterns:**

MAME SaveData:
    
    path="/home/deck/.mame"
    Ignore Patterns
    // DO NOT IGNORE
    !/nvram
    !/sta
    // IGNORE
    *
    .DS_Store

Flycast SaveData:
    
    path="/run/media/mmcblk0p1/Emulation/saves/flycast/saves"

DuckStation MemCards:
    
    path="/run/media/mmcblk0p1/Emulation/saves/duckstation/saves"

RetroArch SaveData: 
    
    path="/home/deck/.var/app/org.libretro.RetroArch/config/retroarch"
    Ignore Patterns
    // DO NOT IGNORE
    !/states
    !/saves
    // IGNORE
    *
    .DS_Store

Ryujinx SaveData:

    path="/home/deck/.config/Ryujinx/bis/user/"

RPCS3 SaveData:
    
    path="/run/media/mmcblk0p1/Emulation/saves/rpcs3/saves"

Dolphin SaveData:

    path="/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu
    Ignore Patterns
    // DO NOT IGNORE
    !/GC
    !/Wii
    !/GBA
    !/states
    !/StateSaves
    // IGNORE
    *
    .DS_Store

PrimeHack SaveData:
    
    path="/home/deck/.var/app/io.github.shiiion.primehack/data/dolphin-emu"
    Ignore Patterns
    // DO NOT IGNORE
    !/GC
    !/Wii
    !/GBA
    !/states
    !/StateSaves
    // IGNORE
    *
    .DS_Store

PPSSPP SaveData

    path="/home/deck/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP"
    Ignore Patterns
    // DO NOT IGNORE
    !/PPSSPP_STATE
    !/SAVEDATA
    // IGNORE
    *
    .DS_Store

Citra SaveData:

    path="/home/deck/.var/app/org.citra_emu.citra/data/citra-emu"
    Ignore Patterns:
    // DO NOT IGNORE
    !/cheats
    !/nand
    !/sdmc
    !/sysdata
    // IGNORE
    *
    .DS_Store

PCSX2 SaveStates:

    path="/run/media/mmcblk0p1/Emulation/saves/pcsx2/states"

PCSX2 MemCards:

    path="/run/media/mmcblk0p1/Emulation/saves/pcsx2/saves"

Yuzu NAND:

    path="/run/media/mmcblk0p1/Emulation/storage/yuzu/nand/"

![Syncthing image](https://oomsgfx.com/misc/Posts%20on%20Forums/Computer/SD_Syncthing_Example.png)

**Permissions:**

Syncthing will need access to any folder in `~/.var`
Install then open *FlatSeal* (A Permissions Editor with nice GUI, can be downloaded/installed via Discover in desktop mode)

Open Flatseal and click on Synching GTK>Filesystem>Other Files

    ~/.var/app/io.github.shiion.primehack/data/dolphin-emu
    ~/.var/app/org.citra_emu.citra/data/citra-emu
    ~/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu
    ~/.var/app/org.libretro.RetroArch/config/retroarch
    ~/.var/app/org.ppsspp.PPSSPP/config/ppsspp/PSP

Flatseal example via Steam Deck:

![Flatseal image](https://oomsgfx.com/misc/Posts%20on%20Forums/Computer/syncthing-flatseal.png)

**Start Syncthing Automatically:**

Quit the Syncthing Daemon

Open Konsole and type 

    nano ~/.config/systemd/user/syncthing.service

Input this text:
    
    [Unit]
    Description=Syncthing

    [Service]
    Type=simple
    ExecStart=flatpak run --command=syncthing me.kozec.syncthingtk
    Restart=on-failure
    RestartSec=1
    SuccessExitStatus=3 4

    [Install]
    WantedBy=default.target

Save by typing the key command: Control O and pressing enter to confirm.

Continue in Konsole and type:

    systemctl --user enable syncthing

    systemctl --user start syncthing

If you wish to disable Syncthing starting @ launch:
   
    systemctl --user stop syncthing

    systemctl --user disable syncthing

If you use Decky, change the syncthing GUI port so it does not conflict to port 8384
![Syncthing Port](https://oomsgfx.com/misc/Posts%20on%20Forums/Computer/Syncthing%20Port%20Change.png)

**or** run this command via Konsole:

    systemctl --user stop syncthing

    sed -i 's/<address>127\.0\.0\.1:8080<\/address>/<address>127.0.0.1:8384<\/address>/' ~/.var/app/me.kozec.syncthingtk/config/syncthing/config.xml

    systemctl --user start syncthing


Anyway, now with this, you have a roadmap to sync anything else that you desire! As to other non-console saves, remember some are not compatible between systems: lookup linux Tomb Raider vs Windows Tomb Raider. Now smack the devs heads for that one.
Now if I can figure out a way to share prefixes between non-steam games so that I can sync C:Users/user/Appdata etc etc..... then all my non-steam games do not need individual Syncthing setup outside of a very convoluted Ignore Files list.

***

## Guides

***

### How to Set Up PKHeX
[Back to the Top](#community-creations-table-of-contents)

This section will cover how to download and set up PKHeX. For the GitHub repo, see [https://github.com/kwsch/PKHeX](https://github.com/kwsch/PKHeX).

PKHeX is a "Pokémon core series save editor, programmed in C#."

#### Set up Folders

1. In Desktop Mode, open Konsole
2. Enter:
    * `mkdir -p $HOME/Games/Lutris/PKHeX/pfx`
    * This command will create a couple of **empty** folders to make managing and installing PKHeX easier
3. Download the latest version of PKHeX from [https://projectpokemon.org/home/files/file/1-pkhex/](https://projectpokemon.org/home/files/file/1-pkhex/) to `$HOME/Games/Lutris/PKHeX`
    * If you are on a Steam Deck, this path may be `/home/deck/Games/Lutris/PKHeX`
3. Right click `PKHeX (23.10.11).zip`, click `Extract`, `Extract Archive Here`

#### Set up Lutris

1. In Desktop Mode, open Discover and download Lutris
2. Open Lutris
3. Click the `+` button in the top left of the Lutris application
4. Click `Add locally installed game`
5. On the `Game Info` tab:
    * Name: PKHeX
    * Sort Name: Leave Blank
    * Runner: Wine (Runs Windows games)
    * Release Year: Leave Blank
6. On the `Game Options` tab:
    * Executable: Click the `Browse` button and navigate to the `PKHeX.exe` file in `$HOME/Games/Lutris/PKHeX`
        * If you are on a Steam Deck, this path may be `/home/deck/Games/Lutris/PKHeX`
    * Arguments: Leave Blank
    * Working Directory: Leave Blank
    * Wine Prefix: Click the `Browse` button and select the `$HOME/Games/Lutris/PKHeX/pfx` folder
        * If you are on a Steam Deck, this path may be `/home/deck/Games/Lutris/PKHeX/pfx`
7. On the `Runner options` tab:
    * Wine version: System (8.0.2) (default)
    * Leave everything else at defaults
8. Click the `Save` button in the top right
9. Single click the `PKHeX` tile in Lutris, click the `Wine` icon at the bottom of the Lutris application, click `Winetricks`
10. Click `Select the default wineprefix`
11. Click `Install a Windows DLL or component`
12. Locate `dotnet7 MS.NET Runtime 7.0 LTS` in the list
13. Check the box to the left of `dotnet7 MS.NET Runtime 7.0 LTS` and click `OK`, wait a few moments for it to install
14. To open PKHeX, open Lutris, select the PKHeX tile, and click `Play`

If PKHeX initially opens in a tiny window, click the `Stop` button in Lutris to force close it. Re-open PKHeX and the window should return to normal.

If you would like to add PKHeX to Game Mode, you may right click the PKHeX tile in Lutris and click `Create steam shortcut`.

#### How to Access Saves

Emulator configurations and saves when installed on Linux are typically stored in hidden folders (such as RetroArch). To access these saves requires a little bit of extra work. 

**Here's How**

1. Open Lutris
2. Single click the `PKHeX` tile in Lutris, click the `Wine` icon at the bottom of the Lutris application, click `Wine configuration`
3. Click the `Drives` tab, check `Show dot files`, click `Apply`, `OK`
4. Open PKHeX and navigate to your saves
    * See the [Save Management](../../save-management/steamos/save-management.md) page for specific save locations

***

### How to Use ROM Hacks
[Back to the Top](#community-creations-table-of-contents)

**ROM Hack Sources**

_This list is not exhaustive_

* ROMHacking: [https://www.romhacking.net/](https://www.romhacking.net/)
* GBAtemp: [https://gbatemp.net/](https://gbatemp.net/)
* PokeCommunity: [https://www.pokecommunity.com/](https://www.pokecommunity.com/)
* Metroid Construction: [https://metroidconstruction.com/hacks.php](https://metroidconstruction.com/hacks.php)
* SegaXtreme: [https://segaxtreme.net/resources/categories/translations.9/](https://segaxtreme.net/resources/categories/translations.9/)
* GameBanana: [https://gamebanana.com/](https://gamebanana.com/)

**IMPORTANT** 

  * Everything can be done on the Steam Deck itself
  * If you plan on using Steam ROM Manager to add this ROM Hack to Steam, it may not have art yet on [https://www.steamgriddb.com/](https://www.steamgriddb.com/). If it does not have art, create a page here: [https://www.steamgriddb.com/](https://www.steamgriddb.com/) and locate some custom art for the ROM Hack so others can use it in the future as well. 
  * Not all ROM Hacks can be applied using the following method. For ROM Hacks that do not use the below method and do not have a Linux equivalent program to apply patches, you can either use Wine/Proton (through Lutris or Steam), or you can use a Windows computer to apply these patches and transfer over the patched ROM Hack. 

**Tutorial**

1. Locate a ROM Hack you would like to use and its associated game ROM
    * Example: 
        * File 1: A clean ROM of Pokemon Emerald for the Nintendo Gameboy Advance
        * File 2: A ROM Hack that turns Pokemon Emerald into a roguelike: [https://www.pokecommunity.com/showthread.php?t=479406](https://www.pokecommunity.com/showthread.php?t=479406)
    * Your ROM Hack patch file may end with one of the following file extensions: `IPS`, `UPS`, `APS`, `BPS`, `RUP`, `PPF`, `MOD`, `XDELTA`, `VCDIFF`
2.  (Optional) Some ROM Hacks expect a specific hash, use [https://www.romhacking.net/hash/](https://www.romhacking.net/hash/), to check the hash of your ROM
    * You can also check hashes in the Dolphin file manager on the Steam Deck by doing the following: 
          * Right click the ROM
          * Click Properties
          * Click the Checksums tab
          * Click `Calculate` to the right of the checksum algorithm (typically MD5 or SHA-256)
3. Depending on your ROM Hack patch file, open: 
	* [https://www.romhacking.net/patch/](https://www.romhacking.net/patch/)
		* Supported ROM Hack file types: `IPS`, `UPS`, `APS`, `BPS`, `RUP`, `PPF`, `MOD`, `XDELTA` (XDelta2 specifically), `VCDIFF`
	* [https://kotcrab.github.io/xdelta-wasm/](https://kotcrab.github.io/xdelta-wasm/)
		* `XDELTA` (XDelta3 specifically)
4. For the top field, `ROM File` or `Source file`, browse to your clean ROM
5. For the bottom field, `Patch File`, browse to your patch
6. Click `Apply Patch` 
7. Save this newly patched ROM, rename it to match the ROM Hack, and place it in the respective system folder within `Emulation/roms`
8. Treat the patched ROM file as its own distinct game from the original ROM file, you may use either Steam ROM Manager or EmulationStation-DE to play your newly patched ROM



***

## How to Contribute to This Page
[Back to the Top](#third-party-emulation-table-of-contents)

You will need to **create** a GitHub account first. To sign up for GitHub, see [https://github.com/signup](https://github.com/signup).

1. Open [https://github.com/EmuDeck/emudeck.github.io/blob/main/docs/community-creations/steamos/tools-and-guides.md](https://github.com/EmuDeck/emudeck.github.io/blob/main/docs/community-creations/steamos/tools-and-guides.md)
2. Click the `Pencil` icon in the top right
3. Create a new section header below the most recently added section under the respective category using three `###` and the name of the section after the three `###`
	* For example, `### My Great Guide to Unlocking the Secrets of the Steam Deck!`
    * Your section will automatically be added to the Table of Contents
4. Write your section under your newly created header
5. Once you are finished making your changes, click the `Commit changes...` button in the top right
    * ![How to Contribute to the Wiki 2](../../assets/how-to-contribute-2.png)
6. You will be prompted to create a Pull Request. Add a little bit of detail about what you added and why
    * ![How to Contribute to the Wiki 3](../../assets/how-to-contribute-3.png)
    * You will not see the option to `Commit directly to the main branch` so do not worry about inadvertently making any changes
7. Submit your Pull Request
8. Once your Pull Request is reviewed, it will be merged and any of your changes will automatically be deployed to this page

***