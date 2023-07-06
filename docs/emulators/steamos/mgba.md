# mGBA is a Nintendo Gameboy, Gameboy Color and Gameboy Advance emulator.

Website: https://mgba.io/

mGBA's FAQ: https://mgba.io/faq.html

Github: https://github.com/mgba-emu/mgba

**This page is for mGBA, a standalone Nintendo Gameboy, Gameboy Color and Gameboy Advance emulator. This page is not for the mGBA RetroArch core. For more information on RetroArch and the mGBA RetroArch core, visit https://github.com/dragoonDorise/EmuDeck/wiki/Retroarch.**


***

# mGBA Table of Contents

1. [Getting Started with mGBA](#getting-started-with-mgba)
      - [Configuration](#mgba-configuration)
      - [How to Update mGBA](#how-to-update-mgba)
      - [How to Launch mGBA in Desktop Mode](#how-to-launch-mgba-in-desktop-mode)
      - [File Formats](#mbga-file-formats)
      - [Hotkeys](#mgba-hotkeys)

2. [mGBA Tips and Tricks](#mgba-tips-and-tricks)
      - [How to Use the Gyro Sensor](#how-to-use-the-gyro-sensor)
      - [How to Use the Tilt Sensor](#how-to-use-the-tilt-sensor)



***

# Getting Started with mGBA
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

mGBA is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/gb`, `Emulation/roms/gbc` or `Emulation/roms/gba`. No additional setup is required. Read the [Configuration](#mgba-configuration) section to learn more about mGBA and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your GB, GBC, and GBA ROMs:

* `EmulationStation-DE`
* `Nintendo GameBoy - mGBA`, `Nintendo GameBoy Color - mGBA` or `Nintendo GameBoy Advance - mGBA`
* `Emulators`


***

## mGBA Configuration
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

* Type of Emulator: AppImage
* Executable Location: `/home/deck/Applications/mGBA.AppImage`
* Config Location: `/home/deck/.config/mgba`
   * Contains the following files:
        * `config.ini`
        * `library.sqlite3`
        * `qt.ini`  
* Gameboy Advance ROM location: `Emulation/roms/gba`
* Gameboy Color ROM location: `Emulation/roms/gbc`
* Gameboy ROM location: `Emulation/roms/gb`
* Saves: `Emulation/saves/mgba/saves`
* Savestates `Emulation/saves/mgba/states`
* Storage Location: `Emulation/storage/mgba`
   * Contains the following folders: 
        * `Emulation/storage/mgba/cheats`
        * `Emulation/storage/mgba/patches`
        * `Emulation/storage/mgba/screenshots`

**Note:** `~/.config` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click "view hidden files" to see these folders.  

### Works With
* Steam ROM Manager
* EmulationStation-DE

***

## How to Update mGBA
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

**How to Update mGBA**

* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application
* Manual file replacement of `mGBA.AppImage` 
  * Refer to https://github.com/dragoonDorise/EmuDeck/wiki/file-management#how-to-swap-out-appimages-and-binaries for instructions.


***

## How to Launch mGBA in Desktop Mode
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

**How to Launch mGBA in Desktop Mode**

* Launch `mGBA AppImage` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `mgba.sh`
* Launch the AppImage in `/home/deck/Applications/mGBA.AppImage`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in Steam ROM Manager

***

## mGBA File Formats
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

* .gb
* .gbc
* .gba
* .dmg
* .zip
* .7z

***

## mGBA Hotkeys
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

mGBA comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - mGBA`. The hotkeys below can only be used if you have the Steam Input profile active.

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

For a tutorial on how to select Steam Input Profiles, refer to: https://github.com/dragoonDorise/EmuDeck/wiki/hotkeys#how-to-select-a-steam-input-profile.

**Steam Deck Button Layout:** https://github.com/dragoonDorise/EmuDeck/wiki/Hotkeys#steam-deck-button-layout


***

# mGBA Tips and Tricks
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)



***

## How to Use the Gyro Sensor
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

**Supported Games**

* WarioWare: Twisted! 

**Note:** Yoshi Topsy-Turvy and Kirby Tilt 'n' Tumble use the tilt sensor instead. Read: https://github.com/dragoonDorise/EmuDeck/wiki/mgba#how-to-use-the-tilt-sensor for instructions. 

- [How to Configure the Gyro Sensor for the Steam Deck](#how-to-configure-the-gyro-sensor-for-the-steam-deck)
- [How to Configure the Gyro Sensor for Non Steam-Deck Controllers](#how-to-configure-the-gyro-sensor-for-non-steam-deck-controller)

### How to Configure the Gyro Sensor for the Steam Deck

#### How to Configure mGBA

1. Open `/home/deck/.config/mgba`
   * `~/.config` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `View hidden files`
2. Right click `config.ini`, click `Open with Kate` or a text editor of your choice
3. Under `gba.input-profile.03000000de280000ff11000001000000`, use the following template:
```
tiltAxisY=4
gyroAxisX=3
gyroAxisZ=3
gyroSensitivity=2.2e+09
tiltAxisX=2
gyroAxisY=1
```
4. Save the file and exit out
5. Open mGBA
6. Click `Tools` at the top
7. Click `Game Pak sensors...`
8. Set the sensitivity in the bottom right to `34`

#### How to Configure Steam Input

1. In Game Mode, select the `WarioWare: Twisted!` ROM or the mGBA emulator
2. Click the `Controller` icon
3. Change the layout to `EmuDeck - mGBA`
4. Click `Edit Layout`
5. Select `Gyro` on the left
6. Gyro Behavior: `As Joystick`
7. Click the `Gear` icon
8. Use the following template: 
```
Gyro Output Scale: 60
Gyro Enable Button: Select a behavior of your choice
Minimum Joystick X Output Value: 1
Minimum Joystick Y Output Value: 1
```
9. Back out, and select `Joysticks` on the left
10. Click the `Gear` icon to the right of `Right Joystick Behavior`
11. Set `Deadzone Type` to `Default`

***

### How to Configure the Gyro Sensor for Non Steam-Deck Controllers

1. In Desktop Mode, connect your non-Steam Deck controller
2. Open mGBA in Desktop Mode
2. Click `Tools`
3. Click `Settings`
4. Click `Controllers` on the left
5. Select your controller in the drop-down menu
6. Click `OK`
7. Click `Tools`, `Game Pak Sensors`, and test your controller


***

## How to Use the Tilt Sensor
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/mgba#mgba-table-of-contents)

**Supported Games**

* Yoshi Topsy-Turvy 
* Kirby Tilt 'n' Tumble

**Note:** For WarioWare: Twisted!, use the gyro sensor instead. Read: https://github.com/dragoonDorise/EmuDeck/wiki/mgba#how-to-use-the-gyro-sensor for instructions. 

- [How to Configure the Tilt Sensor for the Steam Deck](#how-to-configure-the-tilt-sensor-for-the-steam-deck)
- [How to Configure the Tilt Sensor for Non Steam-Deck Controllers](#how-to-configure-the-tilt-sensor-for-non-steam-deck-controller)

***

### How to Configure the Tilt Sensor for the Steam Deck

**Not sure if this is fully possible yet, if you have a way of doing it, edit this page or send a message on the Discord.**

***

### How to Configure the Tilt Sensor for Non Steam-Deck Controllers

1. In Desktop Mode, connect your non-Steam Deck controller
2. Open mGBA in Desktop Mode
2. Click `Tools`
3. Click `Settings`
4. Click `Controllers` on the left
5. Select your controller in the drop-down menu
6. Click `OK`
7. Click `Tools`, `Game Pak Sensors`, and test your controller

***