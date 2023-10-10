# Dolphin is a GameCube and Wii emulator.

Website: [https://dolphin-emu.org/](https://dolphin-emu.org/)

Github: [https://github.com/dolphin-emu/dolphin](https://dolphin-emu.org/)

Compatibility List: [https://dolphin-emu.org/compat/](https://dolphin-emu.org/compat/)

***

## Dolphin Table of Contents

1. [Getting Started with Dolphin](#getting-started-with-dolphin)
    - [Configuration](#dolphin-configuration)
    - [Dolphin Folder Locations](#dolphin-folder-locations)
    - [How to Update Dolphin](#how-to-update-dolphin)
    - [How to Launch Dolphin in Desktop Mode](#how-to-launch-dolphin-in-desktop-mode)
    - [File Formats](#dolphin-file-formats)
    - [Hotkeys](#dolphin-hotkeys)
    - [How to Set Up GameCube BIOS (Optional)](#how-to-set-up-gamecube-bios)
    - [How to Set Up the Wii Menu (Optional)](#how-to-set-up-the-wii-menu)

2. [Dolphin Tips and Tricks](#dolphin-tips-and-tricks)
    - [How to Configure Gyro](#how-to-configure-gyro)
    - [How to Configure Gyro With External Controllers](#how-to-configure-gyro-with-external-controllers)
    - [How to Optimize Performance (Power Tools)](#how-to-optimize-performance-power-tools)
    - [How to Optimize Storage (Compression Tool)](#how-to-optimize-storage-compression-tool)
    - [How to Manage Multiple Discs](#how-to-manage-multiple-discs)
    - [How to Configure Multiplayer](#how-to-configure-multiplayer)
    - [How to Configure Multiplayer Controls](#how-to-configure-multiplayer-controls)

3. [Dolphin Cheats, Modding, and Texture Packs](#dolphin-cheats-modding-and-texture-packs)
    - [How to Use Cheats](#how-to-use-cheats)
    - [How to Install Custom Textures](#how-to-install-custom-textures)
    - [How to use Riivolution Patches](#how-to-use-riivolution-patches)

4. [How to Navigate Dolphin Settings](#how-to-navigate-dolphin-settings)
    - [How to Create Dolphin Controller Profiles](#how-to-create-dolphin-controller-profiles)
    - [How to Share Your Dolphin Controller Profile](#how-to-share-your-dolphin-controller-profile)
    - [How to Set Dolphin Controller Profiles On a Per-Game Basis](#how-to-set-dolphin-controller-profiles-on-a-per-game-basis)
    - [How to Set Game Settings On a Per-Game Basis](#how-to-set-game-settings-on-a-per-game-basis)

5. [Dolphin Unique Controller Configurations](#dolphin-unique-controller-configurations)
    - [How to Configure Wii Games To Use A GameCube Controller](#how-to-configure-wii-games-to-use-a-gamecube-controller)
    - [How to Configure Wii Games to Use the Trackpad as a Pointer](#how-to-configure-wii-games-to-use-the-trackpad-as-a-pointer)
    - [How to Configure Wii Games to Use the Classic Controller](#how-to-configure-wii-games-to-use-the-classic-controller)
    - [How to Remove the Unsupported Extension Controller](#how-to-remove-the-unsupported-extension-controller)
    - [How to Configure Real Wiimotes](#how-to-configure-real-wiimotes)
    - [How to Use a Mayflash DolphinBar in Game Mode](#how-to-use-a-mayflash-dolphinbar-in-game-mode)

***

## Getting Started with Dolphin
[Back to the Top](#dolphin-table-of-contents)

Dolphin is a fairly straight-forward emulator to set up. Place your Wii ROMs in `Emulation/roms/wii` and your `GameCube` ROMs in either `Emulation/roms/gc` or `Emulation/roms/gamecube`. No additional setup is required. Read the [Configuration](#dolphin-configuration) section to learn more about Dolphin and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your GameCube or Wii ROMs:

* `EmulationStation-DE`
* `Nintendo GameCube - Dolphin` or `Nintendo Wii - Dolphin`
* `Emulators`

***

### Dolphin Configuration
[Back to the Top](#dolphin-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu`
* GameCube Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/GCPad`
* Wii Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/Wiimote`
* ROM Location (GameCube): `Emulation/roms/gc` or `Emulation/roms/gamecube`
    * No BIOS are required to play GameCube ROMs
* ROM Location (Wii): `Emulation/roms/wii`
    * No BIOS are required to play Wii ROMs
* Saves (Wii):
    * Symlink: `Emulation/saves/dolphin/Wii`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Wii`
* Saves (GameCube):
    * Symlink: `Emulation/saves/dolphin/GC`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC`
* Save States (Wii):
    * Symlink: `Emulation/saves/dolphin/StateSaves`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/StateSaves`
* Save States (GameCube):
    * Symlink: `Emulation/saves/dolphin/StateSaves`
    * Target: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/StateSaves`
* GameCube BIOS (Optional): 
    * US: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC/USA/IPL.bin`
    * Europe: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC/EUR/IPL.bin`
    * Japan: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC/JAP/IPL.bin`
        1. After placing the `IPL.bin` in the appropriate folder, you will need to:
            1. Open the Dolphin emulator
            2. Open the `Configuration` settings
            3. Click the `GameCube` tab 
            4. Uncheck `Skip Main Menu`
* Wii Menu (Optional): 
    1. To Download:
        1. Open the Dolphin emulator
        2. Click `Tools` at the top
        3. Click `Perform System Update`, select a Region
    1. To Use: 
        1. Click `Tools`, click `Load Wii System Menu...`

**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### Dolphin Folder Locations
[Back to the Top](#dolphin-table-of-contents)

`$HOME/.var/app/org.DolphinEmu.dolphin-emu`

```
org.DolphinEmu.dolphin-emu/
├── cache
├── config
    ├── dolphin-emu
    │   ├── Debugger.ini
    │   ├── Dolphin.ini
    │   ├── DSUClient.ini
    │   ├── FreeLookController.ini
    │   ├── FreeLook.ini
    │   ├── GameSettings
    │   ├── GBA.ini
    │   ├── GCKeyNew.ini
    │   ├── GCPadNew.ini
    │   ├── GFX.ini
    │   ├── GraphicMods
    │   ├── Hotkeys.ini
    │   ├── Logger.ini
    │   ├── Profiles
    │   │   ├── GCPad
    │   │   │   ├── GC_base.ini
    │   │   │   └── GC_reverse_camera.ini
    │   │   └── Wiimote
    │   │       ├── Wii_base_nunchuck.ini
    │   │       ├── Wii_base_nunchuck_with_touchpad.ini
    │   │       ├── Wii_classic_controller.ini
    │   │       ├── Wii_no_attachment.ini
    │   │       ├── Wii_no_attachment_with_touchpad.ini
    │   │       └── Wii_NoController.ini
    │   ├── Qt.ini
    │   └── WiimoteNew.ini
    ├── kdeglobals
    └── user-dirs.dirs
└── data
    └── dolphin-emu
        ├── Dump
        │   ├── Audio
        │   ├── DSP
        │   ├── Frames
        │   ├── Objects
        │   ├── SSL
        │   └── Textures
        ├── GameSettings
        ├── GC
        │   ├── EUR
        │   ├── JAP
        │   └── USA
        ├── Load
        │   ├── DynamicInputTextures
        │   ├── GraphicMods
        │   ├── Riivolution
        │   ├── Textures
        │   └── WiiSDSync
        ├── Logs
        │   └── Mail
        ├── Maps
        ├── ResourcePacks
        ├── ScreenShots
        ├── Shaders
        │   └── Anaglyph
        ├── StateSaves
        ├── Styles
        ├── Themes
        └── Wii
            ├── import
            ├── meta
            ├── shared1
            ├── shared2
            ├── sys
            ├── ticket
            ├── title
            ├── tmp
            └── wfs
```

***

### How to Update Dolphin
[Back to the Top](#dolphin-table-of-contents)

**How to Update Dolphin**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Run `Update Emulators & Tools` in `EmuDeck`

***

### How to Launch Dolphin in Desktop Mode
[Back to the Top](#dolphin-table-of-contents)

**How to Launch Dolphin in Desktop Mode**

* Launch `Dolphin Emulator` (Blue Dolphin Icon) from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
    * Icon: <img src="https://user-images.githubusercontent.com/108900299/195756381-6fec2182-e673-465a-ac7b-76cc22598d6d.png" height="25"> 
* Launch the script from `Emulation/tools/launchers`, `dolphin-emu.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

### Dolphin File Formats
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

### Dolphin Hotkeys
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
| Unlock FPS                   | `Start` +  `R2`                     |
| Increase Emulator Speed*     | `Select` + `R2`                     |
| Decrease Emulator Speed*     | `Select` + `L2`                     |

**List of Wii Profiles Included with EmuDeck**

* Wiimote with Nunchuk
* Wiimote with Nunchuk and Touchpad Support
* Wiimote with No Attachment
* Wiimote with No Attachment and Touchpad Support
* Wii Classic Controller

**Note:** 

* [Steam Deck Button Layout](../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)

***

### How to Set Up GameCube BIOS
[Back to the Top](#dolphin-table-of-contents)

GameCube BIOS **are not** required to play GameCube games. Adding GameCube BIOS allows you to see the GameCube launch screen when you play GameCube games.

Depending on which region your games are in, select the appropriate BIOS and place in the matching folder below:

**Casing matters**

* Japan BIOS Location: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC/JAP/IPL.bin`
* US BIOS Location: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC/USA/IPL.bin`
* EU BIOS Location: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/GC/EUR/IPL.bin`

After placing your BIOS in the correct place:

1. Open the Dolphin emulator
2. Open the `Configuration` settings
3. Click the `GameCube` tab 
4. Uncheck `Skip Main Menu`

***

### How to Set Up the Wii Menu
[Back to the Top](#dolphin-table-of-contents)

The Wii Menu **is not** required to play Wii Games.

**To Download**

1. Open the Dolphin emulator
2. Click `Tools` at the top
3. Click `Perform System Update`, select a Region

**To Use**

1. Open the Dolphin emulator
2. Click `Tools`, click `Load Wii System Menu...`

* For further reading: [https://wiki.dolphin-emu.org/index.php?title=Wii_Menu](https://wiki.dolphin-emu.org/index.php?title=Wii_Menu)

***

## Dolphin Tips and Tricks
[Back to the Top](#dolphin-table-of-contents)


***

### How to Configure Gyro
[Back to the Top](#dolphin-table-of-contents)

Gyro for Dolphin requires SteamDeckGyroDSU. SteamDeckGyroDSU can be installed via EmuDeck, or it can be installed manually. 

Visit [SteamDeckGyroDSU](../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu) to learn how to install and utilize SteamDeckGyroDSU.  

**IMPORTANT** 

Gyro for Dolphin is not mapped out of the box. You will need to open the Dolphin emulator and configure gyro controls after installing SteamDeckGyroDSU. 

After installing SteamDeckGyroDSU, you may either choose to create your own profile in Dolphin or you may choose to download a community created profile from the [Community Creations](../../community-creations/steamos/community-creations.md) page.

#### Downloading a Community Creations profile

Visit the [Community Creations](../../community-creations/steamos/community-creations.md) page. You may want to start with the [How to Download Dolphin Profiles](../../community-creations/steamos/community-creations.md#how-to-download-dolphin-profiles) section. 

#### Creating your own profile

If you are choosing to create your own profile:

1. Install and configure [SteamDeckGyroDSU](../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu)
2. In Game Mode, open the Dolphin emulator
    * Make sure gyro is configured and set up  
3. Open the `Controllers` menu
4. Select `Configure` to the right of `Wii Remote 1`
    * Make sure `Wii Remote 1` is set to `Emulated Wii Remote`
5. Make sure `evdev/microsoft X-box 360 pad 0` is set in the top left
6. Select the `Motion Input` tab
7. Hover over any of the buttons under the `Accelerometer` or `Gyroscope` sections and press `STEAM` + `L2`
8. Make sure `DSUClient/0/steamdeckgyro` is selected in the drop-down menu at the top
9. Scroll down to the bottom of the list until you see `Accel` and `Gyro` direction inputs
10. Select the matching input to the button you clicked in Step 7
11. Press `Clear` in the bottom right
12. Press `Select` in the top right
    * ![Dolphin Gyro Example 1](../../assets/dolphin-gyro.png) 
13. Press `OK` in the bottom right
14. Repeat for each button under the `Accelerometer` and `Gyroscope` sections
15. (Optional) To use the Steam Deck gyro as a pointer (moving the Steam Deck itself), check `Enable` under the Pointer section on the left on the `Motion Input` tab
    * Consider clicking `Recenter` and tinkering with the settings here to calibrate the pointer
16. After you are finished, give your profile a name in the top right and save it as a new profile
17. Refer to the [Dolphin Hotkeys](#dolphin-hotkeys) to learn how to switch profiles mid-game

For more information, read Dolphin's wiki page on gyro: [https://wiki.dolphin-emu.org/index.php?title=Motion_evdev](https://wiki.dolphin-emu.org/index.php?title=Motion_evdev).


***

### How to Configure Gyro With External Controllers
[Back to the Top](#dolphin-table-of-contents)

#### Desktop Mode

1. Switch to Desktop Mode
2. Exit out of Steam
    * You may exit out of Steam a couple of different ways:
        * Right click the `Steam` icon in your taskbar and click `Exit Steam`
        * Open Steam, click the `Steam` button in the top left, click `Exit`
        * Open a terminal (Konsole) and enter `killall -9 steam`
        * Do note that clicking the the `X` button in the top right of the Steam window **will not** exit out of Steam
    * Your controls will switch to `Lizard Mode`. Use `L2` to right click, `R2` to left click, and the `Right Trackpad` to move the mouse
    * You may also connect an external keyboard and mouse
2. Click the bluetooth icon in the bottom right of your taskbar and connect your controller
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/24945d4c-df06-4fbe-9668-7becea0c5edb" height="300">
3. Open Dolphin
4. Open the `Controllers` menu
5. Select `Configure` to the right of `Wii Remote 1`
    * Make sure `Wii Remote 1` is set to `Emulated Wii Remote`
6. Under `Device`, select `evdev/0/yourexternalcontrollername`
    * Some external controllers may show up as `Wireless Controller`
    * For example: `evdev/0/Nintendo Switch Controller` or `evdev/0/Wireless Controller`
7. Select the `Motion Input` tab
8. Hover over any of the buttons under the `Accelerometer` or `Gyroscope` sections and press `L2`
9. Select `evdev/0/yourexternalcontrollername` in the drop-down menu at the top
    * For example: `evdev/0/Nintendo Switch Controller`
    * For some controllers, it may be under `evdev/0/Wireless Controller Motion Sensors`
10. Scroll down to the bottom of the list until you see `Accel` and `Gyro` direction inputs
11. Select the matching input to the button you clicked in Step 7
    * ![How to Configure Gyro With External Controllers](../../assets/dolphin-external-controller-gyro.png)
12. Press `Clear` in the bottom right
13. Press `Select` in the top right
14. Press `OK` in the bottom right
15. Repeat for each button under the `Accelerometer` and `Gyroscope` sections
16. (Optional) To use the controller gyro as a pointer (moving the controller itself), check `Enable` under the Pointer section on the left on the `Motion Input` tab
    * Consider clicking `Recenter` and tinkering with the settings here to calibrate the pointer
17. After you are finished, give your profile a name in the top right and save it as a new profile
18. To select this profile, open the controller menu, select the profile name in the drop-down menu and click `Load`

**Note:** Different games have different preferences for Nunchuk and Motionplus support. Under the `General and Options` tab, you may uncheck `Attach MotionPlus` and select the appropriate extension in the drop-down menu. Be sue to create and save a new profile for each circumstance to quickly load the different profiles as needed. 

#### Game Mode

1. In Game Mode, connect your controller
2. Select your Wii game 
3. On the `Play` screen, select the `Controller` icon to the right of the screen 
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/468d63e3-534c-4270-ac61-06e167d6df48" height="300">
4. Select your controller tab at the top
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/b51a1405-9cdf-4ba3-bebf-db817f057f63" height="300">
5. Click the `Gear` icon to the right, and click `Disable Steam Input`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/33cbcb8e-a444-4a75-8e4a-ba9451e6e07a" height="300">
    * You may need to restart first for this setting to properly apply
6. Your controller's gyro will now work for this selected game, repeat as needed for your other games

#### Post-Configuration

To restore the default Steam Deck controls:

1. Open Dolphin
2. Open the `Controllers` menu
3. Select `Configure` to the right of `Wii Remote 1`
    * Make sure `Wii Remote 1` is set to `Emulated Wii Remote`
4. Select `evdev/0/Microsoft X-Box 360 Pad 0` under `Devices`
5. Select `Wii_base_nunchuck` under `Profile` and click `Load`
6. Click `Close` and exit out of Dolphin

***

### How to Optimize Performance (Power Tools)
[Back to the Top](#dolphin-table-of-contents)

Visit [Power Tools](../../emudeck-application/steamos/emudeck-application-101.md#power-tools) to learn how to optimize performance using Power Tools.

***

### How to Optimize Storage (Compression Tool)
[Back to the Top](#dolphin-table-of-contents)

To optimize storage, you can use the `EmuDeck Compressor` within EmuDeck.  

The `EmuDeck Compressor` will compress your GameCube and Wii ROMs from ISO to RVZ.

After running the `EmuDeck Compression Tool`, re-run Steam ROM Manager to update your ROM shortcuts to the newly compressed ROM. 

**Visual Reference:** <img src="https://user-images.githubusercontent.com/108900299/198798630-9cf85bc5-ff42-45c4-bceb-7fc4ac740c3c.png" height="300">

***

### How to Manage Multiple Discs
[Back to the Top](#dolphin-table-of-contents)

M3U files can be used to manage multiple discs for Dolphin. With the `Change Discs Automatically` option toggled (turned on by default with EmuDeck), Dolphin will automatically switch discs in combination with an M3U file. 

[Learn how to create an M3U File](../../file-management/steamos/file-management.md#how-to-create-an-m3u-file) 


***

### How to Configure Multiplayer
[Back to the Top](#dolphin-table-of-contents)

EmuDeck configures multiplayer out of the box. You do not need to configure the controls. However, to properly set up multiplayer, you will need to enable the additional ports.

**Tutorial**


1. Open the Dolphin emulator
2. Open the `Controller` settings
3. For each controller you are using, including Player 1: 
    * GameCube: To the right of each Port # under `GameCube Controllers`, enable `Standard Controller`
        * <img src="https://user-images.githubusercontent.com/108900299/210123946-d7c6a1e8-2cff-420d-b51b-0650327d4525.png" height="300">
    * Wii: To the right of each Port # under `Wii Remotes`, enable `Emulated  Wii Remote`
        * <img src="https://user-images.githubusercontent.com/108900299/210123969-b8bd7928-ef20-4f8f-a5bf-00285f4d2e8f.png" height="300">
4. (Optional) You may need to re-arrange the controller order in Game Mode for your controllers to function as expected. See [How to Re-Arrange the Controller Order](../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) to learn how

**Keep in Mind**

* The Steam Deck profile is automatically set to Port 1
    * For example, if you are using a Steam Deck and two external controllers, you will need to have a total of three ports enabled. However, the first port is enabled by default so you will need to enable two additional ports
* If you are using an external controller as Port 1, you do not need to re-configure any settings in Dolphin. However, you may need to re-arrange the controller order in Game Mode. See [How to Re-Arrange the Controller Order](../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) to learn how 
* If you are facing difficulty with matching controllers to their expected ports in Game Mode, you may need to re-arrange the controller order. See [How to Re-Arrange the Controller Order](../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) to learn how
* If you are playing Wii games with GameCube controller support, and would like to use the GameCube controllers, you may need to disable the Wii profiles. See [How to Configure Wii Games To Use A GameCube Controller](#multiplayer) to learn how


***

### How to Configure Multiplayer Controls
[Back to the Top](#dolphin-table-of-contents)

**IMPORTANT:** Multiplayer controllers are fully configured by EmuDeck. If you simply would like to set up multiplayer, see [How to Configure Multiplayer](#how-to-configure-multiplayer). You **do not** need this section if you are satisfied with the default control layout. This section covers how to reconfigure the controls for Players 2-4 if you would rather use a custom configuration. 

#### How to Create Multiplayer Profiles

1. In Game Mode, connect your controller(s)
2. In Game Mode, open the Dolphin emulator
    * You may need to add the Dolphin emulator to Steam first using the `Emulators` parser in Steam ROM Manager
3. Click `Options` at the top, click `Controller Settings`
4. Select a system:
    1. For GameCube: Click `Configure` to the right of `Port 1/2/3/4 Standard Controller`
    2. For Wii: Click `Configure` to the right of `Wii Remote 1/2/3/4 Emulated Wii Remote`
5. On this screen, configure your controllers however you like
6. Saving settings:
    * If you would like to save these settings globally, make sure the profile dropdown is blank, and press the `Save` button in the top right
        * Do note that when you update EmuDeck, any global changes **will be reset** to EmuDeck defaults
    * If you would like to save these settings for a specific game, in the top right under `Profile`, enter the profile name you would like to use, and click `Save` to the right

#### How to Use Your Newly Created Controller Profile

If you chose to save your settings globally and you have enabled your multiplayer ports as described in [How to Configure Multiplayer](#how-to-configure-multiplayer), multiplayer should now work with your custom controls.

If you would rather save these settings for a specific game:

**Here's How**

#### How to Apply Multiplayer Profiles On A Per Game Basis

1. In Desktop Mode, Open the Dolphin emulator
2. Right click the game you would like to use this controller profile for, and click `Properties`
3. On the `Game Config` tab, press the `Editor` sub-tab
4. Under `User Config`, enter a controller profile using the following template:
    * For `SelectedProfileName`, only type the name of the profile, not the file path to the profile
    * Replace the `2` at the end of `WiiMoteProfile2` with the number you would like to apply the profile to. If all the profiles are using the same controller layout, you may simply copy and paste, and only replace the `2` with a `3` and so on. 

        **Wii:**

            [Controls] 
            WiimoteProfile1 = SelectedProfileName
            WiimoteProfile2 = SelectedProfileName
            WiimoteProfile3 = SelectedProfileName
            WiimoteProfile4 = SelectedProfileName

        **GameCube:**

            [Controls] 
            PadProfile1 = SelectedProfileName
            PadProfile2 = SelectedProfileName
            PadProfile3 = SelectedProfileName
            PadProfile4 = SelectedProfileName

5. Exit out, and your game should now be using the selected profile(s)

For additional information, see [Dolphin's "GameINI (Controller Settings)" Wiki Page](https://wiki.dolphin-emu.org/index.php?title=GameINI_(Controller_Settings)).


***

## Dolphin Cheats, Modding, and Texture Packs
[Back to the Top](#dolphin-table-of-contents)

***

### How to Use Cheats
[Back to the Top](#dolphin-table-of-contents)

1. Open the Dolphin emulator
2. Right click a game
3. Click `Properties`
4. Click `Gecko Codes`
5. Click `Download Codes` in the bottom right
6. Select cheat(s)

You may also add cheats to either the `AR Codes` or `Gecko Codes` tab. 

***

### How To Install Custom Textures
[Back to the Top](#dolphin-table-of-contents)

Here's how to install custom textures for Dolphin: 

1. Open the Dolphin emulator, right click the game you would like to install custom textures for, click `Properties`, click the `Info` tab, note down the `GameID`
2. In the Dolphin emulator, click `Graphics` in the top right (or `Options` > `Graphic Settings`), click `Advanced`, make sure `Load Custom Textures` and `Prefetch Custom Textures` are checked
    * <img src="https://user-images.githubusercontent.com/108900299/196001664-b2265732-e7e1-41b8-9052-9af087a2dbd3.png" height="300">
3. Open `$HOME/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Load/Textures`
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
    * If the `Load` and `Textures` folder do not exist, create them
4. In the `Textures` folder from Step 2, create a folder matching the first 3 characters of the `GameID` from Step 1
    * Example: `Pokémon XD: Gale of Darkness`
       * Original Game ID: `GXXP01` (PAL Region)
       * Folder Name: `GXX`  
5. Put your texture files directly into this folder
6. Your texture pack should now be installed 
    * If the game crashes with custom textures, it is likely too demanding for the Steam Deck. You can turn off `Prefetch Custom Textures` as a workaround, but performance will still take a hit 

For a visual, watch the following GIF:

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/cf5594f726fed6af2eecf9d4e4c1746018c66e51/GIFs/How%20to%20Install%20Custom%20Textures%20for%20Dolphin.gif?raw=true"/>

***

### How to Use Riivolution Patches
[Back to the Top](#dolphin-table-of-contents)

**Note:** You will need the base game of the respective Riivolution patch to apply the patch. For example, the Riivolution patch `Newer Super Mario Bros. Wii` requires a copy of the `New Super Mario Bros. Wii` ROM in `Emulation/roms/wii`. 

#### Riivolution Patch - Content

If your Riivolution patch includes additional content, follow the below steps. If not, skip to the next section. 

1. Place your Riivolution content folder in  `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/data/dolphin-emu/Load`
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders

**This may not apply to all Riivolution patches, read any attached instructions or the associated website for further help.**

#### Riivolution Patch - XML File

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

## How to Navigate Dolphin Settings
[Back to the Top](#dolphin-table-of-contents)


***

### How to Create Dolphin Controller Profiles
[Back to the Top](#dolphin-table-of-contents)

#### Tutorial

1. Switch to Desktop Mode. Hold `Start` for 3 seconds to switch to Gamepad configurations
2. Open the Dolphin emulator, click `Options` at the top, click `Controller Settings`.
3. Select a system:
    1. For GameCube: Click `Configure` to the right of `Port 1 Standard Controller`
    2. For Wii: Click `Configure` to the right of `Wii Remote 1 Emulated Wii Remote`
    3. <img src="https://user-images.githubusercontent.com/108900299/196016641-eb5d4e25-048e-480e-8c06-50767f3a3542.png" height="300">
4. On this screen, configure your controllers however you like. 
5. After you have finished configuring your controls, in the top right under `Profile`, enter the profile name you would like to use. 
6. Click `Save` to the right.
    1. <img src="https://user-images.githubusercontent.com/108900299/196016662-edbef7c2-5e3e-4280-8efb-d1a9eda9df59.png" height="300">
    2. `EXAMPLE` is the name of the profile being used as an example
7. Close out of the `Controller Settings` menu

#### How to Use Your Newly Created Controller Profile

This section went over how to create a Dolphin controller profile. With this newly  created profile, you may either set it for a specific game, see [How to Set Dolphin Controller Profiles On a Per-Game Basis](#how-to-set-dolphin-controller-profiles-on-a-per-game-basis) or use hotkeys to select your newly created profile on the fly. 

To learn more about how to use the pre-configured hotkeys, read below.

##### Hotkeys

While in game, you can use the following hotkeys to cycle through profiles: 

* Wii: `Select` + tilt the `Left Joystick` `Left` or `Right`
* GameCube: `Select` + tilt the `Left Joystick` `Up` or `Down`

**Warning:** Creating too many controller configurations may make it difficult to cycle through and pick the one you would like to use. 

***

### How to Share Your Dolphin Controller Profile
[Back to the Top](#dolphin-table-of-contents)

[How to Share Your Dolphin Controller Profile](../../community-creations/steamos/community-creations.md#how-to-share-dolphin-profiles)


***

### How to Set Dolphin Controller Profiles On a Per-Game Basis
[Back to the Top](#dolphin-table-of-contents)

#### How to Select or Create a Profile

Skip to [How to Apply Profiles on a Per Game Basis](#how-to-apply-profiles-on-a-per-game-basis) if you already have a profile in mind. 

Select a controller profile (use one of the following methods): 

* Create a controller profile in the Dolphin GUI
    * Tutorial: [How to Create Dolphin Controller Profiles](#how-to-create-dolphin-controller-profiles)
* Use one of EmuDeck's included layouts
    * Wii
        * `Wii_NoController`
        * `Wii_base_nunchuck`
        * `Wii_base_nunchuck_with_touchpad`
        * `Wii_classic_controller`
        * `Wii_no_attachment`
        * `Wii_no_attachment_with_touchpad`
    * GameCube
        * `GC_base`
        * `GC_reverse_camera`
* Download a controller profile with an `.ini` extension type
    * [View community layouts](../../community-creations/steamos/community-creations.md#community-dolphin-profiles)
    *  Place your controller profile in either the GameCube or the Wii Profile folder
        * GameCube Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/GCPad`
        * Wii Profiles: `/home/deck/.var/app/org.DolphinEmu.dolphin-emu/config/dolphin-emu/Profiles/Wiimote`

#### How to Apply Profiles on a Per Game Basis

1. Open the Dolphin emulator
2. Right click the game you would like to use this controller profile for, and click `Properties`
3. On the `Game Config` tab, press the `Editor` sub-tab
4. Under `User Config`, enter a controller profile using the following template:
    * For `SelectedProfileName`, only type the name of the profile, not the file path to the profile

        **Wii:**

            [Controls] 
            WiimoteProfile1 = SelectedProfileName

        **GameCube:**

            [Controls] 
            PadProfile1 = SelectedProfileName

        **Example (using `EXAMPLE` profile):** <img src="https://user-images.githubusercontent.com/108900299/196016424-9ae19f25-3366-4963-bb30-4b3148718961.png" height="300">

5. Exit out, and your game should now be using the selected profile

If you are using one of EmuDeck's included profiles, here are a few examples:

#### Examples of Per Game Wii Profiles

If you would like a game to use the Wii Classic Controller:

```
[Controls] 
WiimoteProfile1 = Wii_classic_controller
```

If you would like a game to use a Wiimote with no attachment:

```
[Controls] 
WiimoteProfile1 = Wii_no_attachment
```

If you would like to use a Wiimote with a Nunchuck while using the right trackpad as a pointer:

```
[Controls] 
WiimoteProfile1 = Wii_base_nunchuck_with_touchpad
```

#### Examples of Per Game GameCube Profiles

```
[Controls] 
PadProfile1 = GC_base
```

For additional information, see [Dolphin's "GameINI (Controller Settings)" Wiki Page](https://wiki.dolphin-emu.org/index.php?title=GameINI_(Controller_Settings)).

***

### How to Set Game Settings On a Per-Game Basis
[Back to the Top](#dolphin-table-of-contents)

1. In Desktop Mode, Open the Dolphin emulator
2. Right click a game
3. Click `Properties`
4. Click the `Editor` tab
5. Under `User Config`, add your configurations, use: [https://wiki.dolphin-emu.org/index.php?title=GameINI](https://wiki.dolphin-emu.org/index.php?title=GameINI) for a full list
    1. You also need to include the headers. For example, any settings under the `[Core]` section need to include `[Core]` preceding the respective setting(s)

Example, to use OpenGL for only Super Paper Mario:

<img src="https://user-images.githubusercontent.com/108900299/210124198-a64c005b-74fe-402d-93b3-dd501e814f15.png" height="300">

***

#### Example Use Cases for Custom Game Settings

* Setting Aspect Ratio on a per game basis
* Setting OpenGL on a per game basis
* Setting Widescreen Hacks on a per game basis

#### Specific Use Cases for Custom Game Settings

##### Pokemon Colosseum: Aspect Ratio keeps changing 

* Copy and paste the below lines into the INI editor for Pokemon Colosseum

        [Video_Settings]
        wideScreenHack = False
        AspectRatio = 2

***

## Dolphin Unique Controller Configurations
[Back to the Top](#dolphin-table-of-contents)

***

### How to Configure Wii Games To Use A GameCube Controller
[Back to the Top](#dolphin-table-of-contents)

- [How to Configure Wii Games To Use A GameCube Controller: Single Player](#how-to-configure-wii-games-to-use-a-gamecube-controller-single-player)
- [How to Configure Wii Games To Use A GameCube Controller: Multiplayer](#how-to-configure-wii-games-to-use-a-gamecube-controller-multiplayer)

#### How to Configure Wii Games To Use A GameCube Controller: Single Player 

1. Right click a Wii game
2. Click `Properties`
3. Click the `Game Config` tab
4. Click the `Editor` tab
5. Under `User Config`, enter the following

        [Controls]
        PadType0 = 6
        PadProfile1 = GC_base
        WiimoteSource0 = 0

6. Click OK and your Wii game should now be using a GameCube controller profile
    * <img src="https://user-images.githubusercontent.com/108900299/213080943-80187386-77db-4918-b8d8-74a648b2f422.png" height="300">

#### How to Configure Wii Games To Use A GameCube Controller: Multiplayer

1. Right click a Wii game
2. Click `Properties`
3. Click the `Game Config` tab
4. Click the `Editor` tab
5. Under `User Config`, enter the following

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

6. Click OK and your Wii game should now be using a GameCube controller profile

For additional information, see [Dolphin's "GameINI (Controller Settings)" Wiki Page](https://wiki.dolphin-emu.org/index.php?title=GameINI_(Controller_Settings)).

***

### How to Configure Wii Games to Use the Trackpad as a Pointer

#### How to Configure Steam Input

**Note:** You do not need to do this section if you are using EmulationStation-DE. You may skip to [How to Apply the Dolphin Trackpad Profile on the Fly](#how-to-apply-the-dolphin-trackpad-profile-on-the-fly).

1. In Game Mode, open a Wii game
2. Press the `STEAM` button
3. Open `Controller settings`
4. Change the `Current Layout` to `Gamepad with Mouse Trackpad`

#### How to Apply the Dolphin Trackpad Profile on the Fly

1. While in game, press `Select` and tilt the `Left Joystick` right until you see `Wii_base_nunchuck_with_touchpad` or `Wii_no_attachment_with_touchpad`
    * The attachment refers to the Nunchuk. Depending on the game, select the appropriate profile      

**Note:** You will need to do this each time you open the game. However, you may apply this profile specifically to this game so it automatically loads the profile when the game is launched. Read the next section [How to Apply the Wii Profile on a Per Game Basis](#how-to-apply-the-wii-profile-on-a-per-game-basis) to learn how. 

#### How to Apply the Wii Profile on a Per Game Basis

1. In Desktop Mode, open Dolphin
2. Right click the game
3. Click `Properties`
4. Under the `Game Config` tab, click the `Editor` tab
5. In the box under the `User Config` section:
    * If you would like to use the `Wiimote with Nunchuk and Touchpad Support` profile, copy the below template:

            [Controls] 
            WiimoteProfile1 = Wii_base_nunchuck_with_touchpad

    * If you would like to use the `Wiimote with No Attachment and Touchpad Support` profile, copy the below template:

            [Controls] 
            WiimoteProfile1 = Wii_no_attachment_with_touchpad

**Photos**

`Wiimote with Nunchuk and Touchpad Support` profile

![How to Configure Wii Games to Use the Trackpad as a Pointer 1](../../assets/how-to-configure-wii-games-to-use-the-trackpad-as-a-pointer-1.png)

`Wiimote with No Attachment and Touchpad Support` profile

![How to Configure Wii Games to Use the Trackpad as a Pointer 2](../../assets/how-to-configure-wii-games-to-use-the-trackpad-as-a-pointer-1.png)


***

### How to Configure Wii Games to Use the Classic Controller
[Back to the Top](#dolphin-table-of-contents)

#### How to Apply the Classic Profile on the Fly

1. While in game, press `Select` and tilt the `Left Joystick` right until you see `wii_classic_controller`   

**Note:** You will need to do this each time you open the game. However, you may apply this profile specifically to this game so it automatically loads the profile when the game is launched. Read the next section [How to Apply the Classic Profile on a Per Game Basis](#how-to-apply-the-classic-profile-on-a-per-game-basis) to learn how. 

#### How to Apply the Classic Profile on a Per Game Basis

1. In Desktop Mode, open Dolphin
2. Right click the game
3. Click `Properties`
4. Under the `Game Config` tab, click the `Editor` tab
5. In the box under the `User Config` section:

        [Controls] 
        WiimoteProfile1 = Wii_classic_controller

***

### How to Remove the Unsupported Extension Controller
[Back to the Top](#dolphin-table-of-contents)

If you open a Wii game and get an error message with something similar to: " Please remove the unsupported extension controller" or "The external extension controller connected to the Wii remote is not compatible with this title.", generally this error is referring to the Nunchuk. 

![How to Remove the Unsupported Extension Controller](../../assets/how-to-remove-the-unsupported-extension-controller.png)

Here's how to **resolve the error** and remove the Nunchuk:

#### How to Remove the Unsupported Extension Controller on the Fly

1. While in game, press `Select` and tilt the `Left Joystick` right until you see `Wii_no_attachment`   

**Note:** You will need to do this each time you open the game. However, you may apply this profile specifically to this game so it automatically loads the profile when the game is launched. Read the next section [How to Remove the Unsupported Extension Controller on a Per Game Basis](#how-to-remove-the-unsupported-extension-controller-on-a-per-game-basis) to learn how. 

#### How to Remove the Unsupported Extension Controller on a Per Game Basis

1. In Desktop Mode, open Dolphin
2. Right click the game
3. Click `Properties`
4. Under the `Game Config` tab, click the `Editor` tab
5. In the box under the `User Config` section:

        [Controls] 
        WiimoteProfile1 = Wii_no_attachment

***

### How to Configure Real Wiimotes
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

**For Further Reading:** [https://dolphin-emu.org/docs/guides/configuring-controllers/](https://dolphin-emu.org/docs/guides/configuring-controllers/)

***

### How to Use a Mayflash DolphinBar in Game Mode
[Back to the Top](#dolphin-table-of-contents)

**Preface:** To use the Mayflash DolphinBar, you need to blacklist it from Steam to properly allow it to work with Dolphin in Game Mode.

**Note:** This section is specifically for the Mayflash Dolphinbar. For Real Wiimotes, read: [How to Configure Real Wiimotes](#how-to-configure-real-wiimotes).

#### How to Use a Mayflash DolphinBar in Game Mode

1. Back up `/home/deck/.local/share/Steam/config/config.vdf`
2. Exit out of Steam
    * If Steam is not closed, any edits you make to `config.vdf` will be reverted
3. Right click `config.vdf`, click `Open with Kate` or a text editor of your choice
4. Add the following to the end of the file, on a new line before the final `}` and save
    
         "controller_blacklist"        "57e/0306,57e/0306,57e/0306,57e/0306"
 
   
    * <img src="https://user-images.githubusercontent.com/1683513/223632945-8baa6102-ef9c-43b5-9199-faa608e1b654.png" width="800">

5. Make sure `Wii Emulator Mode` is toggled on the Mayflash DolphinBar by clicking the `MODE` button (LED 4)

*** 

