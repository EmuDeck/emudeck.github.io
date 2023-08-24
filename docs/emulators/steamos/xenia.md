# Xenia is an Xbox 360 Emulator.

Website: [https://xenia.jp/](https://xenia.jp/)

Github: [https://github.com/xenia-project/xenia](https://github.com/xenia-project/xenia)

Compatibility List: [https://github.com/xenia-project/game-compatibility/issues](https://github.com/xenia-project/game-compatibility/issues)

Xenia's FAQ: [https://github.com/xenia-project/xenia/wiki/faq](https://github.com/xenia-project/xenia/wiki/faq)

Xenia's Quickstart Guide: [https://github.com/xenia-project/xenia/wiki/Quickstart](https://github.com/xenia-project/xenia/wiki/Quickstart)

**IMPORTANT:** Xenia does not currently run well on Linux/SteamOS. Most games will not boot or will not be playable. This emulator is currently in an experimental state for Linux/SteamOS.

We HIGHLY suggest looking to see if a game you wish to emulate has a native PC version on Steam, Lutris, etc. or has a PS3 version than can be run with RPCS3 instead.

***

## Xenia Table of Contents

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
    - [How to Swap Between Vulkan and DX12](#how-to-swap-between-vulkan-and-dx12)


***

## Getting Started with Xenia
[Back to the Top](#xenia-table-of-contents)

**IMPORTANT:**  Currently, Xbox Live Arcade games have the highest compatibility on Linux/SteamOS. Most Xbox 360 games do not run well on Xenia, on Linux/SteamOS at this time. Xenia does not currently run well on Linux/SteamOS. Most games will not boot or will not be playable. This emulator is currently in an experimental state for Linux/SteamOS.

Xenia is a fairly straight-forward emulator to set up. Place your Xbox 360 ROMs in `Emulation/roms/xbox360/roms` or Xbox Live Arcade ROMs in `Emulation/roms/xbox360/roms/xbla`. No additional setup is required. Read the [Configuration](#xenia-configuration) section to learn more about Xenia and its folder locations.

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Xbox 360 ROMs:

* `EmulationStation-DE`
* `Microsoft Xbox 360 - Xenia`
* `Microsoft Xbox 360 - Xenia - XBLA`
* `Emulators`

***

### Xenia Configuration
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
* Saves: `Emulation/roms/xbox360/content`

#### Folder Visualization

`Emulation/roms/xbox360`

```
xbox360/
├── cache
│   └── modules
│       ├── 591F88BF31D190A8FC6D34699CD04D6D
│       │   └── executable_addr_flags.bin
│       └── 92894AFA8482EBA139E20552587117
│           └── executable_addr_flags.bin
├── LICENSE
├── patches
│   ├── 415607D3 - Gun.patch.toml
│   ├── 415607DD - Tony Hawk's Project 8.patch.toml
│   ├── 415607F2 - Kung Fu Panda.patch.toml
│   ├── 415607F5 - Bee Movie Game.patch.toml
│   ├── 41560817 - Modern Warfare 2 (TU6).patch.toml
│   ├── 415608AF - GoldenEye 007 Reloaded.patch.toml
│   ├── 415608C5 - Family Guy Back to the Multiverse.patch.toml
│   ├── 41560904 - Transformers-Rise of The Dark Spark.patch.toml
│   ├── 425307D1 - The Elder Scrolls IV Oblivion (GOTY).patch.toml
│   ├── 425307DB - Wet.patch.toml
│   ├── 425307E6 - The Elder Scrolls V Skyrim.patch.toml
│   ├── 434307D4 - Resident Evil 5.patch.toml
│   ├── 43430817 - Asura's Wrath.patch.toml
│   ├── 43430824 - DmC Devil May Cry.patch.toml
│   ├── 43430830 - Lost Planet 3.patch.toml
│   ├── 43430841 - Resident Evil.patch.toml
│   ├── 43430842 - Resident Evil 0.patch.toml
│   ├── 434D0822 - Leisure Suit Larry Box Office Bust.patch.toml
│   ├── 445007EA - Onechanbara Bikini Samurai Squad.patch.toml
│   ├── 454107D9 - Need for Speed Most Wanted (2005).patch.toml
│   ├── 454107F9 - Battlefield Bad Company.patch.toml
│   ├── 45410809 - The Simpsons Game.patch.toml
│   ├── 4541080F - The Orange Box (default.xex).patch.toml
│   ├── 4541080F - The Orange Box (engine_360.dll).patch.toml
│   ├── 4541080F - The Orange Box (shaderapidx9_360.dll).patch.toml
│   ├── 4541080F - The Orange Box (tf-bin-Client_360.dll).patch.toml
│   ├── 45410850 - Mirror's Edge.patch.toml
│   ├── 4541087F - Skate 2.patch.toml
│   ├── 454108D8 - Army of Two The 40th Day.patch.toml
│   ├── 454108E6 - Skate 3.patch.toml
│   ├── 454108EF - Bulletstorm.patch.toml
│   ├── 45410914 - Rock Band 3.patch.toml
│   ├── 45410914 - Rock Band 3 TU5.patch.toml
│   ├── 45410915 - Fight Night Champion (TU0).patch.toml
│   ├── 45410915 - Fight Night Champion (TU1).patch.toml
│   ├── 45410915 - Fight Night Champion (TU2).patch.toml
│   ├── 45410916 - Alice Madness Returns.patch.toml
│   ├── 4541092A - Shadows of the Damned.patch.toml
│   ├── 4541096D - SSX.patch.toml
│   ├── 465307D6 - Armored Core 4 (USA).patch.toml
│   ├── 475007D2 - Hail to the Chimp.patch.toml
│   ├── 475807D1 - Lucha Libre AAA Heroes del Ring.patch.toml
│   ├── 494F07D1 - El Shaddai.patch.toml
│   ├── 4B4E0823 - Silent Hill Downpour.patch.toml
│   ├── 4B4E0823 - Silent Hill Downpour (TU1).patch.toml
│   ├── 4B5607E8 - Dead or Alive 5 Ultimate.patch.toml
│   ├── 4C4107D7 - LEGO Star Wars The Complete Saga.patch.toml
│   ├── 4C4107F3 - LEGO Star Wars III The Clone Wars.patch.toml
│   ├── 4D5307D1 - Project Gotham Racing 3 (v10.0 or higher).patch.toml
│   ├── 4D5307D1 - Project Gotham Racing 3 (v9.0 or lower).patch.toml
│   ├── 4D5307D2 - Kameo Elements of Power.patch.toml
│   ├── 4D5307D2 - Kameo Elements of Power (TU2).patch.toml
│   ├── 4D5307D3 - Perfect Dark Zero.patch.toml
│   ├── 4D5307D3 - Perfect Dark Zero (Platinum Hits).patch.toml
│   ├── 4D5307D3 - Perfect Dark Zero (TU3).patch.toml
│   ├── 4D5307D5 - Gears of War.patch.toml
│   ├── 4D5307D5 - Gears of War (TU5).patch.toml
│   ├── 4D5307DF - Blue Dragon.patch.toml
│   ├── 4D5307DF - ブルードラゴン.patch.toml
│   ├── 4D5307E6 - Halo 3.patch.toml
│   ├── 4D5307ED - Banjo-Kazooie Nuts & Bolts.patch.toml
│   ├── 4D5307ED - Banjo-Kazooie Nuts & Bolts (TU3).patch.toml
│   ├── 4D5307F1 - Fable II (1).patch.toml
│   ├── 4D5307F1 - Fable II (2).patch.toml
│   ├── 4D5307F1 - Fable II (GOTY_Platinum Edition).patch.toml
│   ├── 4D5307F1 - Fable II (GOTY_Platinum Edition, TU1).patch.toml
│   ├── 4D5307F2 - Viva Piñata.patch.toml
│   ├── 4D5307F9 - Project Gotham Racing 4.patch.toml
│   ├── 4D5307FA - Lost Odyssey (NTSC-J).patch.toml
│   ├── 4D5307FA - Lost Odyssey.patch.toml
│   ├── 4D53082D - Gears of War 2.patch.toml
│   ├── 4D53082D - Gears of War 2 (TU6).patch.toml
│   ├── 4D53085B - Halo Reach.patch.toml
│   ├── 4D53085F - Viva Piñata Trouble in Paradise.patch.toml
│   ├── 4D53085F - Viva Piñata Trouble in Paradise (TU1).patch.toml
│   ├── 4D530877 - Halo 3 ODST.patch.toml
│   ├── 4D5308AB - Gears of War 3.patch.toml
│   ├── 4D5308AB - Gears of War 3 (TU6 Disc; TU1 XBL).patch.toml
│   ├── 4D53090E - Kinect Star Wars.patch.toml
│   ├── 4D5309B1 - Halo Combat Evolved Anniversary.patch.toml
│   ├── 4D5309C9 - Forza Horizon (E3 Demo).patch.toml
│   ├── 4D5309C9 - Forza Horizon.patch.toml
│   ├── 4D530A26 - Gears of War Judgment.patch.toml
│   ├── 4D530A26 - Gears of War Judgment (TU4).patch.toml
│   ├── 4D530A87 - Fable Anniversary.patch.toml
│   ├── 4D5387E0 - Kameo Elements of Power (kiosk demo).patch.toml
│   ├── 4D5387E9 - Kameo Elements of Power (demo).patch.toml
│   ├── 4D53880C - Halo 3 Alpha.patch.toml
│   ├── 4D53883A - Halo 3 Epsilon (Aug 20th).patch.toml
│   ├── 4D5388BF - Crackdown 2 Demo.patch.toml
│   ├── 4D5707D7 - Blacksite.patch.toml
│   ├── 4D5707DB - Unreal Tournament 3.patch.toml
│   ├── 4D5707DF - TNA Impact (TU1).patch.toml
│   ├── 4E4D07D3 - Ridge Racer 6.patch.toml
│   ├── 4E4D07F0 - Splatterhouse.patch.toml
│   ├── 4E4D080B - Magnacarta2.patch.toml
│   ├── 534307E2 - Bionicle Heroes.patch.toml
│   ├── 5343080B - Batman Arkham Asylum GOTY.patch.toml
│   ├── 534507D6 - Sonic the Hedgehog (2006).patch.toml
│   ├── 53450812 - Sonic Unleashed.patch.toml
│   ├── 53450812 - Sonic Unleashed (TU2).patch.toml
│   ├── 5345085A - Dreamcast Collection.patch.toml
│   ├── 535107E4 - Final Fantasy XIII.patch.toml
│   ├── 535107E8 - Nier.patch.toml
│   ├── 535107FA - Deus Ex Human Revolution Director's Cut.patch.toml
│   ├── 53510806 - Final Fantasy XIII-2.patch.toml
│   ├── 53518810 - Final Fantasy XIII-2 Demo.patch.toml
│   ├── 544307D5 - Ninja Gaiden II (Japan, TU3).patch.toml
│   ├── 544307D5 - Ninja Gaiden II (World).patch.toml
│   ├── 544307D5 - Ninja Gaiden II (World, TU2).patch.toml
│   ├── 545107D1 - Saints Row.patch.toml
│   ├── 545107D1 - Saints Row (TU1).patch.toml
│   ├── 545107F1 - Ratatouille.patch.toml
│   ├── 545107FC - Saints Row 2.patch.toml
│   ├── 545107FC - Saints Row 2 (TU1).patch.toml
│   ├── 545107FE - DAH Path of the Furon.patch.toml
│   ├── 5451083B - 50 Cent Blood on the Sand.patch.toml
│   ├── 54510850 - SpongeBob - Truth or Square.patch.toml
│   ├── 54510866 - WWE All Stars.patch.toml
│   ├── 545407D4 - Amped 3.patch.toml
│   ├── 545407DF - Table Tennis.patch.toml
│   ├── 545407EE - The Darkness.patch.toml
│   ├── 545407F2 - Grand Theft Auto IV.patch.toml
│   ├── 545407F8 - Midnight Club Los Angeles (Complete Edition).patch.toml
│   ├── 545407F8 - Midnight Club Los Angeles.patch.toml
│   ├── 5454082B - Red Dead Redemption (GOTY, Disc 1).patch.toml
│   ├── 5454082B - Red Dead Redemption (GOTY, Disc 2).patch.toml
│   ├── 5454082B - Red Dead Redemption (Original, NTSC).patch.toml
│   ├── 5454082B - Red Dead Redemption (Original, NTSC, TU9).patch.toml
│   ├── 5454082B - Red Dead Redemption-Undead Nightmare (Platinum Hits).patch.toml
│   ├── 5454085D - Bioshock Infinite.patch.toml
│   ├── 545408A7 - Grand Theft Auto V (TU26).patch.toml
│   ├── 545408A7 - Grand Theft Auto V (TU27).patch.toml
│   ├── 555307DC - Far Cry Instincts Predator.patch.toml
│   ├── 555307E5 - Naruto Rise of a Ninja.patch.toml
│   ├── 5553088C - Far Cry 3.patch.toml
│   ├── 565507D4 - The Bourne Conspiracy.patch.toml
│   ├── 565707D0 - Lollipop Chainsaw.patch.toml
│   ├── 565707D0 - Lollipop Chainsaw (Premium Edition).patch.toml
│   ├── 57520802 - Batman Arkham City GOTY.patch.toml
│   ├── 57520802 - Batman Arkham City (TU6).patch.toml
│   ├── 584107D5 - Small Arms.patch.toml
│   ├── 58410889 - Peggle.patch.toml
│   ├── 584108A9 - Bean (GoldenEye 007).patch.toml
│   ├── 584108D3 - Boogie Bunnies.patch.toml
│   ├── 584108DB - A Kingdom for Keflings.patch.toml
│   ├── 584108F6 - Shadow Complex.patch.toml
│   ├── 58410908 - Gel Set & Match.patch.toml
│   ├── 5841090B - Doritos Dash of Destruction.patch.toml
│   ├── 58410954 - Banjo-Kazooie.patch.toml
│   ├── 58410955 - Banjo-Tooie.patch.toml
│   ├── 58410968 - Outrun Online Arcade.patch.toml
│   ├── 5841096A - Hydro Thunder Hurricane.patch.toml
│   ├── 584109FF - Plants vs. Zombies.patch.toml
│   ├── 58410A34 - Crazy Taxi.patch.toml
│   ├── 58410A39 - Space Channel 5 Part 2.patch.toml
│   ├── 58410A70 - Harm's Way.patch.toml
│   ├── 58410B00 - Dead Rising 2 Case West.patch.toml
│   ├── 584111E8 - State of Decay (TU5).patch.toml
│   ├── 584111F7 - Minecraft (XBLA, TU0).patch.toml
│   ├── 584111F7 - Minecraft (XBLA, TU1).patch.toml
│   ├── 584111F7 - Minecraft (XBLA, TU2).patch.toml
│   ├── 584111F7 - Minecraft (XBLA, TU3).patch.toml
│   ├── 584111F7 - Minecraft (XBLA, TU4).patch.toml
│   ├── 5841124F - Doritos Crash Course 2.patch.toml
│   └── 58411436 - Peggle 2.patch.toml
├── portable.txt
├── recent.toml
├── roms
│   └── xbla
├── xenia-canary.config.toml
├── xenia_canary.exe
├── xenia.config.toml
└── xenia.log
```


#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### How to Download Xenia
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

### How to Update Xenia
[Back to the Top](#xenia-table-of-contents)

**How to Update Xenia**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `xenia_canary.exe`
    * Refer to [How to Swap Out Xenia Builds](#how-to-swap-out-xenia-builds) for instructions

***

### How to Launch Xenia in Desktop Mode
[Back to the Top](#xenia-table-of-contents)

**How to Launch Xenia in Desktop Mode**

* Launch `xenia (Proton)` from the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `xenia.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`

***

### Xenia File Formats
[Back to the Top](#xenia-table-of-contents)

* .iso
* .xex
* No file extension
    * For Xbox Live Arcade Games

***

### Xenia Hotkeys
[Back to the Top](#xenia-table-of-contents)

N/A

***

### EmuDeck Compatibility List
[Back to the Top](#xenia-table-of-contents)

Currently, Xbox Live Arcade games have the highest compatibility on Linux/SteamOS. Most Xbox 360 games do not run well on Xenia, on Linux/SteamOS at this time.

Check the EmuDeck community compatibility list to see what Xbox 360 games run well on the Steam Deck (on SteamOS): [https://docs.google.com/spreadsheets/d/1fRqvAh_wW8Ho_8i966CCSBgPJ2R_SuDFIvvKsQCv05w/edit#gid=1989583881](https://docs.google.com/spreadsheets/d/1fRqvAh_wW8Ho_8i966CCSBgPJ2R_SuDFIvvKsQCv05w/edit#gid=1989583881).

To submit games to the EmuDeck community compatibility list: [https://docs.google.com/forms/d/e/1FAIpQLScavGFOuGpEVpyHdRVcPjdrCEquG9ItBaloa8Q0XaiNlu_Afg/viewform](https://docs.google.com/forms/d/e/1FAIpQLScavGFOuGpEVpyHdRVcPjdrCEquG9ItBaloa8Q0XaiNlu_Afg/viewform).


***

## Xenia Common Issues
[Back to the Top](#xenia-table-of-contents)

***

### The Dangers of Proton
[Back to the Top](#xenia-table-of-contents)

**IMPORTANT:**

**DO NOT set Proton Compatibity on Xenia or Xenia games added to Steam.** Do NOT set `STEAM_COMPAT_MOUNTS` in parameters.

**Turning on Proton is not necessary because EmuDeck created a custom script to launch Xenia through Proton. Turning on Proton through Steam breaks EmuDeck's custom script.**

Do not open the `Compatibility` screen in `Game Mode`. Do not touch any of the settings on the `Compatibility` screen in `Game Mode`.

<img width="500" alt="proton" src="https://user-images.githubusercontent.com/108900299/194777064-526930f4-c36c-44be-b26a-ec192375ef7b.png">

***

### How to Fix !Status or GPU Command Error Messages
[Back to the Top](#xenia-table-of-contents)

If you get an error message with either `!Status` or `GPU Commands`, you will need to downgrade Xenia to a specific version. Currently (as of April 26th, 2023), build `e9d1e51_canary_experimental` (released April 2nd, 2023) has the highest compatibility. 

There is an open issue on the Xenia GitHub tracking this issue: https://github.com/xenia-canary/xenia-canary/issues/158. Consider subscribing to the issue to keep up to date with the latest progress. 

However, downgrading to this build is not guaranteed to fix your issue. Xenia on Linux, through Proton, is still in a highly experimental state. Many games do not work. Xbox Live Arcade Games currently have the highest compatibility. 

To downgrade to build `e9d1e51_canary_experimental`, read: [How to Swap Out Xenia Builds](#how-to-swap-out-xenia-builds), this section specifically covers downgrading to the `e9d1e51_canary_experimental` build. 

***

## Xenia Tips and Tricks
[Back to the Top](#xenia-table-of-contents)

***

### How to Swap Out Xenia Builds
[Back to the Top](#xenia-table-of-contents)

Xenia, through Proton/Wine, is currently in an experimental state. Updates may break or affect the emulator in unexpected ways. If an update does break certain games launching from Xenia, it is easy to swap out the build for an older one so you can continue playing.

Currently (as of April 26th, 2023), build `e9d1e51_canary_experimental` (released April 2nd, 2023) has the highest compatibility. This section will go over how to swap out the latest build of Xenia Canary for `e9d1e51_canary_experimental`. However, you can take what is written here and apply it to future builds of Xenia Canary as well.

**Tutorial**

1. In Desktop Mode, download `xenia_canary.zip` from: [https://github.com/xenia-canary/xenia-canary/releases/tag/e9d1e51](https://github.com/xenia-canary/xenia-canary/releases/tag/e9d1e51)
2. Extract the zip file to a folder of your choice
3. Copy or move `xenia_canary.exe` in the newly extracted folder to `Emulation/roms/xbox360` and overwrite the pre-existing `xenia_canary.exe`
4. To test, you can open Xenia by launching `xenia.sh` from `Emulation/tools/launchers` or `xenia (Proton)` from the applications launcher in the bottom left
5. Xenia will now be using your swapped out build. However, you can update to the latest build at any time through EmuDeck

**Visual Tutorial**

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-swap-out-xenia-builds.mp4" type="video/mp4">
  </video>
</figure>

***

### How to Swap Between Vulkan and DX12
[Back to the Top](#xenia-table-of-contents)

Recent (as of August 2023) updates of Proton Experimental increased compatibility for DX12. These updates allow more games to boot through Xenia using DX12. At the moment, EmuDeck sets Xenia to Vulkan by default, but swapping between the two is fairly easy.

**Here's How**

1. Open `Emulation/roms/xbox360`
2. Right click `xenia-canary.config.toml` and click `Open with Kate` or a text editor of your choice
3. Locate the `gpu = ""` line
    * By default through EmuDeck, this line should write `gpu = "vulkan"`
4. To swap between Vulkan and DX12, select one of the two below and write it on the `gpu=""` line:
    * Vulkan:
        * `gpu = "vulkan"`
    * DX12:
        * `gpu ="d3d12"`
    * `"vulkan"` and `"d3d12"` must be in quotes

**Photos**

Vulkan:

![How to Swap Between Vulkan and DX12: Vulkan](../../assets/how-to-swap-between-vulkan-and-dx12-1.png)

DX12:

![How to Swap Between Vulkan and DX12: DX12](../../assets/how-to-swap-between-vulkan-and-dx12-2.png)

**Video**

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-swap-between-vulkan-and-dx12.mp4" type="video/mp4">
  </video>
</figure>

***
