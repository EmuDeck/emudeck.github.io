# Citra is a Nintendo 3DS Emulator.

Website: [https://citra-emu.org/](https://citra-emu.org/)

Github: [https://github.com/citra-emu/citra](https://github.com/citra-emu/citra)

Compatibility List: [https://citra-emu.org/game/](https://citra-emu.org/game/)

***

## Citra Table of Contents

1. [Getting Started with Citra](#getting-started-with-citra)
    - [Configuration](#citra-configuration)
    - [How to Update Citra](#how-to-update-citra)
    - [How to Launch Citra](#how-to-launch-citra-in-desktop-mode)
    - [File Formats](#citra-file-formats)
    - [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    - [Hotkeys](../../controls-and-hotkeys/windows/hotkeys.md#citra-3ds)
2. [Citra Tips and Tricks](#citra-tips-and-tricks)
    - [How to Install Custom Textures](#how-to-install-custom-textures)

***

## Getting Started with Citra
[Back to the Top](#citra-table-of-contents)

***

### Citra Configuration
[Back to the Top](#citra-table-of-contents)

***

### How to Launch Citra
[Back to the Top](#citra-table-of-contents)

***

### Citra File Formats
[Back to the Top](#citra-table-of-contents)

***

### How to Manage DLC and Updates
[Back to the Top](#citra-table-of-contents)

***

## Citra Tips and Tricks
[Back to the Top](#citra-table-of-contents)

***

### How to Install Custom Textures
[Back to the Top](#citra-table-of-contents)

Here's how to install custom textures for Citra:

#### Citra Configuration

1. Open the Citra emulator. Click `Emulation` in the top left. Click `Configuration`, `Graphics`, and check both `Use Custom Textures` and `Async Custom Texture Loading`
    * <img src="https://user-images.githubusercontent.com/108900299/236593948-5a918187-27a7-4f5f-ac64-3b3147be8825.png" height="300">

**Note:** `Preload Custom Textures` is no longer recommended. Leave `Preload Custom Textures` off

#### How to Install Custom Textures

**Note:** Your texture pack may already come properly named and packaged with the correct `TitleID` and texture files. You may place the included texture pack folder directly into `C:\Users\USERNAME\emudeck\EmulationStation-DE\Emulators\citra\user\load\textures`. You do not need the following section if this is the case.

##### Option 1

1. Right-click on your game in the games list and select `Open Custom Texture Location` to open the folder where custom textures will be loaded from
2. Place your custom texture files directly into the opened folder

##### Option 2

1. Open [https://3ds.jdbye.com/?details=USA&split=0&display=0](https://3ds.jdbye.com/?details=USA&split=0&display=0) in a browser
2. Note down the `Title ID` for the game
    * For example, The Legend of Zelda: Majora's Mask 3D's (US) Title ID is: `0004000000125500` 
3. Open `C:\Users\USERNAME\emudeck\EmulationStation-DE\Emulators\citra\user\load\textures`
    * If the `load` and `textures` folder do not exist, create them
4. In the `textures` folder from Step 3, create a folder matching the `TitleID` from Step 2
5. Put your texture files directly into the `TitleID` folder you created in Step 4
6. Your texture pack should now be installed

**IMPORTANT:** Outdated guides will recommend enabling `Preload Custom Textures`. Turning on `Preload Textures` is no longer recommended and will cause a severe performance hit. 

***