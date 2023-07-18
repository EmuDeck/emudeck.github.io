# Cemu is a Wii U Emulator.

Website: [https://cemu.info/](https://cemu.info/)

Github: [https://github.com/cemu-project/Cemu](https://github.com/cemu-project/Cemu)

Compatibility List: [https://compat.cemu.info/](https://compat.cemu.info/)

***

## Cemu Native Table of Contents

1. [Getting started with Cemu](#getting-started-with-cemu)
    - [Setting up Cemu Questionnaire](#setting-up-cemu-questionnaire)
    - [Configuration](#cemu-configuration)
    - [How to Update Cemu](#how-to-update-cemu)
    - [How to Launch Cemu](#how-to-launch-cemu)
    - [File Formats](#cemu-file-formats)
    - [How to Convert to WUA](#how-to-convert-to-wua)
    - [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    - [Hotkeys](../../controls-and-hotkeys/windows/hotkeys.md#cemu-wii-u)

2. [Common Issues](#common-issues)

3. [Cemu Tips and Tricks](#cemu-tips-and-tricks)

***

## Getting started with Cemu
[Back to the Top](#cemu-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue.

Cemu is a fairly straight-forward emulator to set up, _if_ you use decrypted ROMs. Place your ROMs in `Emulation\roms\wiiu`. **Do not** install your games. No additional setup is required. 

Read the [Configuration](#cemu-configuration) section to learn more about Cemu and its folder locations. 

For updates and DLC, read [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates).  

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Wii U ROMs:

* `EmulationStation-DE`
* `Nintendo WiiU - Cemu (.rpx)` or `Nintendo WiiU - Cemu (.wud, .wux, .wua)`
    * Read the [File Formats](#cemu-file-formats) section to learn more about these various file formats
    * `.rpx` and `.wua` are decrypted ROM formats
* `Emulators`

_If_ you intend on using encrypted ROMs, proceed to the [Setting up Cemu Questionnaire](#setting-up-cemu-questionnaire). 

***

### Setting up Cemu Questionnaire
[Back to the Top](#cemu-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue. If you use decrypted ROMs, you do not need the following questionnaire. 

**Setting up Cemu Questionnaire**

1. Is your ROM encrypted? If yes, do you have a `keys.txt` in the right place with the correct keys for your games in the `keys.txt` file?
    1. What are keys?: Keys are required to decrypt Wii U ROMs. Your `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method of obtaining keys is piracy and cannot be discussed here or on the EmuDeck discord.
    2. Which Cemu ROM Formats are encrypted?: [File Formats](#cemu-file-formats)
    3. `keys.txt` Location: `C:\Users\{username}\emudeck\EmulationStation-DE\Emulators\cemu`
    4. If your ROM is NUS Format (a folder with .h3 and .app files), you will need to decrypt your ROM into the Loadiine format (folder format with three subfolders - code, content, meta). Decryption methods cannot be discussed here or on the EmuDeck discord.
2. Is your ROM decrypted?
    1. Which Cemu ROM Formats are decrypted?: [File Formats](#cemu-file-formats)
    2. If your ROM is decrypted, place the ROM in `Emulation\roms\wiiu`. Your game should launch without needing any keys. 
3. If you are getting an `Unable to launch game` error, did you place the `keys.txt` in the right place?
    1. `keys.txt` Location: `C:\Users\{username}\emudeck\EmulationStation-DE\Emulators\cemu`
4. If you placed the `keys.txt` in the right place, and your ROM is still not working, does your `keys.txt` have the correct key for the ROM?
    1. Even if you placed a key for your game in `keys.txt`, you may still have the incorrect key. 
5. Did you transfer your ROM from another computer and did you compare file sizes to ensure it transferred successfully? 

***

### Cemu Configuration
[Back to the Top](#cemu-table-of-contents)

**IMPORTANT:** Cemu is shifting away from encrypted ROMs (WUX, WUD). It is strongly recommended you use decrypted ROMs (Loadiine, WUA). Decrypted ROMs do not need any additional configuration and should launch without any issue.

***

### How to Update Cemu
[Back to the Top](#cemu-table-of-contents)

***

### How to Launch Cemu
[Back to the Top](#cemu-table-of-contents)

***

### Cemu File Formats
[Back to the Top](#cemu-table-of-contents)

* Loadiine (rpx)
    * Three folders (code, content, meta) 
    * Folders should be inside a folder with the name of the game. This game folder is placed in `Emulation\roms\wiiu`
    * **Visual Reference:** <img src="https://user-images.githubusercontent.com/108900299/194643616-cdf86618-1869-4ba5-b95e-f14066e77ac1.png" width="300">
    * Decrypted, does not require `keys.txt` 
* WUA 
    * Decrypted, does not require `keys.txt`
* WUX
    * Encrypted, requires `keys.txt` in `C:\Users\{username}\emudeck\EmulationStation-DE\Emulators\cemu`
* WUD 
    * Encrypted, requires `keys.txt` in `C:\Users\{username}\emudeck\EmulationStation-DE\Emulators\cemu`
* NUS
    * A folder with `.h3` and `.app` files
    * Encrypted, can be decrypted into a `Loadiine (rpx)` folder. Decryption methods cannot be discussed here or on the EmuDeck discord.

**IMPORTANT:**

* Some of these formats may require keys. We cannot help you get these. Place your `keys.txt` in: `C:\Users\{username}\emudeck\EmulationStation-DE\Emulators\cemu`
    * `keys.txt` needs to contain keys (one key per game) that must be dumped from a Wii U console. Any other method is piracy and cannot be discussed here or on the EmuDeck discord.
* Once you put ROMs in place, you must refresh the list of games by right clicking in the Cemu UI and clicking `Refresh Games List`.
    * Your game will not show up in Cemu until you refresh. 
* Refer to [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates), for DLC and Updates specifically 

***

### How to Convert to WUA
[Back to the Top](#cemu-table-of-contents)

***

### How to Manage DLC and Updates
[Back to the Top](#cemu-table-of-contents)

***

### Cemu Hotkeys
[Back to the Top](#cemu-table-of-contents)

***

## Common Issues
[Back to the Top](#cemu-table-of-contents)

***

## Cemu Tips and Tricks
[Back to the Top](#cemu-table-of-contents)

***