# Citra is a Nintendo 3DS Emulator.

Website: [https://citra-emu.org/](https://citra-emu.org/)

Github: [https://github.com/citra-emu/citra](https://github.com/citra-emu/citra)

Compatibility List: [https://citra-emu.org/game/](https://citra-emu.org/game/)

***

## Citra Table of Contents

1. [Getting Started with Citra](#getting-started-with-citra)
    - [Configuration](#citra-configuration)
    - [How to Update Citra](#how-to-update-citra)
    - [How to Launch Citra in Desktop Mode](#how-to-launch-citra-in-desktop-mode)
    - [File Formats](#citra-file-formats)
    - [How to Manage DLC and Updates](#how-to-manage-dlc-and-updates)
    - [Hotkeys](#citra-hotkeys)

2. [Common Issues](#citra-common-issues)
    - [Why did my game suddenly stop working?](#why-did-my-game-suddenly-stop-working)

2. [Citra Tips and Tricks](#citra-tips-and-tricks)
    - [How to Configure Gyro](#how-to-configure-gyro)
    - [How to Optimize Performance (Power Tools)](#how-to-optimize-performance-power-tools)
    - [How to Install Custom Textures](#how-to-install-custom-textures)
    - [How to Use Cheats](#how-to-use-cheats)
    - [How to Configure Bottom Screen as PiP](#how-to-configure-bottom-screen-as-pip)
    - [How to Configure Bottom Screen With Opacity](#how-to-configure-bottom-screen-with-opacity)

***

## Getting Started with Citra
[Back to the Top](#citra-table-of-contents)

Citra is a fairly straight-forward emulator to set up. Place your ROMs in `Emulation/roms/n3ds` or `Emulation/roms/3ds`. No additional setup is required if you are using decrypted ROMs. Read the [Configuration](#citra-configuration) section to learn more about Citra and its folder locations. The [Configuration](#citra-configuration) section covers where to place your `aes_keys.txt` if you are using encrypted ROMs. 

To launch your ROMs in game mode, use Steam ROM Manager and use one of the following parsers to play your Citra ROMs:

* `EmulationStation-DE`
* `Nintendo 3DS - Citra` 
* `Emulators`


***

### Citra Configuration
[Back to the Top](#citra-table-of-contents)

* Type of Emulator: Flatpak
* Config Location: `/home/deck/.var/app/org.citra_emu.citra`
* ROM location: `Emulation/roms/3ds` or `Emulation/roms/n3ds`
* `aes_keys.txt` location: `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu/sysdata/` 
    * _Only necessary if the 3DS ROM is encrypted_
    * If the `sysdata` folder does not exist, create it. 
* Saves Location:
    * Symlink: `Emulation/saves/citra/saves`
    * Target: `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu/sdmc`
* Savestates Location:
    * Symlink: `Emulation/saves/citra/states/`
    * Target: `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu/states`

**Note:** `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders.

#### Works With
* Steam ROM Manager
* EmulationStation-DE

***

### How to Update Citra
[Back to the Top](#citra-table-of-contents)

**How to Update Citra**

* Update through `Discover` (Shopping bag icon)
* Through the `Update your Emulators & Tools` section on the `Manage Emulators` page in the `EmuDeck` application


***

### How to Launch Citra in Desktop Mode

**How to Launch Citra in Desktop Mode**

* Launch `Citra` from the Applications Launcher (Steam Deck icon in the bottom left of the taskbar)
* Launch the script from `Emulation/tools/launchers`, `citra.sh`
* Launch the emulator from `Steam` after adding it via the `Emulators` parser in `Steam ROM Manager`


***

### Citra File Formats
[Back to the Top](#citra-table-of-contents)

* .3ds 
* .3dsx 
* .app 
* .axf 
* .cci 
* .cxi 
* .elf

**IMPORTANT:** 

* `.cia` can only be used if you install it through Citra. **Do not** place your `.cia` ROMs in either the `Emulation/roms/3ds` or the `Emulation/roms/n3ds` folders. The .cia file format **is not** compatible with Steam ROM Manager and EmulationStation-DE.

***

### How to Manage DLC and Updates
[Back to the Top](#citra-table-of-contents)

Read: [https://citra-emu.org/wiki/dumping-updates-and-dlcs/](https://citra-emu.org/wiki/dumping-updates-and-dlcs/) to learn how to properly dump your DLC and update files from your 3DS.

DLC and update files typically are .CIAs, an installable file format through Citra. After installing your DLC or updates, you may discard these files. 

**How to Install DLC and Updates**

1. In Desktop Mode, open Citra
2. Click `File` in the top left 
3. Click `Install CIA...`
4. Navigate to your DLC or update files

***

### Citra Hotkeys
[Back to the Top](#citra-table-of-contents)

Citra comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - Citra 3DS`. The hotkeys below can only be used if you have the Steam Input profile active.

|        Hotkey        |                 Citra                 |
|:--------------------:|:-------------------------------------:|
| Full Screen Toggle   | `L4`                                  |
| Layout Toggle        | `L5`                                  |
| Swap Screens         | `R4`                                  |
| Quit                 | Long Press `R5`                       |
| Save State           | Left Trackpad Touch Menu              |
| Load State           | Left Trackpad Touch Menu              |
| Fast Forward         | Left Trackpad Touch Menu              |
| Pause                | Left Trackpad Touch Menu              |
| Exit                 | `Double Tap` Left Trackpad Touch Menu |
| Full Screen          | Left Trackpad Touch Menu              |
| Swap Screens         | Left Trackpad Touch Menu              |
| Change Screen Layout | Left Trackpad Touch Menu              |

**Note:** 

* [How to Select a Steam Input Profile](../../emudeck-essentials/steamos/hotkeys.md#how-to-select-a-steam-input-profile)
* [Steam Deck Button Layout](../../emudeck-essentials/steamos/hotkeys.md#steam-deck-button-layout)

***

## Citra Common Issues
[Back to the Top](#citra-table-of-contents)

***

### Why did my game suddenly stop working? 
[Back to the Top](#citra-table-of-contents)

A recent update to some back-end changes may cause some crashing with games that were working previously. To fix this issue, you will need to delete the `shaders` folder.

**Here's How**

1. In Desktop Mode, open `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu`
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
2. Delete the `shaders` folder
3. Try your game again

This should be a one-time fix and your games should work again moving forward. 

***

## Citra Tips and Tricks
[Back to the Top](#citra-table-of-contents)

***

### How to Configure Gyro
[Back to the Top](#citra-table-of-contents)

Gyro for Citra requires SteamDeckGyroDSU. SteamDeckGyroDSU can be installed via EmuDeck, or it can be installed manually.

Visit [SteamDeckGyroDSU](../../emudeck-application/steamos/emudeck-application-101.md#steamdeckgyrodsu) to learn how to install and utilize SteamDeckGyroDSU. 

***

### How to Optimize Performance (Power Tools)
[Back to the Top](#citra-table-of-contents)

Visit [Power Tools](../../emudeck-application/steamos/emudeck-application-101.md#power-tools) to learn how to optimize performance using Power Tools. 

***

### How to Install Custom Textures
[Back to the Top](#citra-table-of-contents)

Here's how to install custom textures for Citra:

#### Citra Configuration

1. Open the Citra emulator. Click `Emulation` in the top left. Click `Configuration`, `Graphics`, and check both `Use Custom Textures` and `Async Custom Texture Loading`
    * <img src="https://user-images.githubusercontent.com/108900299/236593948-5a918187-27a7-4f5f-ac64-3b3147be8825.png" height="300">

**Note:** `Preload Custom Textures` is no longer recommended. Leave `Preload Custom Textures` off

#### How to Install Custom Textures

**Note:** Your texture pack may already come properly named and packaged with the correct `TitleID` and texture files. You may place the included texture pack folder directly into `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu/load/textures`. You do not need the following section if this is the case.

1. Open [https://3ds.jdbye.com/?details=USA&split=0&display=0](https://3ds.jdbye.com/?details=USA&split=0&display=0) in a browser
2. Note down the `Title ID` for the game
    * For example, The Legend of Zelda: Majora's Mask 3D's (US) Title ID is: `0004000000125500` 
3. Open `/home/deck/.var/app/org.citra_emu.citra/data/citra-emu/load/textures`
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
    * If the `load` and `textures` folder do not exist, create them
4. In the `textures` folder from Step 3, create a folder matching the `TitleID` from Step 2
5. Put your texture files directly into the `TitleID` folder you created in Step 4
6. Your texture pack should now be installed



**IMPORTANT:** Outdated guides will recommend enabling `Preload Custom Textures`. Turning on `Preload Textures` is no longer recommended and will cause a severe performance hit. 


***

### How to Use Cheats
[Back to the Top](#citra-table-of-contents)


**Cheat Sources**

_This list is not exhaustive_

* [https://github.com/iSharingan/CTRPF-AR-CHEAT-CODES/tree/master/Cheats](https://github.com/iSharingan/CTRPF-AR-CHEAT-CODES/tree/master/Cheats)

#### How to Use Cheats

1. In Desktop Mode, open Citra
2. Right click a game of your choice, click `Properties`
    * <img src="https://user-images.githubusercontent.com/108900299/236593492-91df7ce3-efae-4bb7-a559-7c252637a2e4.png" height="300">
3. Click the `Cheats` tab
    * <img src="https://user-images.githubusercontent.com/108900299/236593531-c045ab6e-3779-4c5a-b6ce-0af4a243f121.png" height="300">
4. Click `Add Cheat`
5. Name the cheat and add the code to the box under `Code:`
    * <img src="https://user-images.githubusercontent.com/108900299/236593755-85163908-cc80-4684-a343-01f180f14365.png" height="300">
6. Click Save in the top right
7. Check the box to the left of the cheat to enable it
    * <img src="https://user-images.githubusercontent.com/108900299/236593806-1f8973a4-cd67-4c35-b18e-14a5fbb30105.png" height="300"> 

***

### How to Configure Bottom Screen as PiP
[Back to the Top](#citra-table-of-contents)

Credit: `NexLevel`

Citra allows you to configure the bottom screen as a sort of PiP (Picture in Picture) overlay on the top screen, by editing the qt-config file. 

**Here's How**

1. Open the folder: `/home/deck/.var/app/org.citra_emu.citra/config/citra-emu/`
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
2. Right click `qt-config.ini`, and click `Open with Kate` or a text editor of your choice
3. Locate the `[Layout]` section
4. Replace the content of the `[Layout]` section with the below text:

         
         [Layout]
         anaglyph_shader_name=dubois (builtin)
         anaglyph_shader_name\default=true
         custom_bottom_bottom=800
         custom_bottom_bottom\default=true
         custom_bottom_left=520
         custom_bottom_left\default=true
         custom_bottom_right=760
         custom_bottom_right\default=true
         custom_bottom_top=620
         custom_bottom_top\default=true
         custom_layout=true
         custom_layout\default=true
         custom_second_layer_opacity=33
         custom_second_layer_opacity\default=true
         custom_top_bottom=784
         custom_top_bottom\default=true
         custom_top_left=0
         custom_top_left\default=true
         custom_top_right\default=true
         custom_top_top=16
         custom_top_top\default=true
         factor_3d=0
         factor_3d\default=true
         filter_mode=true
         filter_mode\default=true
         large_screen_proportion=@Variant(\0\0\0\x87@\x80\0\0)
         large_screen_proportion\default=true
         layout_option=1
         layout_option\default=false
         mono_render_option=0
         mono_render_option\default=true
         pp_shader_name=none (builtin)
         pp_shader_name\default=true
         render_3d=0
         render_3d\default=true
         swap_screen=false
         swap_screen\default=true
         upright_screen=false
         upright_screen\default=true
         

5. (Optional) To move the PiP screen up, try setting `custom_top_top=0` and `custom_top_bottom=768`
6. Save and exit out of the text file, Citra will now be using the bottom screen as PiP

**Note:** To revert back to defaults, the default `[Layout]` section is: 

```
[Layout]
anaglyph_shader_name=dubois (builtin)
anaglyph_shader_name\default=true
custom_bottom_bottom=480
custom_bottom_bottom\default=true
custom_bottom_left=40
custom_bottom_left\default=true
custom_bottom_right=360
custom_bottom_right\default=true
custom_bottom_top=240
custom_bottom_top\default=true
custom_layout=false
custom_layout\default=true
custom_second_layer_opacity=100
custom_second_layer_opacity\default=true
custom_top_bottom=240
custom_top_bottom\default=true
custom_top_left=0
custom_top_left\default=true
custom_top_right=400
custom_top_right\default=true
custom_top_top=0
custom_top_top\default=true
factor_3d=0
factor_3d\default=true
filter_mode=true
filter_mode\default=true
large_screen_proportion=@Variant(\0\0\0\x87@\x80\0\0)
large_screen_proportion\default=true
layout_option=2
layout_option\default=false
mono_render_option=0
mono_render_option\default=true
pp_shader_name=none (builtin)
pp_shader_name\default=true
render_3d=0
render_3d\default=true
swap_screen=false
swap_screen\default=true
upright_screen=false
upright_screen\default=true
```


***

### How to Configure Bottom Screen With Opacity
[Back to the Top](#citra-table-of-contents)

Credit: `NexLevel`

A recent update of Citra allows the ability to set the opacity on the bottom screen. In combination with setting the bottom screen as a PiP overlay, you can create a Citra layout that looks like the following: 

**Example 1:** <img src="https://user-images.githubusercontent.com/108900299/219829080-3e871ada-cde0-44b5-9781-0294a9a9fc7b.png" height="300">

**Example 2:** <img src="https://user-images.githubusercontent.com/108900299/219829095-8fe0e1e9-aa15-4750-b917-899373ce10e7.png" height="300">
 
**Here's How**

1. Open the folder: `/home/deck/.var/app/org.citra_emu.citra/config/citra-emu/`
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
2. Right click `qt-config.ini`, and click `Open with Kate` or a text editor of your choice
3. Locate the `[Layout]` section
4. Replace the content of the `[Layout]` section with the below text:

         
         [Layout]
         anaglyph_shader_name=dubois (builtin)
         anaglyph_shader_name\default=true
         custom_bottom_bottom=800
         custom_bottom_bottom\default=true
         custom_bottom_left=520
         custom_bottom_left\default=true
         custom_bottom_right=760
         custom_bottom_right\default=true
         custom_bottom_top=620
         custom_bottom_top\default=true
         custom_layout=true
         custom_layout\default=true
         custom_second_layer_opacity=33
         custom_second_layer_opacity\default=true
         custom_top_bottom=784
         custom_top_bottom\default=true
         custom_top_left=0
         custom_top_left\default=true
         custom_top_right=1280
         custom_top_right\default=true
         custom_top_top=16
         custom_top_top\default=true
         factor_3d=0
         factor_3d\default=true
         filter_mode=true
         filter_mode\default=true
         large_screen_proportion=@Variant(\0\0\0\x87@\x80\0\0)
         large_screen_proportion\default=true
         layout_option=1
         layout_option\default=false
         mono_render_option=0
         mono_render_option\default=true
         pp_shader_name=none (builtin)
         pp_shader_name\default=true
         render_3d=0
         render_3d\default=true
         swap_screen=false
         swap_screen\default=true
         upright_screen=false
         upright_screen\default=true
         

5. To adjust the PiP opacity, the opacity can be any integer between 1-100
6. Save and exit out of the text file, Citra will now be using the bottom screen as PiP with custom opacity

**Note:** To revert back to defaults, the default `[Layout]` section is: 

```
[Layout]
anaglyph_shader_name=dubois (builtin)
anaglyph_shader_name\default=true
custom_bottom_bottom=480
custom_bottom_bottom\default=true
custom_bottom_left=40
custom_bottom_left\default=true
custom_bottom_right=360
custom_bottom_right\default=true
custom_bottom_top=240
custom_bottom_top\default=true
custom_layout=false
custom_layout\default=true
custom_second_layer_opacity=100
custom_second_layer_opacity\default=true
custom_top_bottom=240
custom_top_bottom\default=true
custom_top_left=0
custom_top_left\default=true
custom_top_right=400
custom_top_right\default=true
custom_top_top=0
custom_top_top\default=true
factor_3d=0
factor_3d\default=true
filter_mode=true
filter_mode\default=true
large_screen_proportion=@Variant(\0\0\0\x87@\x80\0\0)
large_screen_proportion\default=true
layout_option=2
layout_option\default=false
mono_render_option=0
mono_render_option\default=true
pp_shader_name=none (builtin)
pp_shader_name\default=true
render_3d=0
render_3d\default=true
swap_screen=false
swap_screen\default=true
upright_screen=false
upright_screen\default=true
```

***