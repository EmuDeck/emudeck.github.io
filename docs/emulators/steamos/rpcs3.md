# RPCS3 is a Sony Playstation 3 Emulator.

Website: [https://rpcs3.net/](https://rpcs3.net/)

Quickstart Guide: [https://rpcs3.net/quickstart](https://rpcs3.net/quickstart)

Github: [https://github.com/RPCS3/rpcs3](https://github.com/RPCS3/rpcs3)

Compatibility List: [https://rpcs3.net/compatibility](https://rpcs3.net/compatibility)

RPCS3 Wiki: [https://wiki.rpcs3.net/index.php?title=Main_Page](https://rpcs3.net/compatibility)

***

## RPCS3 Table of Contents

1. [Getting Started with RPCS3](#getting-started-with-rpcs3)
    - [Configuration](#rpcs3-configuration)
    - [RPCS3 Folder Locations](#rpcs3-folder-locations)
    - [How to Update RPCS3](#how-to-update-rpcs3)
    - [How to Launch RPCS3 in Desktop Mode](#how-to-launch-rpcs3-in-desktop-mode)
    - [File Formats](#rpcs3-file-formats)
    - [Hotkeys](#rpcs3-hotkeys)
    - [How to Manage Updates](#how-to-manage-updates)

2. [RPCS3 Tips and Tricks](#rpcs3-tips-and-tricks)
    - [How to Configure RPCS3 to Work With EmulationStation-DE](#how-to-configure-rpcs3-to-work-with-emulationstation-de)
    - [How to Configure Multiplayer](#how-to-configure-multiplayer)
    - [Special Game Configurations](#special-game-configurations)
    - [How to Set Up the Motion Sensor with External Controllers](#how-to-set-up-the-motion-sensor-with-external-controllers)
    - [How to Roll Back RPCS3 to an Older Version](#how-to-roll-back-rpcs3-to-an-older-version)

***

## Getting Started with RPCS3
[Back to the Top](#rpcs3-table-of-contents)

In order to play a game on RPCS3, you need to install the firmware through the RPCS3 UI. In desktop mode, open RPCS3, either in the application menu or through its shortcut in `Emulation/tools/launchers/rpcs3.sh`. In RPCS3, click File, click Install Firmware. Firmware is provided legally by Sony.

Follow RPCS3's Quickstart Guide for a step by step process on setting up RPCS3: [https://rpcs3.net/quickstart](https://rpcs3.net/quickstart)

Read the [Configuration](#rpcs3-configuration) section to learn more about RPCS3 and its folder locations. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Playstation 3 ROMs:

* `EmulationStation-DE`
    * To play PS3 games in EmulationStation-DE, read: [How to Configure RPCS3 to Work With EmulationStation-DE](#how-to-configure-rpcs3-to-work-with-emulationstation-de)
* `Sony PlayStation 3 - RPCS3 (Extracted ISO/PSN)` or `Sony PlayStation 3 - RPCS3 (Installed PKG)`
    * Read the [File Formats](#rpcs3-file-formats) section to learn more about these various file formats
* `Emulators`

***

### RPCS3 Configuration
[Back to the Top](#rpcs3-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/net.rpcs3.RPCS3`
* Storage Location: `Emulation/storage/rpcs3`
  * Contains: `dev_hdd0` 
      * Contains the following folders: 
          * `disc`
          * `game`
          * `home`
          * `photo`
          * `savedata`
* ROM Location: `Emulation/roms/ps3`
* Firmware: Install the firmware through RPCS3's GUI. Read the [Quickstart Guide](https://rpcs3.net/quickstart) for a tutorial
* Saves: 
    * Symlink: `Emulation/saves/rpcs3/saves`
    * Target: `Emulation/storage/rpcs3/dev_hdd0/home/00000001/savedata`


**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.
* Your game will not show in the RPCS3 UI until you add it manually through the `Add Game` option under `File` in the top left. 

#### Works With
* Steam ROM Manager
* EmulationStation-DE
    * [How to Configure RPCS3 to Work With EmulationStation-DE](#how-to-configure-rpcs3-to-work-with-emulationstation-de)

***

### RPCS3 Folder Locations
[Back to the Top](#rpcs3-table-of-contents)

These file locations apply regardless of where you chose to install EmuDeck (to your internal SSD, to your SD Card, or elsewhere). Some emulator configuration files will be located on the internal SSD as listed below. 

`$HOME` refers to your home folder. If you are on a Steam Deck, this folder will be named `/home/deck` (you will likely not see `deck` in the file path when navigating using the file manager). 

Paths beginning with `Emulation/..` correspond to your EmuDeck install location. If you installed on an SD Card, your path may be `/run/media/mmcblk0p1/Emulation/roms/..`. If you installed on your internal SSD, your path may be `/home/deck/Emulation/roms/..`

**Note:** Folders with a `.` (`.var`, `.local`, `.config`, etc.) at the beginning are hidden by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

`$HOME/.var/app/net.rpcs3.RPCS3`

```
net.rpcs3.RPCS3
├── cache
│   ├── fontconfig
│   ├── mesa_shader_cache
│   │   ├── 17
│   │   ├── 9b
│   │   ├── d6
│   │   └── ea
│   ├── rpcs3
│   │   ├── savestates
│   │   ├── shaderlog
│   │   └── spu_progs
│   └── tmp
├── config
│   ├── kdeglobals
│   ├── pulse
│   │   └── cookie
│   ├── QtProject.conf
│   ├── rpcs3
│   │   ├── captures
│   │   ├── config.yml
│   │   ├── dev_bdvd
│   │   ├── dev_flash
│   │   ├── dev_flash2
│   │   ├── dev_flash3
│   │   ├── dev_hdd1
│   │   │   └── caches
│   │   ├── dev_usb000
│   │   ├── games.yml
│   │   ├── GuiConfigs
│   │   │   └── CurrentSettings.ini
│   │   ├── Icons
│   │   ├── patches
│   │   ├── sounds
│   │   └── uuid
│   └── user-dirs.dirs
└── data
```

`Emulation/storage/rpcs3`

```
rpcs3/
└── dev_hdd0
    ├── disc
    ├── game
    ├── home
    ├── photo
    └── savedata
```

***

### How to Update RPCS3
[Back to the Top](#rpcs3-table-of-contents)

**How to Update RPCS3**

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application

***

### How to Launch RPCS3 in Desktop Mode
[Back to the Top](#rpcs3-table-of-contents)

**How to Launch RPCS3 in Desktop Mode**

* Launch `RPCS3` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `rpcs3.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

### RPCS3 File Formats
[Back to the Top](#rpcs3-table-of-contents)

* Folder Format: `/PS3_GAME/USRDIR/eboot.bin`
    * Place the folder in `Emulation/roms/ps3`
    * **Visual Reference:** <img src="https://user-images.githubusercontent.com/1683513/197632719-71784143-e637-4dc8-81f4-d61c59d4f28c.png" height="300">
    * For more information on the `Folder Format`, read [RPCS3's Quickstart Guide](https://rpcs3.net/quickstart)
        * **Note:** Read the `Dumping Step-by-step` section specifically
* Install `.pkg` files directly through the RPCS3 UI
    * **Note:** You can drag and drop `.pkg` files to the RPCS3 UI
    * `.pkg` files are installed to: `Emulation/storage/rpcs3/dev_hdd0/game/`
* Install `.rap` files directly through the RPCS3 UI
    * **Note:** You can drag and drop `.rap` files to the RPCS3 UI
    * `.rap` files are installed to: `Emulation/storage/rpcs3/dev_hdd0/game/`

**Note:** `.iso` **is not** supported. You **cannot** extract PS3 ISOs into a folder (without decrypting it) and expect a working ROM. Read the `Dumping Step-by-step` section specifically of the [RPCS3 Quickstart Guide](https://rpcs3.net/quickstart) to learn how to extract `.iso` files into a decrypted folder. A ROM ending with the file extension `.iso` is **not supported.**

**Steam ROM Manager Parsers**

* Folder Format: Use the `Sony PlayStation 3 - RPCS3 (Extracted ISO/PSN)` parser
* PKG Format: Use the `Sony PlayStation 3 - RPCS3(Flatpak) (Installed PKG)` parser

***

### RPCS3 Hotkeys
[Back to the Top](#rpcs3-table-of-contents)

N/A

***

### How to Manage Updates
[Back to the Top](#rpcs3-table-of-contents)

Read [https://wiki.rpcs3.net/index.php?title=Help:Installing_Game_Updates](https://wiki.rpcs3.net/index.php?title=Help:Installing_Game_Updates) for a tutorial on how to download and manage PS3 updates. 

The Linux version of the software mentioned in the above article can be found here: [https://github.com/RainbowCookie32/rusty-psn/releases/](https://github.com/RainbowCookie32/rusty-psn/releases/).

***

## RPCS3 Tips and Tricks
[Back to the Top](#rpcs3-table-of-contents)

***

### How to Configure RPCS3 to Work With EmulationStation-DE
[Back to the Top](#rpcs3-table-of-contents)

1. In `Desktop Mode`, open RPCS3
2. Skip this step if you have already added your games to RPCS3:
    * Either: 
        * In the top left click, `File`, click `Add Games`, locate your game
        * In the top left click, `File`, click `Install Packages/Raps/Edats`, and install your PKG
        * For more information, read the [File Formats](#rpcs3-file-formats) section
3. Right click your game, click `Create Shortcut`, click `Create Desktop Shortcut`
4. On your desktop, you should see an icon for your game. Move this icon to `Emulation/roms/ps3`
5. Right click the shortcut, click `Open with Kate` or a text editor of your choice
6. Edit the **beginning** of the `Exec=` line using the following template:
    * Original Line: ``Exec="/app/bin/rpcs3" --no-gui`
    * Updated Line: `Exec="/usr/bin/flatpak" run net.rpcs3.RPCS3 --no-gui`
        * Replace `"/app/bin/rpcs3" --no-gui` with `"/usr/bin/flatpak" run net.rpcs3.RPCS3 --no-gui`
    * **Do not** edit anything on the line after `--no-gui`
7. Example, using Demon Souls: 
    * **Original Line:** `Exec="/app/bin/rpcs3" --no-gui "%%RPCS3_GAMEID%%:BLUS30443"`
        * ![Original Line](../../assets/how-to-configure-rpcs3-with-emulationstation-de-original-line.png)
    * **Updated Line:** `Exec="/usr/bin/flatpak" run net.rpcs3.RPCS3 --no-gui "%RPCS3_GAMEID%:BLUS30443"`
8. Save and close out of the desktop file  
9. (Optional) If the desktop file is opening RPCS3 instead of the game: 
    * In Desktop Mode, right click the desktop file
    * Click `Properties`
    * On the `General` tab, click `Change` to the right of the `Open With` line
    * Under `Application Preference Order`, click `RPCS3`
    * Click `Remove` on the right
    * Click `Apply` in the bottom left and click `OK`
    * Your game should now launch directly 
10. Your game should now show up in and launch directly from EmulationStation-DE 

If you get an `Invalid file or folder` error message, you will need to change the `Alternative Emulator` in EmulationStation-DE for PlayStation 3 to `RPCS3 Shortcut [Standalone]`. 

You may also do this on a per-game basis if you are using a mix of folders and PKGs. On a game, press the `select ` button, scroll down and select `EDIT THIS GAME'S METADATA`, scroll down and select `ALTERNATIVE EMULATOR`, select PS3 and select the corresponding format.

Refer to [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-3](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#sony-playstation-3), for additional information. 


***

### How to Configure Multiplayer
[Back to the Top](#rpcs3-table-of-contents)

RPCS3 comes with a nifty auto-map feature that makes setting up multiplayer a breeze. To set up multiplayer, you simply need to enable the additional ports.

1. Open RPCS3
2. Open the `Pads` menu in the `Settings`
3. For each controller you are using for Player 2, 3, 4, etc, click the respective tab
    * You do not need to adjust any settings for Player 1
4. Under `Handlers`, select `SDL` for each player you are enabling
5. Under `Devices`
    * Player 2: `Steam Virtual Gamepad 2`      
    * Player 3: `Steam Virtual Gamepad 3`      
    * Player 4: `Steam Virtual Gamepad 4`
    * Player 5: `Steam Virtual Gamepad 5`
    * Player 6: `Steam Virtual Gamepad 6`
    * Player 7: `Steam Virtual Gamepad 7`
6. Using `Player 2` as an example:
    * On the `Player 2` configuration screen, after you have selected the appropriate `Device` and `Handler`, click `Refresh` to the right of `Handler`
7. After you are finished enabling any additional players, click `Save` and you may open your game either directly as a shortcut in Steam or through EmulationStation-DE    
8. (Optional) You may need to re-arrange the controller order in Game Mode for your controllers to function as expected. See [How to Re-Arrange the Controller Order](../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) to learn how

***

### Special Game Configurations
[Back to the Top](#rpcs3-table-of-contents)

Some games will take additional setup, requiring mods or an extensive alteration of settings. The EmuDeck Community Creations page collects these configurations in one centralized location. 

You can submit or view special game configurations here: [Special Game Configurations](../../community-creations/steamos/community-creations.md#rpcs3-playstation-3)

***

### How to Set up the Motion Sensor with External Controllers
[Back to the Top](#rpcs3-table-of-contents)

The PlayStation 3 controller, or the DualShock 3 notably had "Sixaxis". Sixaxis refers to the motion sensor used in a handful of games. One of the more popular games that utilized Sixaxis was Folklore. For a full list of games, see [https://www.giantbomb.com/sixaxis-support/3015-5310/games/](https://www.giantbomb.com/sixaxis-support/3015-5310/games/).

Recently, RPCS3 implemented support to allow emulating the Sixaxis through evdev, which exposes the gyro in a large variety of modern controllers (including the Nintendo Switch Pro Controller, 8BitDo Ultimate Controller, and the DualSense). 

At this time, the Steam Deck gyro **cannot** be used. But if you own one of these controllers, you may emulate the Sixaxis through RPCS3.

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
    * You may also connect an external keyboard and mouse
2. Click the bluetooth icon in the bottom right of your taskbar and connect your controller
3. Click the Steam icon in the bottom left of the taskbar and open `RPCS3` 
4. Click `Pads` at the top
5. Under the `Player 1` tab, click the Dropdown box below `Devices` and select your controller
    * To switch back to the default controller layout, make sure `Steam` is open and select `Steam Virtual Gamepad 1`
6. Click `Save`, and exit out of RPCS3

#### Game Mode

1. In Game Mode, connect your controller
2. Select your PlayStation 3 game 
3. On the `Play` screen, select the `Controller` icon to the right of the screen 
4. Select your controller tab at the top
5. Click `Reorder Controllers` and move your external controller to the top
6. Click the `Gear` icon to the right, and click `Disable Steam Input`
    * You may need to restart first for this setting to properly apply
7. Your controller's gyro will now work for this selected game, repeat as needed for your other games

For a video, see below:

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-disable-steam-input.mp4" type="video/mp4">
  </video>
</figure>

#### Post-Configuration

To restore the default Steam Deck controls:

1. Open RPCS3
2. Click `Pads` at the top
3. Under the `Player 1` tab, click the Dropdown box below `Devices` and select `Steam Virtual Gamepad 1`
4. Select `SDL` under `Handlers`
5. Click `Save`, and exit out of RPCS3

(Optional) To restore Steam Input:

1. Select your PlayStation 3 game 
2. On the `Play` screen, select the `Controller` icon to the right of the screen 
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/468d63e3-534c-4270-ac61-06e167d6df48" height="300">
3. Select your controller tab at the top
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/b51a1405-9cdf-4ba3-bebf-db817f057f63" height="300">
4. Click the `Gear` icon to the right, and click `Enable Steam Input`
    * You may need to restart first for this setting to properly apply
5. The controls will be reverted to Steam Input and the Steam Deck controls will be restored

***

### How to Roll Back RPCS3 to an Older Version
[Back to the Top](#rpcs3-table-of-contents)

1. In Desktop Mode, open `Konsole`
2. To see a list of prior versions of the emulator, type:
    * `flatpak remote-info --log flathub net.rpcs3.RPCS3`
    * Each version will have a long accompanying alphanumeric string (the “commit” code). Copy the string for the version you want to downgrade to.
3. To downgrade to the version you want:
    * `flatpak update --commit=put_commit_code_here net.rpcs3.RPCS3`
    * Replace `put_commit_code_here` with the actual code you located in Step 2. 
    * If this line does not work, you may need to type:
        * `sudo flatpak update --commit=put_commit_code_here net.rpcs3.RPCS3`

***