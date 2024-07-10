# Cemu is a Wii U Emulator.

Website: [https://cemu.info/](https://cemu.info/)

GitHub: [https://github.com/cemu-project/Cemu](https://github.com/cemu-project/Cemu)

Compatibility List: [https://compat.cemu.info/](https://compat.cemu.info/)

**This page is for the native build of Cemu. EmuDeck includes the native build of Cemu as an optional install. Both versions will remain installed. One quick way to tell the difference is to compare the two GUIs. For the Proton version of Cemu, visit [Cemu Proton](./cemu-proton.md).**

Native Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765451-f9e712cd-f6c5-4257-8821-8957f28b3745.png" height="300">

Proton Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765705-e8aa00ff-d647-4965-9e8a-253dfb36f289.png" height="300">

***

## Cemu Native Table of Contents

1. [Getting started with Cemu](#getting-started-with-cemu)
    - [Setting up Cemu Questionnaire](#setting-up-cemu-questionnaire)
    - [Configuration](#cemu-native-configuration)
    - [Cemu Native Folder Locations](#cemu-native-folder-locations)
    - [The Dangers of Proton](#the-dangers-of-proton)
    - [How to Update Cemu](#how-to-update-cemu)
    - [How to Launch Cemu in Desktop Mode](#how-to-launch-cemu-in-desktop-mode)
    - [File Formats](#cemu-native-file-formats)
    - [How to Convert to WUA](#how-to-convert-to-wua)
    - [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    - [Hotkeys](#cemu-native-hotkeys)

2. [Common Issues](#common-issues)
    - [Game Compatibility](#game-compatibility)
    - [Cemu Version Issues](#cemu-version-issues)

3. [Cemu Tips and Tricks](#cemu-tips-and-tricks)
    - [How to Configure Gyro](#how-to-configure-gyro)
    - [How to Configure Gyro With External Controllers](#how-to-configure-gyro-with-external-controllers)
    - [How to Optimize Performance (Power Tools)](#how-to-optimize-performance-power-tools)
    - [How to Configure Multiplayer](#how-to-configure-multiplayer)
    - [How to Use the Wii U Pro Controller Configuration](#how-to-use-the-wii-u-pro-controller-configuration)
    - [How to Configure Cemu Native to Work With EmulationStation-DE](#how-to-configure-cemu-native-to-work-with-emulationstation-de)
    - [How to Optimize Breath of the Wild](#how-to-optimize-breath-of-the-wild)
    - [How to Roll Back Cemu to an Older Version](#how-to-roll-back-cemu-to-an-older-version)
    - [How to Configure Language Settings](#how-to-configure-language-settings)
    - [How to Configure Online Multiplayer Via Pretendo](#how-to-configure-online-multiplayer-via-pretendo)

4. [Cemu Native and Proton Breakdown](#cemu-native-and-proton-breakdown)
    - [How do I download Native Cemu?](#how-do-i-download-native-cemu)
    - [What is the difference between the Proton and the Native version?](#what-is-the-difference-between-the-proton-and-the-native-version)
    - [Which Cemu version should I use?](#which-cemu-version-should-i-use)
    - [How do I know which Cemu is which?](#how-do-i-know-which-cemu-is-which)
    - [How do I select which version of Cemu to use in Game Mode?](#how-do-i-select-which-version-of-cemu-to-use-in-game-mode)
    - [How do I select which version of Cemu to use in Desktop Mode?](#how-do-i-select-which-version-of-cemu-to-use-in-desktop-mode)

5. [Cemu Proton Wiki Page](../../steamos/cemu/cemu-proton.md)

***

## Getting started with Cemu
[Back to the Top](#cemu-native-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue.

Cemu is a fairly straight-forward emulator to set up, _if_ you use decrypted ROMs. Place your ROMs in `Emulation/roms/wiiu/roms`. **Do not** install your games. No additional setup is required. 

Read the [Configuration](#cemu-native-configuration) section to learn more about Cemu and its folder locations. 

For updates and DLC, read [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates).  

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Wii U ROMs:

* `EmulationStation-DE`
* `Nintendo WiiU - Cemu (.rpx) - Native` or `Nintendo WiiU - Cemu (.wud, .wux, .wua) - Native`
    * Read the [File Formats](#cemu-native-file-formats) section to learn more about these various file formats
    * `.rpx` and `.wua` are decrypted ROM formats
* `Emulators`

_If_ you intend on using encrypted ROMs, proceed to the [Setting up Cemu Questionnaire](#setting-up-cemu-questionnaire). 

***

### Setting up Cemu Questionnaire
[Back to the Top](#cemu-native-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue. If you use decrypted ROMs, you do not need the following questionnaire. 

**Setting up Cemu Questionnaire**

1. Is your ROM encrypted? If yes, do you have a `keys.txt` in the right place with the correct keys for your games in the `keys.txt` file?
    1. What are keys?: Keys are required to decrypt Wii U ROMs. Your `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method of obtaining keys is piracy and cannot be discussed here or on the EmuDeck discord.
    2. Which Cemu ROM Formats are encrypted?: [File Formats](#cemu-native-file-formats)
    3. `keys.txt` Location: `/home/deck/.local/share/Cemu/`
    4. If your ROM is NUS Format (a folder with .h3 and .app files), you will need to decrypt your ROM into the Loadiine format (folder format with three subfolders - code, content, meta). Decryption methods cannot be discussed here or on the EmuDeck discord.
        * The NUS format **cannot** be used through ES-DE, Steam ROM Manager, or Pegasus.
2. Is your ROM decrypted?
    1. Which Cemu ROM Formats are decrypted?: [File Formats](#cemu-native-file-formats)
    2. If your ROM is decrypted, place the ROM in `Emulation/roms/wiiu/roms`. Your game should launch without needing any keys. 
3. If you are getting an `Unable to launch game` error, did you place the `keys.txt` in the right place?
    1. `keys.txt` Location: `/home/deck/.local/share/Cemu/`
4. If you placed the `keys.txt` in the right place, and your ROM is still not working, does your `keys.txt` have the correct key for the ROM?
    1. Even if you placed a key for your game in `keys.txt`, you may still have the incorrect key. 
5. Did you transfer your ROM from another computer and did you compare file sizes to ensure it transferred successfully? 
6. Did you turn on Proton in Steam? If yes, turn it off. If you are unsure, check.
    1. How do I check?: [The Dangers of Proton](#the-dangers-of-proton)


***

### Cemu Native Configuration
[Back to the Top](#cemu-native-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue.

* Type of Emulator: AppImage
* Executable Location:  `/home/deck/Applications/Cemu.AppImage`
* Configuration: `/home/deck/.config/Cemu/`
* Emulator Folders Location: 
    * `/home/deck/.config/Cemu/` 
        * Contains the following folders and files: 
            * `controllerProfiles`
            * `gameProfiles`
            * `settings.xml`
    * `/home/deck/.local/share/Cemu/`
        * Contains the following folders and files: 
            * `graphicPacks`
            * `memorySearcher`
            * `log.txt`
            * `title_list_cache.xml`
    * `/home/deck/.cache/Cemu`
        * Contains the following folders and files: 
            * `shaderCache`
* Persistent Storage: `Emulation/roms/wiiu/mlc01/`
* ROM Location: `Emulation/roms/wiiu/roms` 
    * Note the second `roms` folder in the path. 
    * Do not put DLC / update files in the ROM path. Refer to [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    * Place your game ROMs here, **do not** install your game ROMs
* `keys.txt` Location: `/home/deck/.local/share/Cemu/`
    * The `keys.txt` is only necessary if the Wii U ROM is encrypted.
    * `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method of obtaining keys is piracy and cannot be discussed here or on the EmuDeck discord.
* Saves Location:
    * Symlink:  `Emulation/saves/Cemu/saves/`
    * Target: `Emulation/roms/wiiu/mlc01/usr/save`

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### Cemu Native Folder Locations
[Back to the Top](#cemu-native-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.config/Cemu/` 

```
Cemu/
├── controllerProfiles
│   ├── controller0.xml
│   ├── controller1.xml
│   ├── controller2.xml
│   ├── controller3.xml
│   ├── Deck-Gamepad-Gyro.xml
│   ├── Deck-P1.xml
│   ├── Deck-P2.xml
│   ├── Deck-P3.xml
│   └── Deck-P4.xml
└── settings.xml
```

`$HOME/.local/share/Cemu/`

```
Cemu/
├── graphicPacks
└── memorySearcher
```

`$HOME/.cache/Cemu`

```
Cemu/
└── shaderCache
    ├── driver
    ├── precompiled
    └── transferable
```

`Emulation/roms/wiiu/mlc01`

```
wiiu/mlc01/
├── sys
│   ├── sys
│   ├── title
│   └── usr
└── usr
    ├── boss
    ├── save
    └── title
```


***

### The Dangers of Proton
[Back to the Top](#cemu-native-table-of-contents)

**IMPORTANT:**

There is outdated info on the internet that indicates you need to set Proton on Cemu or on games added for this console by Steam ROM Manager in Steam. Turning on Proton is not necessary. **DO NOT set Proton Compatibity on Cemu or Cemu games added to Steam.** Do NOT set `STEAM_COMPAT_MOUNTS` in parameters.

**Turning on Proton is not necessary because this is the native linux version of Cemu.**

Do not open the `Compatibility` screen in `Game Mode`. Do not touch any of the settings on the `Compatibility` screen in `Game Mode`. 

<img width="500" alt="proton" src="https://user-images.githubusercontent.com/108900299/194777064-526930f4-c36c-44be-b26a-ec192375ef7b.png">

***

### How to Update Cemu
[Back to the Top](#cemu-native-table-of-contents)

**How to Update Cemu**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `Cemu.AppImage` 
    * Refer to [How to Swap Out AppImages and Binaries](../../../file-management/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions
* Through Cemu's built-in updater
    * **Note:** This is a new feature. If you are not on the latest EmuDeck configurations, you may either enable it by enabling it in Cemu's settings or by resetting Cemu on the "Manage Emulators" tab in the EmuDeck application
    * Desktop Mode:
        * Search for Cemu in the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar) and open it, Cemu will prompt for an update if one is available
    * Game Mode:
        * Add Cemu to Steam by using the `Emulators` parser in Steam ROM Manager. After adding it to Steam, you may open it in Game Mode, Cemu will prompt for an update if one is available
* Through `binupdate.sh` in `Emulation/tools/binupdate`, double click to launch

***

### How to Launch Cemu in Desktop Mode
[Back to the Top](#cemu-native-table-of-contents)

**How to Launch Cemu in Desktop Mode**

* Launch `Cemu AppImage` from the `Applications Launcher` (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `cemu.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager` 

***

### Cemu Native File Formats
[Back to the Top](#cemu-native-table-of-contents)

* Loadiine (rpx)
    * Three folders (code, content, meta) 
    * Folders should be inside a folder with the name of the game. This game folder is placed in `Emulation/roms/wiiu/roms` (note the second `roms`)
    * **Visual Reference:** <img src="https://user-images.githubusercontent.com/108900299/194643616-cdf86618-1869-4ba5-b95e-f14066e77ac1.png" width="300">
    * Decrypted, does not require `keys.txt` 
* WUA 
    * Decrypted, does not require `keys.txt`
* WUX
    * Encrypted, requires `keys.txt` in `/home/deck/.local/share/Cemu/`
* WUD 
    * Encrypted, requires `keys.txt` in `/home/deck/.local/share/Cemu/`
* NUS
    * A folder with `.h3` and `.app` files
    * Encrypted, can be decrypted into a `Loadiine (rpx)` folder. Decryption methods cannot be discussed here or on the EmuDeck discord.
    * The NUS format **cannot** be used through ES-DE, Steam ROM Manager, or Pegasus.

**IMPORTANT:**

* Some of these formats may require keys. We cannot help you get these. Place your `keys.txt` in: `/home/deck/.local/share/Cemu/`
    * `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method is piracy and cannot be discussed here or on the EmuDeck discord.
* Once you put ROMs in place, you must refresh the list of games by right clicking in the Cemu UI and clicking `Refresh Games List`.
    * Your game will not show up in Cemu until you refresh. 
* Refer to [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates), for DLC and Updates specifically 

***

### How to Convert to WUA
[Back to the Top](#cemu-native-table-of-contents)

The WUA format is a compressed version of the Loadiine format. It contains your base game, DLC, and updates all in one single file. The WUA format is a lot less fuss than the other formats, requires no keys, and is the most friendly format for EmulationStation-DE.

Here's how to convert to WUA:

**Note:** 

* Encrypted ROMs (WUX, WUD, NUS) cannot be converted to WUA.

**Tutorial**

1. Open Cemu
2. Click `Tools`, `Title Manager`
     1. <img src="https://user-images.githubusercontent.com/108900299/226769311-0c9961f3-57d8-48fe-a7d9-babafcfc761f.png" height="300">
3. Either search for your ROM or find it in the list
4. Select the ROM with the word `base` in the `Type` column
     1. <img src="https://user-images.githubusercontent.com/108900299/226769442-cad00efe-9a9b-4d28-a461-e55cb7e2e4a8.png" height="300">
5. Verify the pop-up prompt has your base game, your update, and your DLC files
     1. You can either place these update and DLC files in `Emulation/roms/wiiu/roms` temporarily or install them: [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
6. Wait, it may take a while
7. Right click in Cemu, and click `Refresh Game List` to refresh your file path in Cemu to the newly created WUA file

***

### How to Manage DLC and Updates
[Back to the Top](#cemu-native-table-of-contents)

#### Preface

DLC and Updates must be installed using the title manager. DLC and Updates are saved to mlc01, in the `Emulation/roms/wiiu` folder.

**IMPORTANT:** Do not keep your DLC and update files in `Emulation/roms/wiiu/roms`. After installing these, you may either delete or move the files to a backup location. Keeping DLC and update files in this directory will create duplicates in Steam ROM Manager.  

***

### How to Install DLC and Updates
[Back to the Top](#cemu-native-table-of-contents)

#### Preface

DLC and Updates must be installed using the title manager. DLC and UPdates are saved to mlc01, in the `Emulation/roms/wiiu` folder.

**IMPORTANT:** Do not keep your DLC and update files in `Emulation/roms/wiiu/roms`. After installing them, you may either delete them or move them to a backup location. Keeping DLC and update files in this directory will create duplicates in Steam ROM Manager.  

***

#### How to Install DLC and Updates

1. Launch Cemu on Desktop Mode
2. Click `File` in the top left, click `Install game title, update, or DLC...`
    * Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/226768498-90501d46-1656-4ade-b52d-615c80f73fef.png" height="300">
3. Navigate to to your Update or DLC files
    * If your files are on your SD Card, click `Other Locations`, `Computer`, `run`, `media`, and navigate to your SD Card
    * Example SD Card Path: `/run/media/mmcblk0p1`
4. Select the Update or DLC and click `Open`
    * Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/226768959-2078b493-e542-4d16-a42f-b5f8372d809d.png" height="300">
5. Wait a moment, and your DLC or update will be successfully installed. Repeat for each DLC or update


***

### Cemu Native Hotkeys
[Back to the Top](#cemu-native-table-of-contents)

Cemu comes with a Steam Input profile for Hotkeys. When playing Cemu ROM shortcuts through Steam, the   `EmuDeck - Controller Hotkeys` profile will automatically be applied so you may use the below hotkeys. For more info, see [Emulator Button Combinations Profile](../../../controls-and-hotkeys/steamos/hotkeys.md#emulator-button-combinations-profile).

When using a frontend (ES-DE, Pegasus, or the emulator itself), the `EmuDeck - Frontend Controller Hotkeys` will automatically be applied. Hold `Start` for a few seconds to switch to the action set required to use the below hotkeys. For more info, see [Emulator Frontends Button Combinations Profile](../../../controls-and-hotkeys/steamos/hotkeys.md#emulator-frontends-button-combinations-profile).

{{ read_csv('cemu-hotkeys.csv') }}


**Note** 

* The `Blow Mic` hotkey only works if you are using the gamepad. 
* For a tutorial on how to select Steam Input Profiles, refer to: [How to Select a Steam Input Profile](../../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile).
* If you would like to use touch menus, apply the `EmuDeck - Steam Deck Radial Menus` profile instead.  
* [Steam Deck Button Layout](../../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)

***

## Common Issues
[Back to the Top](#cemu-native-table-of-contents)

***

### Game Compatibility
[Back to the Top](#cemu-native-table-of-contents)

This section collects which games currently do not work on the native version of Cemu. These games likely work on the proton version of Cemu.

* Tekken Tag Tournament 2 
    * Date added to this page: May 6th, 2023 

***

### Cemu Version Issues
[Back to the Top](#cemu-native-table-of-contents)

This section collects a version history of Cemu and seeks to detail compatibility and general issues with the emulator.

* Cemu Version 2.0.36
    * No Known Issues
    * Date added to this page: May 6th, 2023 

***

## Cemu Tips and Tricks
[Back to the Top](#cemu-native-table-of-contents)

***

### How to Configure Gyro
[Back to the Top](#cemu-native-table-of-contents)

Gyro for Cemu requires SteamDeckGyroDSU. SteamDeckGyroDSU can be installed via EmuDeck, or it can be installed manually.

Gyro only works with the Wii U Gamepad (enabled by default). If you changed your controller layout to the Pro Controller, gyro will not work. 

Read [How to Use the Wii U Pro Controller Configuration](#how-to-use-the-wii-u-pro-controller-configuration) to learn how to apply the Pro Controller layout on a per game basis. 

Visit [SteamDeckGyroDSU](../../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu) to learn how to install and utilize SteamDeckGyroDSU. 


***

### How to Configure Gyro With External Controllers
[Back to the Top](#cemu-native-table-of-contents)

Some external controllers, including the Sony DualSense and the Nintendo Switch Pro Controller feature gyro controls. Cemu allows you to use this gyro with a little bit of set up.



**Here's How**

#### Desktop Mode

1. Switch to Desktop Mode
2. Exit out of Steam
    * You may exit out of Steam a couple of different ways:
        * Right click the `Steam` icon in your taskbar and click `Exit Steam`
        * Open Steam, click the `Steam` button in the top left, click `Exit`
        * Open a terminal (Konsole) and enter `killall -9 steam`
        * Do note that clicking the the `X` button in the top right of the Steam window **will not** exit out of Steam
    * Your controls will switch to `Lizard Mode`. Use `L2` to right click, `R2` to left click, and the `Right Trackpad` to move the mouse
3. Click the bluetooth icon in the bottom right of your taskbar and connect your controller
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/24945d4c-df06-4fbe-9668-7becea0c5edb" height="300">
4. Click the Steam icon in the bottom left of the taskbar and open `Cemu AppImage` 
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/e395d988-cf13-4b2c-af2c-e27059b44ac2" height="300">
5. At the top of the Cemu GUI, click `Options`, click `Input settings`
6. Under the `Controller 1` tab, press the `-` button to the right of the `Controller` drop-down twice
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/d2b7eb25-e5a2-4140-9c8e-069e5c465ab5" height="300">
7. The drop-down box will be empty and your controls will no longer be mapped, this is expected behavior
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/c38668d2-a128-415a-b4fa-756e4e254c53" height="300">
8. Under the `Controller 1` tab, press the `+` button to the right of the `Controller` drop-down
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/3f0e4a6b-5355-420f-9def-5423cc1c0116" height="300">
9. Select `SDLController` for the `API` drop-down and select your controller under the `Controller` drop-down
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/10c359ca-0737-4c47-bbd9-c095777cfd42" height="300">
10. Click the `Add` button and Cemu will auto-map your controls
11. Click the `Settings` button under the drop-down with your controller name
12. Check the box to the left of `Use motion`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/388f1867-dd5d-4eb1-bd9f-d0fbf39896d8" height="300">
13. Click the `OK` button 
14. Give the profile a unique name under the `Profile` drop-down box at the top and click `Save`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/5c64751c-041f-40a5-86a5-bc8c6615eb58" height="300">
15. Your controller is now configured with gyro, proceed to the `Game Mode` section to start using your controller in `Game Mode`

#### Game Mode

1. In Game Mode, connect your controller
2. Select your Wii U game 
3. On the `Play` screen, select the `Controller` icon to the right of the screen 
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/468d63e3-534c-4270-ac61-06e167d6df48" height="300">
4. Select your controller tab at the top
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/b51a1405-9cdf-4ba3-bebf-db817f057f63" height="300">
5. Click the `Gear` icon to the right, and click `Disable Steam Input`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/33cbcb8e-a444-4a75-8e4a-ba9451e6e07a" height="300">
    * You may need to restart first for this setting to properly apply
6. Your controller's gyro will now work for this selected game, repeat as needed for your other games

#### Post-Configuration

This section went over creating a new Player 1 profile for your external controller.

To switch between your new controller profile and the Steam Deck controller profile, open Cemu and open the input settings, select your preferred option in the `Profile` drop-down menu and click `Load`.

To switch back to the Steam Deck controls, select the `Deck-Gamepad-Gyro` profile:

<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/108900299/242173410-54e3d6fb-a38b-499e-ba1a-f65e809ef439.png" height="300">

(Optional) To restore Steam Input:

1. Select your Nintendo Wii U game 
2. On the `Play` screen, select the `Controller` icon to the right of the screen 
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/468d63e3-534c-4270-ac61-06e167d6df48" height="300">
3. Select your controller tab at the top
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/b51a1405-9cdf-4ba3-bebf-db817f057f63" height="300">
4. Click the `Gear` icon to the right, and click `Enable Steam Input`
    * You may need to restart first for this setting to properly apply
5. The controls will be reverted to Steam Input and the Steam Deck controls will be restored

***

### How to Optimize Performance (Power Tools)
[Back to the Top](#cemu-native-table-of-contents)

Visit [Power Tools](../../../emudeck-application/steamos/emudeck-application-101.md#power-tools) to learn how to optimize performance using Power Tools. 

***

### How to Configure Multiplayer
[Back to the Top](#cemu-native-table-of-contents)

1. Open Cemu
2. It's recommended you enable multiplayer on a per-game basis. Turning on additional controllers can disable single player controls in a handful of games
3. Right click a game, click `Edit Game Profile`
4. Click `Controller`
5. To the right of each Controller (`Controller 2` through `Controller 4`), select the respective `Deck #` profile (Deck 2 for player 2 and so on)
6. (Optional) You may need to re-arrange the controller order in Game Mode for your controllers to function as expected. See [How to Re-Arrange the Controller Order](../../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) for more information

<img src="https://user-images.githubusercontent.com/108900299/226769760-abc659a8-4ddb-420b-9c33-b98043f27756.png" height="300">

***

### How to Use the Wii U Pro Controller Configuration
[Back to the Top](#cemu-native-table-of-contents)

In some some games, the initial screen will prompt for a controller configuration: `Wii U Gamepad` or `Wii U Pro Controller`. Some games will automatically switch to the `Wii U Pro Controller` configuration if you choose it. 

For example: <img src="https://user-images.githubusercontent.com/108900299/214977370-2e0fece0-4166-45ea-b373-5599b4d2b7ca.png" height="400">

If you prefer to use the `Wii U Pro Controller` layout, you need to change the controller profile in Cemu. Make sure to change controller profiles on a per-game basis so it is persistent on EmuDeck updates.

**Tutorial**

1. Right click the game, click `Edit game profile`
2. Click the `Controller` tab
3. Change the profile to `Deck-P1`
    * <img src="https://user-images.githubusercontent.com/108900299/226769652-9696e8f7-a91e-46e7-a553-156037b7e39e.png" height="300">
4. When you launch a game, one of the following two things will happen: 
    * Some games will prompt you to choose a controller layout, select the `Wii U Pro Controller`
    * Some games will automatically switch to the `Wii U Pro Controller` configuration

*** 

### How to Configure Cemu Native to Work With EmulationStation-DE
[Back to the Top](#cemu-native-table-of-contents)

In order to use Cemu Native through EmulationStation-DE, you will have to enable it in the settings menu.

**Here's How**

1. Open EmulationStation-DE
2. Press `Start`
3. Press `Other Settings`
4. Press `Alternative Emulators`
5. On `Wiiu`, select `Cemu [Native]`

***

### How to Optimize Breath of the Wild
[Back to the Top](#cemu-native-table-of-contents)

**IMPORTANT:** You need Version 208 of Breath of the Wild to use FPS++. Read [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates) to learn how to install game updates for Cemu. 

#### How to Configure Cemu

1. In Desktop Mode, open `Cemu AppImage`
2. Right click `Breath of the Wild`, click `Edit graphic packs`
    * <img src="https://user-images.githubusercontent.com/108900299/236599933-8b568386-64ca-4bf3-8573-96c2374c46ce.png" height="300">  
3. Click `Download latest community graphic packs`
4. Click the `⌄` to the left of `Mods` 
5. Check the box to the left of `FPS++`
6. Change the mode to `Advanced Settings`
7. Change the `Framerate Limit` to `40FPS`
    * <img src="https://user-images.githubusercontent.com/108900299/236599985-df1ac9fe-1c0f-48a0-8fcd-adb15688f71c.png" height="300">
8. Close out of Cemu

#### How to Configure Game Mode

1. In Game Mode, open Breath of the Wild
2. Click the `...` (the QAM) button
3. Click the battery icon
4. Click `Advanced View`
5. Enable `Use per-game profile`
6. Set the refresh rate to 40
    * <img src="https://user-images.githubusercontent.com/108900299/236642316-5bafc264-6c82-479c-988a-b419515ee92b.png" height="300">
7. Read [Power Tools](../../../emudeck-application/steamos/emudeck-application-101.md#power-tools) to learn how to optimize performance using Power Tools.  to learn how to use the battery menu and `Power Tools` to further increase performance for Breath of the Wild

After doing the steps in the above two sections, Breath of the Wild will run at a stable 40 FPS with temporary occasional hiccups in new areas while it compiles shaders.


*** 

### How to Roll Back Cemu to an Older Version
[Back to the Top](#cemu-native-table-of-contents)

#### Preface

Your ROMs launch using a script created by EmuDeck, `cemu.sh` in `Emulation/tools/launchers`.

The script launches the corresponding emulator in `/home/deck/Applications` and **specifically looks** for two traits:

* The most recently downloaded version of the emulator in `/home/deck/Applications`, based on the file/release date.
* The emulator name at the beginning of the file. Anything after the emulator name is ignored. 
    * For example, if the latest version of the emulator is `1351` and you would like to downgrade to `1349`. When you download version `1349`, you could rename it to `EMULATORNAME-1349.AppImage`, and EmuDeck's script will ignore the `-1349` in the file name, allowing you to record which versions of the emulator you are using through the file name. 

#### How to Roll Back Cemu

1. Download the version of the emulator you would like to use from Cemu's GitHub: [https://github.com/cemu-project/Cemu/releases](https://github.com/cemu-project/Cemu/releases)
2. Move the downloaded emulator from Step 1 to `/home/deck/Applications`
3. (Optional) Rename or delete the original emulator file
4. Right click the newly downloaded emulator, click `Properties`, click `Permissions`, check `Is executable`
5. Your games will now launch using the version of the emulator you downloaded

***

### How to Configure Language Settings
[Back to the Top](#cemu-native-table-of-contents)

#### UI

1. In Desktop Mode, open Cemu
2. Click `Options` at the top
3. Under `Interface`, click the `Language` drop-down menu and select your preferred language
4. Restart Cemu

#### In-Game

1. In Desktop Mode, open Cemu
2. Click `Options` at the to
3. Click `Console language` and select your preferred language

***

### How to Configure Online Multiplayer Via Pretendo
[Back to the Top](#cemu-native-table-of-contents)

You need a **physical Wii U** to play online multiplayer via Pretendo. You **cannot** play online multiplayer without a physical Wii U.

For instructions on how to dump the online files from a Wii U, see [https://cemu.cfw.guide/using-dumpling.html#copying-online-files-to-cemu](https://cemu.cfw.guide/using-dumpling.html#copying-online-files-to-cemu).

For more information on Pretendo, see [https://pretendo.network/](https://pretendo.network/). 

For Pretendo's installation instructions, see [https://pretendo.network/docs/install/cemu](https://pretendo.network/docs/install/cemu).

1. From your Wii U, you will need to dump two files: `otp.bin` and `seeprom.bin`
2. On the Steam Deck, place these two files directly in the `$HOME/.local/share/Cemu` folder
    * Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
3. In Desktop Mode, open Cemu, click `Options`, `General Settings`, click `Account`, select your `PNID` in the `Active Account` drop-down menu and select `Pretendo` under `Network Service`
4. Pretendo is now configured for Cemu

***

## Cemu Native and Proton Breakdown
[Back to the Top](#cemu-native-table-of-contents)

## How do I download Native Cemu?
[Back to the Top](#cemu-table-of-contents)

1. In Desktop Mode, open the EmuDeck Application
2. Click `Manage Emulators`
3. Click `Cemu`
4. Click `Install Cemu AppImage`
    * <img src="https://user-images.githubusercontent.com/108900299/236600742-52661f18-a8e4-454d-9b8a-f1cfcf4423d2.png" height="300">
5. Click `Reset Cemu AppImage` to configure the emulator
    * <img src="https://user-images.githubusercontent.com/108900299/236601649-361f4578-e46a-4807-9052-fc2a2dc1e302.png" height="300">

***

## What is the difference between the Proton and the Native version?
[Back to the Top](#cemu-table-of-contents)

Up until the end of 2022, Cemu only provided a Windows version. EmuDeck bundled this windows version and created a script to run it through Proton. At the end of 2022, Cemu released a native Linux version as an AppImage. The AppImage released in a beta state and still had issues, both with general emulation and game compatibility. 

Throughout 2023, Cemu released frequent updates to improve the performance and compatibility of the native version. However, as of May 2023, there are still lingering issues and some games do not run well. These games do run well on the Windows counterpart of Cemu. 

EmuDeck only started to bundle the native version of Cemu with EmuDeck 2.1, released in April, 2023. Many EmuDeck users still use the Windows version of Cemu and have not fully migrated over to the native version yet. 

The foreseeable future should see improvements and eventual parity with native Cemu and a full migration in EmuDeck from the Windows version. 

**Cemu Native Game Compatibility**

* Read: [Cemu Native: Game Compatibility](./cemu-native.md#game-compatibility)

*** 

## Which Cemu version should I use?
[Back to the Top](#cemu-table-of-contents)

It is up to you. Both versions of Cemu are bundled with EmuDeck to allow the user to choose. Be sure to read [What is the difference between the proton and the native version?](#what-is-the-difference-between-the-proton-and-the-native-version) as well.

Generally, it is **recommended** to select Cemu Native over Cemu Proton. There is less fuss with Proton layers and prefixes and the two versions are mostly similar at this point. 

*** 

## How do I know which Cemu is which?
[Back to the Top](#cemu-table-of-contents)

One quick way to tell the difference is to compare the two GUIs.

Native Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765451-f9e712cd-f6c5-4257-8821-8957f28b3745.png" height="300">

Proton Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765705-e8aa00ff-d647-4965-9e8a-253dfb36f289.png" height="300">

***

## How do I select which version of Cemu to use in Game Mode?
[Back to the Top](#cemu-table-of-contents)

### Steam ROM Manager

Select the corresponding parsers. 

**Cemu Proton Parsers:**

* `Nintendo WiiU - Cemu (.rpx) - Proton`
* `Nintendo WiiU - Cemu (.wud, .wux, .wua) - Proton`

**Cemu Native Parsers:**

* `Nintendo WiiU - Cemu (.rpx) - Native`
* `Nintendo WiiU - Cemu (.wud, .wux, .wua) - Native`

### EmulationStation-DE

1. Open EmulationStation-DE
2. Press `Start`
3. Press `Other Settings`
4. Press `Alternative Emulators`
5. On `Wiiu`, select `Cemu [Native]` or `Cemu [Proton]`

***

## How do I select which version of Cemu to use in Desktop Mode?
[Back to the Top](#cemu-table-of-contents)

1. In Desktop Mode, press the Steam icon in the bottom left of the taskbar to open the Applications Launcher
    * <img src="https://user-images.githubusercontent.com/108900299/236600606-f9de3696-c794-4c15-b7d5-16a88c54360a.png" height="300">
2. Select which Cemu you would like to use, `Cemu (Proton)` or `Cemu AppImage`
    * <img src="https://user-images.githubusercontent.com/108900299/236600639-6a5bcb38-c0b0-4ea0-b2ff-526045bba7da.png" height="300">

***

