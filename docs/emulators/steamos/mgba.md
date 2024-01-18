# mGBA is a Nintendo Game Boy, Game Boy Color and Game Boy Advance emulator.

Website: [https://mgba.io/](https://mgba.io/)

mGBA's FAQ: [https://mgba.io/faq.html](https://mgba.io/)

Github: [https://github.com/mgba-emu/mgba](https://github.com/mgba-emu/mgba)

**This page is for mGBA, a standalone Nintendo Game Boy, Game Boy Color and Game Boy Advance emulator. This page is not for the mGBA RetroArch core. For more information on RetroArch and the mGBA RetroArch core, visit the [RetroArch Page](../steamos/retroarch.md).**


***

## mGBA Table of Contents

1. [Getting Started with mGBA](#getting-started-with-mgba)
    - [Configuration](#mgba-configuration)
    - [mGBA Folder Locations](#mgba-folder-locations)
    - [How to Download mGBA (Standalone)](#how-to-download-mgba-standalone)
    - [How to Update mGBA](#how-to-update-mgba)
    - [How to Launch mGBA in Desktop Mode](#how-to-launch-mgba-in-desktop-mode)
    - [File Formats](#mbga-file-formats)
    - [Hotkeys](#mgba-hotkeys)

2. [Common Issues](#common-issues)
    - [Special Characters](#special-characters)

3. [mGBA Tips and Tricks](#mgba-tips-and-tricks)
    - [How to Configure Multiplayer](#how-to-configure-multiplayer)
    - [How to Use the Gyro Sensor](#how-to-use-the-gyro-sensor)
    - [How to Use the Tilt Sensor](#how-to-use-the-tilt-sensor)
    - [How to Use Cheats](#how-to-use-cheats)
    - [How to Roll Back mGBA to an Older Version](#how-to-roll-back-mgba-to-an-older-version)
    - [How to Configure Language Settings](#how-to-configure-language-settings)
    - [How to Set Up PKHeX](../../community-creations/steamos/tools-and-guides.md#how-to-set-up-pkhex)
    - [How to Use ROM Hacks](../../community-creations/steamos/tools-and-guides.md#how-to-use-rom-hacks)




***

## Getting Started with mGBA
[Back to the Top](#mgba-table-of-contents)

mGBA is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/gb`, `Emulation/roms/gbc` or `Emulation/roms/gba`. No additional setup is required. Read the [Configuration](#mgba-configuration) section to learn more about mGBA and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your GB, GBC, and GBA ROMs:

* `EmulationStation-DE`
* `Nintendo Game Boy - mGBA`, `Nintendo Game Boy Color - mGBA` or `Nintendo Game Boy Advance - mGBA`
* `Emulators`


***

### mGBA Configuration
[Back to the Top](#mgba-table-of-contents)

* Type of Emulator: AppImage
* Executable Location: `/home/deck/Applications/mGBA.AppImage`
* Config Location: `/home/deck/.config/mgba`
    * Contains the following files:
         * `config.ini`
         * `library.sqlite3`
         * `qt.ini`  
* Game Boy Advance ROM location: `Emulation/roms/gba`
* Game Boy Color ROM location: `Emulation/roms/gbc`
* Game Boy ROM location: `Emulation/roms/gb`
* Saves: `Emulation/saves/mgba/saves`
* Save States `Emulation/saves/mgba/states`
* Storage Location: `Emulation/storage/mgba`
      * Contains the following folders: 
         * `Emulation/storage/mgba/cheats`
         * `Emulation/storage/mgba/patches`
         * `Emulation/storage/mgba/screenshots`

**Note:** `~/.config` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click "view hidden files" to see these folders.  

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### mGBA Folder Locations
[Back to the Top](#mgba-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.config/mgba`

```
mgba/
├── config.ini
├── config.ini.bak
├── library.sqlite3
├── nointro.sqlite3
├── qt.ini
├── qt.ini.bak
└── updater.log
```

`Emulation/storage/mgba`

```
mgba
├── cheats
├── patches
└── screenshots
```

***

### How to Download mGBA (Standalone)
[Back to the Top](#mgba-table-of-contents)

1. In Desktop Mode, open the EmuDeck application
2. Click the `Manage Emulators` button
3. Click `mgBA`
4. Click `Install`
5. mGBA (Standalone) will be installed
    * To open mGBA in Desktop Mode, see [How to Launch mGBA in Desktop Mode](#how-to-launch-mgba-in-desktop-mode)

To use **mGBA (Standalone)** to launch your ROMs in Game Mode:

* Use Steam ROM Manager and select the `Nintendo Game Boy - mGBA`, `Nintendo Game Boy Color - mGBA` or `Nintendo Game Boy Advance - mGBA` parser corresponding to the system of your ROM
    * The RetroArch parsers is named: 
        * `Nintendo GameBoy Advance - Retroarch - mGBA`
    * The mGBA (Standalone) parsers are named: 
        * `Nintendo Game Boy - mGBA`
        * `Nintendo Game Boy Color - mGBA` 
        * `Nintendo Game Boy Advance - mGBA`
* Use Steam ROM Manager and select the `EmulationStation-DE` parser
    * To switch to mGBA (Standalone) in EmulationStation-DE, see [EmulationStation-DE: How to Select a Different Emulator for a System](../../tools/steamos/emulationstation-de.md#how-to-select-a-different-emulator-for-a-system)

**No** additional setup is required with Steam ROM Manager and EmulationStation-DE. If you do not have the latest Steam ROM Manager configurations, either run a `Custom Reset` or click the `Reset configuration` button on the Steam ROM Manager page within the EmuDeck application.

***

## How to Update mGBA
[Back to the Top](#mgba-table-of-contents)

**How to Update mGBA**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `mGBA.AppImage` 
    * Refer to [How to Swap Out AppImages and Binaries](../../file-management/steamos/file-management.md#how-to-swap-out-appimages-and-binaries) for instructions


***

### How to Launch mGBA in Desktop Mode
[Back to the Top](#mgba-table-of-contents)

**How to Launch mGBA in Desktop Mode**

* Launch `mGBA AppImage` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `mgba.sh`
* Launch the AppImage in `/home/deck/Applications/mGBA.AppImage`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in Steam ROM Manager

***

### mGBA File Formats
[Back to the Top](#mgba-table-of-contents)

* .gb
* .gbc
* .gba
* .dmg
* .zip
* .7z

***

### mGBA Hotkeys
[Back to the Top](#mgba-table-of-contents)

mGBA comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - mGBA`. The hotkeys below can only be used if you have the Steam Input profile active.

**Long Press** to activate hotkeys on the left trackpad touch menu. 

| Hotkey         | mGBA                      |
|----------------|---------------------------|
| Quick Menu     | Left Trackpad Touch Menu  |
| Save State     | Left Trackpad Touch Menu  |
| Load State     | Left Trackpad Touch Menu  |
| Pause          | Left Trackpad Touch Menu  |
| Reset          | Left Trackpad Touch Menu  |
| Stop Emulation | Left Trackpad Touch Menu  |
| Fast Forward   | Left Trackpad Touch  Menu |
| Cheats         | Left Trackpad Touch Menu  |
| Screenshot     | Left Trackpad Touch Menu  |

**Note:** 

* [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile)
* [Steam Deck Button Layout](../../controls-and-hotkeys/steamos/hotkeys.md#steam-deck-button-layout)


***

## Common Issues

***

### Special Characters
[Back to the Top](#mgba-table-of-contents)

Files with special characters in the ROM name will not launch from Steam. 

Rename your ROMs by editing the file name directly in the respective ROM folder and remove the special character.

**Known Cases**

* `é` in `Pokémon`

If you used Steam ROM Manager previously, re-run Steam ROM Manager after renaming your ROMs. 

***

## mGBA Tips and Tricks
[Back to the Top](#mgba-table-of-contents)

***

### How to Configure Multiplayer
[Back to the Top](#mgba-table-of-contents)

This section is strictly referring to local multiplayer. mGBA multiplayer on the Steam Deck can only be done in Desktop Mode.

1. In Desktop Mode, open mGBA
2. Click `File`, click `New multiplayer window`
3. On each window of mGBA, click `Tools`, `Settings`
4. Select `Controllers` on the left and select your controller in the drop-down menu
    * Steam Deck/Player 1: `Microsoft X-Box 360 pad 0`
    * Player 2: `Microsoft X-Box 360 pad 1`
    * Player 3: `Microsoft X-Box 360 pad 2`
    * Player 4: `Microsoft X-Box 360 pad 3`
5. Open the game in each mGBA window and you will be able to play multiplayer


***

### How to Use the Gyro Sensor
[Back to the Top](#mgba-table-of-contents)

**IMPORTANT:** As of September 2023, there is a bug with rumble while using gyro. Keeping rumble enabled will severly impact your framerate. Open the mGBA emulator and disable the rumble feature if you intend on using gyro.

**Supported Games**

* WarioWare: Twisted! 

**Note:** Yoshi Topsy-Turvy and Kirby Tilt 'n' Tumble use the tilt sensor instead. Read: [How to Use the Tilt Sensor](#how-to-use-the-tilt-sensor) for instructions. 

- [How to Configure the Gyro Sensor for the Steam Deck](#how-to-configure-the-gyro-sensor-for-the-steam-deck)
- [How to Configure the Gyro Sensor for Non Steam-Deck Controllers](#how-to-configure-the-gyro-sensor-for-non-steam-deck-controller)

#### How to Configure the Gyro Sensor for the Steam Deck

##### How to Configure mGBA

1. Open `/home/deck/.config/mgba`
    * `~/.config` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `View hidden files`
2. Right click `config.ini`, click `Open with Kate` or a text editor of your choice
3. Under `gba.input-profile.03000000de280000ff11000001000000`, use the following template:

            tiltAxisY=4
            gyroAxisX=3
            gyroAxisZ=3
            gyroSensitivity=2.2e+09
            tiltAxisX=2
            gyroAxisY=1

4. Save the file and exit out
5. Open mGBA
6. Click `Tools` at the top
7. Click `Game Pak sensors...`
8. Set the sensitivity in the bottom right to `34`

##### How to Configure Steam Input

1. In Game Mode, select the `WarioWare: Twisted!` ROM or the mGBA emulator
2. Click the `Controller` icon
3. Change the layout to `EmuDeck - mGBA`
4. Click `Edit Layout`
5. Select `Gyro` on the left
6. Gyro Behavior: `As Joystick`
7. Click the `Gear` icon
8. Use the following template: 
           
            Gyro Output Scale: 60
            Gyro Enable Button: Select a behavior of your choice
            Minimum Joystick X Output Value: 1
            Minimum Joystick Y Output Value: 1
            
9. Back out, and select `Joysticks` on the left
10. Click the `Gear` icon to the right of `Right Joystick Behavior`
11. Set `Deadzone Type` to `Default`

***

#### How to Configure the Gyro Sensor for Non Steam-Deck Controllers

1. In Desktop Mode, connect your non-Steam Deck controller
2. Open mGBA in Desktop Mode
2. Click `Tools`
3. Click `Settings`
4. Click `Controllers` on the left
5. Select your controller in the drop-down menu
6. Click `OK`
7. Click `Tools`, `Game Pak Sensors`, and test your controller

#### Post-Configuration

To restore the default Steam Deck controls:

1. Open mGBA in Desktop Mode
2. Click `Tools`
3. Click `Settings`
4. Click `Controllers` on the left
5. Select `Microsoft X-Box 360 pad 0` in the drop-down menu


***

### How to Use the Tilt Sensor
[Back to the Top](#mgba-table-of-contents)

**Supported Games**

* Kirby Tilt 'n' Tumble
* Koro Koro Puzzle Happy Panechu!
* Yoshi Topsy-Turvy 

**Note:** For WarioWare: Twisted!, use the gyro sensor instead. Read: [How to Use the Gyro Sensor](#how-to-use-the-gyro-sensor) for instructions. 

- [How to Configure the Tilt Sensor for the Steam Deck](#how-to-configure-the-tilt-sensor-for-the-steam-deck)
- [How to Configure the Tilt Sensor for Non Steam-Deck Controllers](#how-to-configure-the-tilt-sensor-for-non-steam-deck-controller)

***

#### How to Configure the Tilt Sensor for the Steam Deck

mGBA does not support using the Steam Deck's accelerometer for the tilt sensor at this time. Instead, you may either use a patch to remove the requirement for the tilt sensor or use an external controller.

***

#### Tilt Sensor Patches

To learn how to use these patches, see [How to Use ROM Hacks](../../community-creations/steamos/tools-and-guides.md#how-to-use-rom-hacks).

* Kirby Tilt 'n' Tumble
    * [https://gbatemp.net/threads/kirby-tilt-n-tumble-gbc-tilt-fix-accelerometer-removal-patch.605800/](https://gbatemp.net/threads/kirby-tilt-n-tumble-gbc-tilt-fix-accelerometer-removal-patch.605800/)
* Koro Koro Puzzle Happy Panechu!
    * [https://gbatemp.net/threads/yoshitt-warioware-korokoro-no-tilt-patches.584171/](https://gbatemp.net/threads/yoshitt-warioware-korokoro-no-tilt-patches.584171/) 
* Yoshi Topsy-Turvy 
    * [https://gbatemp.net/threads/yoshitt-warioware-korokoro-no-tilt-patches.584171/](https://gbatemp.net/threads/yoshitt-warioware-korokoro-no-tilt-patches.584171/) 

***

#### How to Configure the Tilt Sensor for Non Steam-Deck Controllers

1. In Desktop Mode, connect your non-Steam Deck controller
2. Open mGBA in Desktop Mode
2. Click `Tools`
3. Click `Settings`
4. Click `Controllers` on the left
5. Select your controller in the drop-down menu
6. Click `OK`
7. Click `Tools`, `Game Pak Sensors`, and test your controller

#### Post-Configuration

To restore the default Steam Deck controls:

1. Open mGBA in Desktop Mode
2. Click `Tools`
3. Click `Settings`
4. Click `Controllers` on the left
5. Select `Microsoft X-Box 360 pad 0` in the drop-down menu


***

### How to Use Cheats
[Back to the Top](#mgba-table-of-contents)

**Cheat Resources**

_This list is not comprehensive_

* [https://gamehacking.org](https://gamehacking.org)
    * [Game Boy](https://gamehacking.org/system/gb)
    * [Game Boy Color](https://gamehacking.org/system/gbc)
    * [Game Boy Advance](https://gamehacking.org/system/gba)

#### Desktop Mode

1. In Desktop Mode, open mGBA
2. Load a game
3. Click `Tools` at the top
4. Click `Cheats`
5. Click `Add New Code`
6. Add your cheat

#### Game Mode

1. While in game, use the left Trackpad and select the `Cheats` icon
    * Steam Input profiles for mGBA ROMs and EmulationStation-DE are enabled by default. However, if you do not see the Trackpad menu, see [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile)
2. Select which cheats you would like to use

***

### How to Roll Back mGBA to an Older Version
[Back to the Top](#mgba-table-of-contents)

#### Preface

Your ROMs launch using a script created by EmuDeck, `mgba.sh` in `Emulation/tools/launchers`.

The script launches the corresponding emulator in `/home/deck/Applications` and **specifically looks** for two traits:

* The most recently downloaded version of the emulator in `/home/deck/Applications`, based on the file/release date.
* The emulator name at the beginning of the file. Anything after the emulator name is ignored. 
    * For example, if the latest version of the emulator is `1351` and you would like to downgrade to `1349`. When you download version `1349`, you could rename it to `EMULATORNAME-1349.AppImage`, and EmuDeck's script will ignore the `-1349` in the file name, allowing you to record which versions of the emulator you are using through the file name. 

#### How to Roll Back mGBA

1. Download the version of the emulator you would like to use from mGBA's GitHub: [https://github.com/mgba-emu/mgba/releases](https://github.com/mgba-emu/mgba/releases)
2. Move the downloaded emulator from Step 1 to `/home/deck/Applications`
3. (Optional) Rename or delete the original emulator file
4. Right click the newly downloaded emulator, click `Properties`, click `Permissions`, check `Is executable`
5. Your games will now launch using the version of the emulator you downloaded

***

### How to Configure Language Settings
[Back to the Top](#mgba-table-of-contents)

#### UI

1. In Desktop Mode, open mGBA
2. At the top, click `Tools`, click `Settings`
3. Click the `Interface` tab
4. To the right of `Language`, select your preferred language in the drop-down menu

#### In-Game

Languages are cartridge-specific. For example, if you want to play Golden Sun in French, you will need to dump a Golden Sun cartridge from France.


***

