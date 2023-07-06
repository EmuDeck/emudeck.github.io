# Dolphin is a Gamecube and Wii emulator.

Website: https://dolphin-emu.org/

Github: https://github.com/dolphin-emu/dolphin

Compatibility List: https://dolphin-emu.org/compat/

Updating this Emulator:
* Use `Discover` (Shopping Bag icon) to update Dolphin

***

# Dolphin Table of Contents

1. [Getting Started with Dolphin](#getting-started-with-dolphin)
   - [Configuration](#dolphin-configuration)
   - [How to Update Dolphin](#how-to-update-dolphin)
   - [How to Launch Dolphin in Desktop Mode](#how-to-launch-dolphin-in-desktop-mode)
   - [File Formats](#dolphin-file-formats)
   - [Hotkeys](#dolphin-hotkeys)

2. [Dolphin Tips and Tricks](#dolphin-tips-and-tricks)
   - [How to Configure Gyro](#how-to-configure-gyro)
   - [How to Optimize Performance (Power Tools)](#how-to-optimize-performance-power-tools)
   - [How to Optimize Storage (Compression Tool)](#how-to-optimize-storage-compression-tool)
   - [How to Manage Multiple Discs](#how-to-manage-multiple-discs)
   - [How to Configure Multiplayer](#how-to-configure-multiplayer)
   - [How to Install Custom Textures](#how-to-install-custom-textures)
   - [How to Create Dolphin Controller Profiles](#how-to-create-dolphin-controller-profiles)
   - [How to Share Your Dolphin Controller Profile](#how-to-share-your-dolphin-controller-profile)
   - [How to Set Dolphin Controller Profiles On a Per-Game Basis](#how-to-set-dolphin-controller-profiles-on-a-per-game-basis)
   - [How to Configure Wii Games To Use A Gamecube Controller](#how-to-configure-wii-games-to-use-a-gamecube-controller)
   - [How to Set Game Settings On a Per-Game Basis](#how-to-set-game-settings-on-a-per-game-basis)
   - [How to use Riivolution Patches](#how-to-use-riivolution-patches)
   - [How to Configure Real Wiimotes](#how-to-configure-real-wiimotes)
   - [How to Use a Mayflash DolphinBar in Game Mode](#how-to-use-a-mayflash-dolphinbar-in-game-mode)

***

# Getting Started with Dolphin
[Back to the Top](#dolphin-table-of-contents)

Dolphin is a fairly straight-forward emulator to set up. Place your Wii ROMs in `Emulation/roms/wii` and your `Gamecube` ROMs in either `Emulation/roms/gc` or `Emulation/roms/gamecube`. No additional setup is required. Read the [Configuration](#dolphin-configuration) section to learn more about Dolphin and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Gamecube or Wii ROMs:

* `EmulationStation-DE`
* `Nintendo GameCube - Dolphin` or `Nintendo Wii - Dolphin`
* `Emulators`

***

## Dolphin Configuration
[Back to the Top](#dolphin-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu`
* Gamecube Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/GCPad`
* Wii Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/Wiimote`
* ROM location (Gamecube): `Emulation/roms/gc` or `Emulation/roms/gamecube`
* ROM location (Wii): `Emulation/roms/wii`
   * No BIOS are required to play Gamecube or Wii ROMs
* Dolphin does not need any additional BIOS files to run
* Saves (Wii):
   * Symlink: `Emulation/saves/dolphin/Wii`
   * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Wii`
* Saves (Gamecube):
   * Symlink: `Emulation/saves/dolphin/GC`
   * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC`
* Savestates (Wii):
   * Symlink: `Emulation/saves/dolphin/StateSaves`
   * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/StateSaves`
* Savestates (Gamecube):
   * Symlink: `Emulation/saves/dolphin/StateSaves`
   * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/StateSaves`
* Gamecube BIOS (Optional): `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC/USA/IPL.bin`
   * After placing the `IPL.bin` here, you will need to:
      1. Open the Dolphin emulator
      2. Open the `Configuration` settings
      3. Click the `Gamecube` tab 
      4. uncheck `Skip Main Menu`
* Wii Menu (Optional): Open the Dolphin emulator, click `Tools` at the top, click `Perform System Update`, select a Region
   * To use: Click `Tools`, click `Load Wii System Menu...`
   * The Wii Menu is not required to play Wii ROMs
   * For further reading: https://wiki.dolphin-emu.org/index.php?title=Wii_Menu


**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click "view hidden files" to see these folders.  

### Works With
* Steam ROM Manager
* EmulationStation-DE

***

## How to Update Dolphin
[Back to the Top](#dolphin-table-of-contents)

**How to Update Dolphin**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Run `Update Emulators & Tools` in `EmuDeck`

***

## How to Launch Dolphin in Desktop Mode
[Back to the Top](#dolphin-table-of-contents)

**How to Launch Dolphin in Desktop Mode**

* Launch `Dolphin Emulator` (Blue Dolphin Icon) from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
   * Icon: <img src="https://user-images.githubusercontent.com/108900299/195756381-6fec2182-e673-465a-ac7b-76cc22598d6d.png" height="25"> 
* Launch the script from `Emulation/tools/launchers`, `dolphin-emu.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

## Dolphin File Formats
[Back to the Top](#dolphin-table-of-contents)

* .ciso 
* .dol 
* .elf 
* .gcm 
* .gcz 
* .iso 
* .nkit 
* .iso 
* .rvz 
* .wad 
* .wia 
* .wbfs

***

## Dolphin Hotkeys
[Back to the Top](#dolphin-table-of-contents)

**Important Note:** Dolphin does not have a way of opening the menu if you are launching the game directly. It is recommended that you change any settings in the Dolphin UI itself before launching a game. 


| Hotkey                       | Dolphin                             |
|------------------------------|-------------------------------------|
| Menu                         | N/A                                 |
| Exit                         | `Select` + `Start`                  |
| Pause/Unpause                | `Select` + `A`                      |
| Fast Forward (Hold)          | `Select` + `R2`                     |
| Save State                   | `Select` + `R1`                     |
| Load State                   | `Select` + `L1`                     |
| Next Save Slot               | `Start` + `R1`                      |
| Previous Save Slot           | `Start` + `L1`                      |
| Shake Nunchuk                | `L2`                                |
| Shake Wiimote                | `L1`                                |
| Tilt Wiimote                 | `L2` + Move `Left Stick`            |
| Sideways Toggle              | `Select` + `R3`                     |
| Attach/Detach Nunchuk        | `Select` + `Left Stick Down`        |
| Next Wii Profile Select      | `Select` + `Left Stick Right`       |
| Previous Wii Profile Select  | `Select` + `Left Stick Left`        |
| Next Game Profile Select     | `Select` + `Left Stick Up`          |
| Previous Game Profile Select | `Select` + `Left Stick Down`        |
| Toggle Aspect Ratio          | `Start` + `DPAD Right`              |
| Increase Internal Resolution | `Start` + `DPAD Up`                 |
| Decrease Internal Resolution | `Start` + `DPAD Down`               |
| Reset                        | `A` + `B` + `X` + `Y` + `L1` + `R1` |
| Unlock FPS*                  | `Start` +  `R2`                     |
| Increase Emulator Speed*     | `Select` + `R2`                     |
| Decrease Emulator Speed*     | `Select` + `L2`                     |

**IMPORTANT**

* A `*` next to the hotkey means it is only mapped in the EmuDeck Beta

**List of Wii Profiles Included with EmuDeck**

* Wiimote with Nunchuk
* Wiimote with Nunchuk and Touchpad Support
* Wiimote with No Attachment
* Wiimote with No Attachment and Touchpad Support
* Wii Classic Controller

**Steam Deck Button Layout:** https://github.com/dragoonDorise/EmuDeck/wiki/Hotkeys#steam-deck-button-layout

***

# Dolphin Tips and Tricks
[Back to the Top](#dolphin-table-of-contents)


***

## How to Configure Gyro
[Back to the Top](#dolphin-table-of-contents)

Gyro for Dolphin requires SteamDeckGyroDSU. SteamDeckGyroDSU can be installed via EmuDeck, or it can be installed manually.

**IMPORTANT** 

Gyro for Dolphin is not mapped out of the box. You will need to open the Dolphin emulator and configure gyro controls after installing SteamDeckGyroDSU. 

Visit https://github.com/dragoonDorise/EmuDeck/wiki/EmuDeck-Application-101#steamdeckgyrodsu to learn how to install and utilize SteamDeckGyroDSU. 


***

## How to Optimize Performance (Power Tools)
[Back to the Top](#dolphin-table-of-contents)

Visit https://github.com/dragoonDorise/EmuDeck/wiki/EmuDeck-Application-101#power-tools to learn how to optimize performance using Power Tools. 

***

## How to Optimize Storage (Compression Tool)
[Back to the Top](#dolphin-table-of-contents)

To optimize storage, you can use the `EmuDeck Compressor` within EmuDeck.  

The `EmuDeck Compressor` will compress your Gamecube and Wii ROMs from ISO to RVZ.

After running the `EmuDeck Compression Tool`, re-run Steam ROM Manager to update your ROM shortcuts to the newly compressed ROM. 

**Visual Reference:** <img src="https://user-images.githubusercontent.com/108900299/198798630-9cf85bc5-ff42-45c4-bceb-7fc4ac740c3c.png" height="300">

***

## How to Manage Multiple Discs
[Back to the Top](#dolphin-table-of-contents)

M3U files can be used to manage multiple discs for Dolphin. With the `Change Discs Automatically` option toggled (turned on by default with EmuDeck), Dolphin will automatically switch discs in combination with an M3U file. 

Learn how to create an M3U File: https://github.com/dragoonDorise/EmuDeck/wiki/file-management#how-to-manage-roms-with-multiple-discs. 


***

## How to Configure Multiplayer
[Back to the Top](#dolphin-table-of-contents)

EmuDeck configures multiplayer out of the box. You do not need to configure the controls. However, to properly setup multiplayer, you will need to enable the additional ports.

**Tutorial**

1. Open the Dolphin emulator
2. Open the `Controller` settings
3. For each controller you are using: 
   1. Gamecube: To the right of each Port # under `Gamecube Controllers`, enable `Standard Controller`
      1. <img src="https://user-images.githubusercontent.com/108900299/210123946-d7c6a1e8-2cff-420d-b51b-0650327d4525.png" height="300">
   2. Wii: To the right of each Port # under `Wii Remotes`, enable `Emulated Wii Remote`
      1. <img src="https://user-images.githubusercontent.com/108900299/210123969-b8bd7928-ef20-4f8f-a5bf-00285f4d2e8f.png" height="300">

***
## How To Install Custom Textures
[Back to the Top](#dolphin-table-of-contents)

Here's how to install custom textures for Dolphin: 

1. Open the Dolphin emulator, right click the game you would like to install custom textures for, click `Properties`, click the `Info` tab, note down the `GameID`.
2. In the Dolphin emulator, click `Graphics` in the top right (or `Options` > `Graphic Settings`), click `Advanced`, make sure `Load Custom Textures` and `Prefetch Custom Textures` are checked. 
   * Visual Reference: <img src="https://user-images.githubusercontent.com/108900299/196001664-b2265732-e7e1-41b8-9052-9af087a2dbd3.png" height="300">
3. Open `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Load/Textures`
   * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the `☰` (hamburger menu) in the top right, click "view hidden files" to see these folders.  
   * If the `Load` and `Textures` folder do not exist, create them.
4. In the `Textures` folder from Step 2, create a folder matching the first 3 characters of the `GameID` from Step 1.
   * Example: `Pokémon XD: Gale of Darkness`
      * Original Game ID: `GXXP01` (PAL Region)
      * Folder Name: `GXX`  
5. Put your texture files directly into this folder.
6. Your texture pack should now be installed. 
   * If the game crashes with custom textures, it is likely too demanding for the Steam Deck. You can turn off `Prefetch Custom Textures` as a workaround, but performance will still take a hit. 

For a visual, watch the following GIF:

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/cf5594f726fed6af2eecf9d4e4c1746018c66e51/GIFs/How%20to%20Install%20Custom%20Textures%20for%20Dolphin.gif" height="400">


***

## How to Create Dolphin Controller Profiles
[Back to the Top](#dolphin-table-of-contents)

**Preface** 

1. This section goes over how to create a Dolphin controller profile and set it for a specific game. However, you can use this profile for any Gamecube/Wii game. While in game, you can use the following hotkeys to cycle through profiles: 
   1. Wii: `Select` + tilt the `Left Joystick` `Left` or `Right`
   2. Gamecube: `Select` + tilt the `Left Joystick` `Up` or `Down
2. EmuDeck currently comes with 6 profiles for Wii and 2 profiles for Gamecube. You can use these as a base to create a profile for your game of choice, using this section's tutorial. 
   1. For a list of EmuDeck's profiles (you do not need to download any of these, use the links as a reference): 
   2. Wii: https://github.com/dragoonDorise/EmuDeck/tree/main/configs/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/Wiimote
   3. Gamecube: https://github.com/dragoonDorise/EmuDeck/tree/main/configs/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/GCPad
3. **Warning:** Creating too many controller configurations may make it difficult to cycle through and pick the one you would like to use. 

***

**Tutorial**

1. Open the Dolphin emulator, click `Options` at the top, click `Controller Settings`.
2. Select a system:
   1. For Gamecube: Click `Configure` to the right of `Port 1 Standard Controller`
   2. For Wii: Click `Configure` to the right of `Wii Remote 1 Emulated Wii Remote`
   3. <img src="https://user-images.githubusercontent.com/108900299/196016641-eb5d4e25-048e-480e-8c06-50767f3a3542.png" height="300">
3. On this screen, configure your controllers however you like. 
4. After you have finished configuring your controls, in the top right under `Profile`, enter the profile name you would like to use. 
5. Click `Save` to the right.
   1. <img src="https://user-images.githubusercontent.com/108900299/196016662-edbef7c2-5e3e-4280-8efb-d1a9eda9df59.png" height="300">
   2. I named my profile `EXAMPLE`
6. Close out of the `Controller Settings` menu. 
7. To use this profile, choose one of the following methods:
   1. Set it for a specific game: #how-to-set-dolphin-controller-profiles-on-a-per-game-basis
   2. Select the profile in game, by tilting the `Left Joystick`, `Left` or `Right` (For Wii) or `Up` or `Down` (For Gamecube), until your profile name appears in the top left. 
      1. View the full list of Dolphin hotkeys here: [Hotkeys](#dolphin-hotkeys)

***

## How to Share Your Dolphin Controller Profile
[Back to the Top](#dolphin-table-of-contents)

Refer to https://github.com/dragoonDorise/EmuDeck/wiki/community-creations#sharing-dolphin-profiles, for instructions and a page to collect Dolphin profiles. 

***

## How to Set Dolphin Controller Profiles On a Per-Game Basis
[Back to the Top](#dolphin-table-of-contents)

1. Choose a controller profile (use one of the following methods): 
   1. Download a controller profile with an `.ini` extension type
      1. View community layouts: https://github.com/dragoonDorise/EmuDeck/wiki/community-creations#dolphin
   2. Use one of EmuDeck's included layouts
      1. For a list of EmuDeck's profiles (you do not need to download any of these, use the links as a reference): 
      2. Wii: https://github.com/dragoonDorise/EmuDeck/tree/main/configs/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/Wiimote
      3. Gamecube: https://github.com/dragoonDorise/EmuDeck/tree/main/configs/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/GCPad
   3. Create a controller profile in the Dolphin GUI
      1. Tutorial: [How to Create Dolphin Controller Profiles](#how-to-create-dolphin-controller-profiles)
2. (Optional) Place your controller profile in either the Gamecube or the Wii Profile folder
   1. Skip this step if you are using an EmuDeck included layout or a profile you created in the Dolphin GUI
   2. Gamecube Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/GCPad`
   3. Wii Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/Wiimote`
3. Open the Dolphin emulator
4. Right click the game you would like to use this controller profile for, and click `Properties`
5. On the `Game Config` tab, press the `Editor` sub-tab
6. Under `User Config`, enter a controller profile using the following template:
   * For `SelectedProfileName`, only type the name of the profile, not the file path to the profile

**Wii:**
``` 
[Controls] 
WiimoteProfile1 = SelectedProfileName
```
**Gamecube:**
```
[Controls] 
PadProfile1 = SelectedProfileName
```
**Example (using `EXAMPLE` profile):** <img src="https://user-images.githubusercontent.com/108900299/196016424-9ae19f25-3366-4963-bb30-4b3148718961.png" height="300">

7. Exit out, and your game should now be using the selected profile

For additional information, read Dolphin's `GameINI (Controller Settings)` Wiki Page: https://wiki.dolphin-emu.org/index.php?title=GameINI_(Controller_Settings)

***

## How to Configure Wii Games To Use A Gamecube Controller
[Back to the Top](#dolphin-table-of-contents)

1. Right click a Wii game
2. Click `Properties`
3. Click the `Game Config` tab
4. Click the `Editor` tab
5. Under `User Config`, enter the following

```
[Controls]
PadType0 = 6
PadProfile1 = GC_base
WiimoteSource0 = 0
```
<img src="https://user-images.githubusercontent.com/108900299/213080943-80187386-77db-4918-b8d8-74a648b2f422.png" height="300">

6. Click OK and your Wii game should now be using a Gamecube controller profile


**Multiplayer**

Use the following template:

```
[Controls]
PadType0 = 6
PadType1 = 6
PadType2 = 6
PadType3 = 6
PadProfile1 = GC_base
WiimoteSource0 = 0
WiimoteSource1 = 0
WiimoteSource2 = 0
WiimoteSource3 = 0
```

For additional information, read Dolphin's `GameINI (Controller Settings)` Wiki Page: https://wiki.dolphin-emu.org/index.php?title=GameINI_(Controller_Settings)

***

## How to Set Game Settings On a Per-Game Basis
[Back to the Top](#dolphin-table-of-contents)

1. In Desktop Mode, Open the Dolphin emulator
2. Right click a game
3. Click `Properties`
4. Click the `Editor` tab
5. Under `User Config`, add your configurations, use: https://wiki.dolphin-emu.org/index.php?title=GameINI for a full list
   1. You also need to include the headers. For example, any settings under the `[Core]` section need to include `[Core]` preceding the respective setting(s)

Example, to use OpenGL for only Super Paper Mario:

<img src="https://user-images.githubusercontent.com/108900299/210124198-a64c005b-74fe-402d-93b3-dd501e814f15.png" height="300">

***

**Example Use Cases for Custom Game Settings**

* Setting Aspect Ratio on a per game basis
* Setting OpenGL on a per game basis
* Setting Widescreen Hacks on a per game basis

#### Specific Use Cases for Custom Game Settings

* Pokemon Colosseum: Aspect Ratio keeps changing 
   * Copy and paste the below lines into the INI editor for Pokemon Colosseum
```
[Video_Settings]
wideScreenHack = False
AspectRatio = 2
``` 

***
## How to Use Riivolution Patches
[Back to the Top](#dolphin-table-of-contents)

**Note:** You will need the base game of the respective Riivolution patch to apply the patch. For example, the Riivolution patch `Newer Super Mario Bros. Wii` requires a copy of the `New Super Mario Bros. Wii` ROM in `Emulation/roms/wii`. 

### Riivolution Patch - Content

If your Riivolution patch includes additional content, follow the below steps. If not, skip to the next section. 

1. Place your Riivolution content folder in  `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Load`
   * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders

**This may not apply to all Riivolution patches, read any attached instructions or the associated website for further help.**

### Riivolution Patch - XML File

1. Place your Riivolution patch file in  `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Load/Riivolution/`
   * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
   * A Riivolution patch file is generally a `.xml` file
2. Open the Dolphin Emulator 
3. Right click the base game and select `Start with Riivolution patches...`
   * <img src="https://user-images.githubusercontent.com/108900299/209005481-c5f7922b-e5b4-4f94-96ab-e3f281648f5d.png" height="300">
4. Click `Open Riivolution XML...` and select a Riivolution patch
5. Click `Save as Preset...`
   * <img src="https://user-images.githubusercontent.com/108900299/209005702-5af85a1e-52cb-4e6a-999b-5a5210acfecc.png" height="300">
6. Name the preset with a `.json` file extension
   * The file name of the JSON file is up to you. However, it is recommended you match the JSON file as closely as possible to the Riivolution patch name so Steam ROM Manager and EmulationStation-DE can scrape the appropriate game art or game info
   * <img src="https://user-images.githubusercontent.com/108900299/209005860-46fa8e50-97d8-4174-ad04-350928e3d789.png" height="300">
7. Save your preset file with a `.json` file extension to `Emulation/roms/wii`
   * <img src="https://user-images.githubusercontent.com/108900299/236645287-aceeabe8-c7dc-4770-af5d-ea32ac6aab8f.png" height="300">
   * If the bottom left box to append `.json` does not exist, you can instead type the full name and add `.json` manually at the end of the full name. For example, `Newer Super Mario Bros. Wii`, type `Newer Super Mario Bros. Wii.json` into the box
8. Your Riivolution patch will now be playable as a stand-alone game
   * Parse it through Steam ROM Manager or play it through EmulationStation-DE

***

**Keep in Mind**

* Some Riivolution patches may require additional steps. Read any attached instructions or the associated website for further help. 
* If a Riivolution patch includes extra content, the `root` directory generally means: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Load/`. Place any additional content from the patch here. This does not apply to all Riivolution patches, read any attached instructions or the associated website for further help. 
* Linux is case sensitive. If a patch includes extra content and Dolphin is not identifying it, you may want to read the included XML files and folders to look for any casing mismatches. This does not apply to all Riivolution patches, read any attached instructions or the associated website for further help. 

***

**Known Riivolution Patch Fixes**

* Mario Kart Midnight
   * Open the included `Mario Kart Midnight.xml` in a text editor and capitalize the `L` in `loader{$__region}.bin`
* Mario Kart Wii Deluxe
   * Rename the included `mkwdx` folder to `MKWDX`


***

## How to Configure Real Wiimotes
[Back to the Top](#dolphin-table-of-contents)

**How to Configure Real Wiimotes**

1. In Desktop Mode, open Dolphin 
1. Open the controller settings
3. Under `Wii Remotes`, select `Real Wii Remote` under the drop-down list next to `Wii Remote 1` and check `Continuous Scanning` at the bottom of the screen
   1. <img src="https://user-images.githubusercontent.com/108900299/211222098-c34d4652-4efc-4c40-b7bc-56c18a23ad7c.png" height="300">
4. Return to Game Mode
5. Open a Wii game, and press `1` and `2` on the Wiimote at the same time

**IMPORTANT** 

* Do not pair the Wiimote to the Steam Deck

**For Further Reading:** https://dolphin-emu.org/docs/guides/configuring-controllers/

***

## How to Use a Mayflash DolphinBar in Game Mode
[Back to the Top](#dolphin-table-of-contents)

**Preface:** To use the Mayflash DolphinBar, you need to blacklist it from Steam to properly allow it to work with Dolphin in Game Mode.

**Note:** This section is specifically for the Mayflash Dolphinbar. Read: #how-to-configure-real-wiimotes, for information on how to configure `Real Wiimotes`. 

#### How to Use a Mayflash DolphinBar in Game Mode

1. Back up `/home/deck/.local/share/Steam/config/config.vdf`
2. Exit out of Steam
   * If Steam is not closed, any edits you make to `config.vdf` will be reverted
3. Right click `config.vdf`, click `Open with Kate`
4. Add the following to the end of the file, on a new line before the final `}` and save
```    
"controller_blacklist"        "57e/0306,57e/0306,57e/0306,57e/0306"
```  
   * <img src="https://user-images.githubusercontent.com/1683513/223632945-8baa6102-ef9c-43b5-9199-faa608e1b654.png" width="800">

5. Make sure `Wii Emulator Mode` is toggled on the Mayflash DolphinBar by clicking the `MODE` button (LED 4)

*** 