# Hotkeys, snazzy button combos for your favorite emulators. 

***

## Hotkeys Table of Contents

1. [Configuration](#hotkeys-configuration)
    - [Steam Deck Button Layout](#steam-deck-button-layout)

2. [Steam Input Profiles](#steam-input-profiles)
    - [How to Select A Steam Input Profile](#how-to-select-a-steam-input-profile)
    - [A Breakdown of the Steam Input Profiles](#a-breakdown-of-the-steam-input-profiles)
    - [Emulator Button Combinations Profile](#emulator-button-combinations-profile)
    - [Emulator Frontends Button Combinations Profile](#emulator-frontends-button-combinations-profile)
    - [Emulator Frontends Radial Menu Profile](#emulator-frontends-radial-menu-profile)
        - [How to Map Per-Game Profiles](#how-to-map-per-game-profiles)

3. [Hotkeys](#hotkeys)
    - [General](#general)
        - [Global](#global)
    - [Atari Hotkeys](#atari-hotkeys)
        - [BigPEmu (Atari Jaguar)](#bigpemu-atari-jaguar)
    - [Microsoft Hotkeys](#microsoft-hotkeys)
        - [Xemu (OG Xbox)](#xemu-og-xbox)
        - [Xenia (Xbox 360)](#xenia-xbox-360)   
    - [Multisystems Hotkeys](#multisystems-hotkeys)
        - [MAME](#mame)
            - [Steam Deck Light Gun Controls](#steam-deck-light-gun-controls)
        - [RetroArch](#retroarch)
            - [List of RetroArch Cores Used by EmuDeck](../../emulators/steamos/retroarch.md#list-of-retroarch-cores-used-by-emudeck)
        - [ScummVM](#scummvm)
    - [Nintendo Hotkeys](#nintendo-hotkeys)
        - [Rosalie's Mupen GUI (N64) (Standalone)](#rosalies-mupen-gui-n64-standalone)
        - [mGBA (GB, GBC, and GBA) (Standalone)](#mgba-gb-gbc-and-gba-standalone)
        - [melonDS (NDS) (Standalone)](#melonds-nds-standalone)
        - [PrimeHack (Metroid Prime Trilogy)](#primehack-metroid-prime-trilogy)
            - [PrimeHack Controls](#primehack-controls)
        - [Dolphin (Gamecube and Wii)](#dolphin-gamecube-and-wii)
        - [Citra (3DS)](#citra-3ds)
        - [Cemu (Wii U)](#cemu-wii-u)
        - [Ryujinx (Switch)](#ryujinx-switch)
        - [Yuzu (Switch)](#yuzu-switch)
    - [Sega Hotkeys](#sega-hotkeys)
        - [Model 2 Emulator (Sega Model 2)](#model-2-emulator-sega-model-2)
            - [Steam Deck Light Gun Controls](#steam-deck-light-gun-controls-1)
        - [Flycast (Dreamcast) (Standalone)](#flycast-dreamcast-standalone)
            - [Steam Deck Light Gun Controls](#steam-deck-light-gun-controls-2)
        - [Supermodel (Sega Model 3)](#supermodel-sega-model-3)
            - [Steam Deck Light Gun Controls](#steam-deck-light-gun-controls-3)
    - [Sony Hotkeys](#sony-hotkeys)
        - [PPSSPP (PlayStation Portable)](#ppsspp-playstation-portable)
        - [Vita3K (PlayStation Vita)](#vita3k-playstation-vita)
        - [DuckStation (PlayStation 1)](#duckstation-playstation-1)
        - [PCSX2 (PlayStation 2)](#pcsx2-playstation-2)
        - [RPCS3 (PlayStation 3)](#rpcs3-playstation-3)      
    - [Tools Hotkeys](#tools-hotkeys)
        - [Cloud Services](#cloud-services)




***

## Hotkeys Configuration
[Back to the Top](#hotkeys-table-of-contents)

***

### Steam Deck Button Layout
[Back to the Top](#hotkeys-table-of-contents)

**Front:**

<img src="https://user-images.githubusercontent.com/108900299/208781446-a65f52f0-2071-4d61-9830-9e56de92b5fb.png" height="400">



**Back and Top:** 

<img src="https://user-images.githubusercontent.com/108900299/208781519-b3e91fc3-1a71-4aa4-90f2-a49afa727280.png" height="400">


***

## Steam Input Profiles
[Back to the Top](#hotkeys-table-of-contents)

***

### How to Select A Steam Input Profile
[Back to the Top](#hotkeys-table-of-contents)

#### Preface 

EmuDeck comes with a few Steam Input profiles to make hotkeys easier to use in a few emulators. If an emulator does not have a Steam Input Profile, make sure you're on `Gamepad with Joystick Trackpad`, otherwise some controls may not work.

#### Selecting  Steam Input Profiles

In Game Mode, single click the game you would like to change the Steam Input Profile for, and click the `Controller Icon` on the right of the screen. Click the layout (whichever name it is currently set to) at the top, and you will see a drop-down menu. 

For a visual, watch the following GIF (DuckStation is being used as an example):

<img src="https://user-images.githubusercontent.com/108900299/194612525-670e56a1-a16a-4dbf-a03f-85d14e7f7b76.gif?raw=true"/>

***

### A Breakdown of the Steam Input Profiles
[Back to the Top](#hotkeys-table-of-contents)

For a few emulators, binding hotkeys to controller combinations is not supported. For these emulators, only binding hotkeys to keyboard keys or singular button presses was supported. For these emulators specifically, Steam input profiles were used. 

In the previous EmuDeck update, a mix of touch and radial menu profiles were utilized to bind hotkeys to the left trackpad. In the current update, this has been replaced with the `Emulator Button Combinations Profile` and `Emulator Frontends Button Combinations Profile` profiles. For more details on these two profiles, see [Emulator Button Combinations Profile](#emulator-button-combinations-profile) and [Emulator Frontends Button Combinations Profile](#emulator-frontends-button-combinations-profile). In short, these profiles bind keyboard hotkeys such as `Alt` + `F4` to controller combinations such as `Select` + `Start` to exit a game. 

The reason for this change was twofold:

* To standardize hotkeys across all emulators. When you open an emulator, the expectation is that you will always use the same hotkeys
* To allow for support with external controllers in profiles that previously relied on the Steam Deck trackpads. With the new profiles, you can use any external controller and still use hotkeys that previously required hotkeys to be bound to a radial or touch menu

There are a few cases still where hotkeys are still not standardized due to lack of emulator features. These are listed below.

* BigPEmu - Fast Forward and Rewind are bound to Start + R2 or L2. For most emulators, it is bound to Select + L2 or R2
* Flycast (Standalone) - The hotkey system in Flycast (Standalone) is restrictive compared to other emulators. For a full list of Flycast (Standalone) hotkeys, see [Flycast (Dreamcast) (Standalone)](#flycast-dreamcast-standalone)
* RetroArch - Increasing and decreasing the save and load state slots are bound to Start + DPad Right or Left. For most emulators, it is bound to Start + L2 or R2
* Ryujinx - No hotkeys are bound at this time. When controller hotkeys are implemented, EmuDeck will configure these to match the other emulators 

***

#### Emulator Button Combinations Profile
[Back to the Top](#hotkeys-table-of-contents)

Some of the emulators bundled with EmuDeck do not do not support controller hotkeys naturally. These emulators are Cemu, Citra, melonDS (Standalone), and mGBA (Standalone).

To standardize the hotkeys with the other emulators, these profiles require a Steam Input profile that binds keyboard keys to button chords. These button chords allow you to use controller hotkeys with emulators that do not naturally support them.

Typically, this profile will automatically be applied to your shortcuts for Cemu, Citra, melonDS (Standalone), and mGBA (Standalone). To apply it manually, click the `Game Controller` icon in `Game Mode`, change the template to `EmuDeck - Controller Hotkeys`. 

For the specific button combinations, see the following sections:

* [Cemu](#cemu-wii-u)
* [Citra](#citra-3ds)
* [melonDS (Standalone)](#melonds-nds-standalone)
* [mGBA (Standalone)](#mgba-gb-gbc-and-gba-standalone)


***

#### Emulator Frontends Button Combinations Profile
[Back to the Top](#hotkeys-table-of-contents)

The frontends bundled with EmuDeck, ES-DE and Pegasus, come with a Steam Input profile for hotkeys. Typically, this profile will automatically be applied to your shortcuts. To apply it manually, click the `Game Controller` icon in `Game Mode`, change the template to `EmuDeck - Frontend Controller Hotkeys`. 

The `EmuDeck - Frontend Controller Hotkeys` profile comes with two action set layers. The first layer is blank intended for emulators with traditional controller hotkeys. The second layer assigns keyboard keys to button combinations, intended for emulators that do not support controller hotkeys naturally. This layer only covers Cemu, Citra, melonDS (Standalone), and mGBA (Standalone).

For the most part, you will be using the first layer, entitled the "All Hotkeys" layer. However, when you are playing a Cemu, Citra, melonDS (Standalone), or mGBA ROM, hold the `Start` button to switch to the `Cemu, Citra, melonDS (Standalone), and mGBA (Standalone)` layer. 

For the specific button combinations, refer to the various sections on this page depending on which emulator you are using. The hotkeys have been largely standardized and for the most part are identical across emulators. Do note there are still a few exceptions:

* The Flycast (Standalone) emulator 
* RetroArch binds the `Next Save State Slot` and `Previous Save State Slot` to `Start` + `DPad Left` or `DPAd Right` whereas most emulators use `Start` + `R2` or `L2` 


***

#### Emulator Frontends Radial Menu Profile
[Back to the Top](#hotkeys-table-of-contents)

For details on why the `Emulator Frontends Radial Menu Profile` is no longer applied automatically, see [A Breakdown of the Steam Input Profiles](#a-breakdown-of-the-steam-input-profiles).

This profile is intended for emulator frontends such as ES-DE and Pegasus. This profile will **not** be applied automatically. To apply it manually, click the `Game Controller` icon in `Game Mode`, change the template to `EmuDeck - Steam Deck Radial Menus`. All emulators installed and configured by EmuDeck are included in this profile. 

You may also use this profile with any ROM shortcut or emulator shortcut added through Steam ROM Manager. This profile will appear in the drop-down list of your profiles for any of your shortcuts added to Steam.

Use the left trackpad to pull up the menu and **short-press** an icon to switch into the respective profile. The buttons on the various touch and radial menus use a **short-press** to activate the respective hotkey. 

A bonus feature of this profile is allowing you to map per-game profiles in emulator frontends such as ES-DE and Pegasus. 

##### How to Map Per-Game Profiles

1. To apply the Steam Input profile, click the `Game Controller` icon in `Game Mode`, change the template to `EmuDeck - Steam Deck Radial Menus`
2. On the `Game Controller` screen, click the `Edit Layout`
3. Press `R1` until you see `Blank Profile #` and select one of the 10 `Blank Profiles`
    * There will be 10 Blank Profile action sets
4. On the `Blank Profile` page you selected, remap your controls
5. (Optional) To rename the blank icon in the radial menu:
    * Click `Virtual Menus` on the left side of the screen in the `Controller Settings` menu 
    * Click the `Pencil` icon to the right of `Blank Profile Selector`
    * On the profile # you selected in 3 and 4, click the `Gear` icon, click `Rename command`, and rename your profile
6. When you are finished, exit out and open the frontend
7. On the left trackpad, select the `Blank Profile Selector` icon and select the matching `Blank Profile` number (or your renamed profile) to the profile you mapped in Step 3

***

## Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

***

### General
[Back to the Top](#hotkeys-table-of-contents)

#### Global
[Back to the Top](#hotkeys-table-of-contents)

These hotkeys only work in Game Mode and can be used for any Steam or Non-Steam game. 

Hold the `Steam` button to view the list on your Steam Deck as well.

The `Steam` button in the chart below is interchangeable with the `...` (QAM) button. For example, to "Force Game Shutdown", you can either hold `Steam` and the `B` button or hold `...` and the `B` button. 

{{ read_csv('global-steam-deck-hotkeys.csv') }}


***

### Atari Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

***

#### BigPEmu (Atari Jaguar)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('bigpemu-hotkeys.csv') }}


***

### Microsoft Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

#### Xemu (OG Xbox)
[Back to the Top](#hotkeys-table-of-contents)

N/A

***

#### Xenia (Xbox 360)
[Back to the Top](#hotkeys-table-of-contents)

N/A

***

#### Multisystems Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

***

### MAME
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('mame-hotkeys.csv') }}

* If you make any changes in the Quick Menu while in game, make sure to use one of the `Exit Emulator` hotkeys to close out of the game to ensure any changes you made are saved. If you use `STEAM` + the `Exit game` button, your changes **will not** be saved.

#### Steam Deck Light Gun Controls

MAME also comes with a `EmuDeck - Steam Deck Light Gun Controls` profile intended to be used with light gun games. To use this profile, apply it manually. For instructions, see [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile).

{{ read_csv('emudeck-steam-deck-light-gun-controls.csv') }}


***

### RetroArch
[Back to the Top](#hotkeys-table-of-contents)

[List of RetroArch Cores Used by EmuDeck](../../emulators/steamos/retroarch.md#list-of-retroarch-cores-used-by-emudeck)

{{ read_csv('retroarch-hotkeys.csv') }}


**Note:** 

* Screenshot Folder Location: `/home/deck/.var/app/org.libretro.RetroArch/config/retroarch/screenshots`
* The `Blow Mic` hotkey only blows white noise. It cannot be used to speak into the Steam Deck microphone. The white noise may not be strong enough to progress in some games

***

### ScummVM
[Back to the Top](#hotkeys-table-of-contents)

N/A

***

### Nintendo Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

***

#### Rosalie's Mupen GUI (N64) (Standalone)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('rmg-hotkeys.csv') }}

**These hotkeys are for Rosalie's Mupen GUI, a standalone N64 emulator. These hotkeys are not for the Mupen64Plus-Next RetroArch core. For more information on RetroArch and the Mupen64Plus-Next RetroArch core hotkeys, visit [RetroArch](#retroarch).**

***

#### mGBA (GB, GBC, and GBA) (Standalone)
[Back to the Top](#hotkeys-table-of-contents)

mGBA comes with a Steam Input profile for Hotkeys. When playing mGBA ROM shortcuts through Steam, the   `EmuDeck - Controller Hotkeys` profile will automatically be applied so you may use the below hotkeys. For more info, see [Emulator Button Combinations Profile](#emulator-button-combinations-profile).

When using a frontend (ES-DE, Pegasus, or the emulator itself), the `EmuDeck - Frontend Controller Hotkeys` will automatically be applied. Hold `Start` for a few seconds to switch to the action set required to use the below hotkeys. For more info, see [Emulator Frontends Button Combinations Profile](#emulator-frontends-button-combinations-profile).

  {{ read_csv('mgba-hotkeys.csv') }}


**Note**

* For a tutorial on how to select Steam Input Profiles, see [How to Select a Steam Input Profile](#how-to-select-a-steam-input-profile)
* **These hotkeys are for mGBA, a standalone Nintendo Game Boy, Game Boy Color and Game Boy Advance emulator. These hotkeys are not for the mGBA RetroArch core. For more information on RetroArch and the mGBA RetroArch core hotkeys, visit [RetroArch](#retroarch)**
* If you would like to use the old touch menus, apply the `EmuDeck - Steam Deck Radial Menus` profile instead

***

#### melonDS (NDS) (Standalone)
[Back to the Top](#hotkeys-table-of-contents)

melonDS comes with a Steam Input profile for Hotkeys. When playing melonDS ROM shortcuts through Steam, the   `EmuDeck - Controller Hotkeys` profile will automatically be applied so you may use the below hotkeys. For more info, see [Emulator Button Combinations Profile](#emulator-button-combinations-profile).

When using a frontend (ES-DE, Pegasus, or the emulator itself), the `EmuDeck - Frontend Controller Hotkeys` will automatically be applied. Hold `Start` for a few seconds to switch to the action set required to use the below hotkeys. For more info, see [Emulator Frontends Button Combinations Profile](#emulator-frontends-button-combinations-profile).

{{ read_csv('melonds-hotkeys.csv') }}


**Note**

* For a tutorial on how to select Steam Input Profiles, see [How to Select a Steam Input Profile](#how-to-select-a-steam-input-profile)
* **These hotkeys are for melonDS, a standalone NDS emulator. These hotkeys are not for the melonDS RetroArch core. For more information on RetroArch and the melonDS RetroArch core hotkeys, visit [RetroArch](#retroarch)**
* If you would like to use the old radial menus, apply the `EmuDeck - Steam Deck Radial Menus` profile instead



***

#### PrimeHack (Metroid Prime Trilogy)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('primehack-hotkeys.csv') }}

##### PrimeHack Controls

{{ read_csv('primehack-controls.csv') }}

* When in the `Morph Ball` state, the `A` button becomes the `Spring Ball` button.
* EmuDeck includes a texture pack that matches Metroid Prime's button prompts to the buttons in the above chart. 
* The Steam Input profile for PrimeHack is: `Gamepad with Joystick Trackpad`. Community Layouts conflict with EmuDeck's pre-configured controls. 
* Only `Metroid Prime Trilogy` (Wii)'s controls are configured. The Gamecube versions do not have controls configured at this time.



***

#### Dolphin (Gamecube and Wii)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('dolphin-hotkeys.csv') }}


**Note:** If you open Dolphin directly and then launch a game, you may use the full screen hotkey `Start` + `L3`. However, if you launch a GameCube or a Wii game as a shortcut through Steam, ES-DE, or Pegasus, this hotkey **will not** work. 

**List of Wii Profiles Included with EmuDeck**

* Wiimote with Nunchuk
* Wiimote with Nunchuk and Touchpad Support
* Wiimote with No Attachment
* Wiimote with No Attachment and Touchpad Support
* Wii Classic Controller

***

#### Citra (3DS)
[Back to the Top](#hotkeys-table-of-contents)

Citra comes with a Steam Input profile for Hotkeys. When playing Citra ROM shortcuts through Steam, the   `EmuDeck - Controller Hotkeys` profile will automatically be applied so you may use the below hotkeys. For more info, see [Emulator Button Combinations Profile](#emulator-button-combinations-profile).

When using a frontend (ES-DE, Pegasus, or the emulator itself), the `EmuDeck - Frontend Controller Hotkeys` will automatically be applied. Hold `Start` for a few seconds to switch to the action set required to use the below hotkeys. For more info, see [Emulator Frontends Button Combinations Profile](#emulator-frontends-button-combinations-profile).

{{ read_csv('citra-hotkeys.csv') }}

**Note**

* For a tutorial on how to select Steam Input Profiles, see [How to Select a Steam Input Profile](#how-to-select-a-steam-input-profile).
* If you would like to use the old radial menus, apply the `EmuDeck - Steam Deck Radial Menus` profile instead

***

#### Cemu (Wii U)
[Back to the Top](#hotkeys-table-of-contents)

Cemu comes with a Steam Input profile for Hotkeys. When playing Cemu ROM shortcuts through Steam, the   `EmuDeck - Controller Hotkeys` profile will automatically be applied so you may use the below hotkeys. For more info, see [Emulator Button Combinations Profile](#emulator-button-combinations-profile).

When using a frontend (ES-DE, Pegasus, or the emulator itself), the `EmuDeck - Frontend Controller Hotkeys` will automatically be applied. Hold `Start` for a few seconds to switch to the action set required to use the below hotkeys. For more info, see [Emulator Frontends Button Combinations Profile](#emulator-frontends-button-combinations-profile).

{{ read_csv('cemu-hotkeys.csv') }}


**Note** 

* The `Blow Mic` hotkey only works if you are using the gamepad.
  * Some users have reported issues with the hotkey not working. As a workaround, you can use the Steam Deck's internal microphone by following these steps:
    
    1. Open the `Steam Deck Settings`.
    2. Navigate to `Audio` > `Voice`.
    3. Adjust the desired microphone volume to a value above 0%.
* For a tutorial on how to select Steam Input Profiles, see [How to Select a Steam Input Profile](#how-to-select-a-steam-input-profile).
* If you would like to use touch menus, apply the `EmuDeck - Steam Deck Radial Menus` profile instead.  

***

#### Ryujinx (Switch)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('ryujinx-hotkeys.csv') }}


***

#### Yuzu (Switch)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('yuzu-hotkeys.csv') }}


***

### Sega Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

***

#### Model 2 Emulator (Sega Model 2)
[Back to the Top](#hotkeys-table-of-contents)


{{ read_csv('model-2-emulator-hotkeys.csv') }}

#### Steam Deck Light Gun Controls

The Model 2 Emulator also comes with a `EmuDeck - Steam Deck Light Gun Controls` profile intended to be used with light gun games. To use this profile, apply it manually. For instructions, see [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile).

{{ read_csv('emudeck-steam-deck-light-gun-controls.csv') }}

***

#### Flycast (Dreamcast) (Standalone)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('flycast-hotkeys.csv') }}

* When playing arcade games through Flycast, the `Select` button will no longer open the `Quick Menu`. For arcade games specifically, the `Select` button is mapped to `Insert Coin`. For Dreamcast games, the `Select` button is mapped to the `Quick Menu`
* When playing arcade games through Flycast, `STEAM` + `DPad Right` will no longer `Fast Forward`. For arcade games specifically, `STEAM` + `DPad Right` is mapped to `Insert Card`. For Dreamcast games, the `STEAM` + `DPad Right` button is mapped to `Fast Forward`

#### Steam Deck Light Gun Controls

Flycast also comes with a `EmuDeck - Steam Deck Light Gun Controls` profile intended to be used with light gun games. To use this profile, apply it manually. For instructions, see [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile).

{{ read_csv('emudeck-steam-deck-light-gun-controls.csv') }}


***

#### Supermodel (Sega Model 3)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('supermodel-hotkeys.csv') }}

#### Steam Deck Light Gun Controls

Supermodel also comes with a `EmuDeck - Steam Deck Light Gun Controls` profile intended to be used with light gun games. To use this profile, apply it manually. For instructions, see [How to Select a Steam Input Profile](../../controls-and-hotkeys/steamos/hotkeys.md#how-to-select-a-steam-input-profile).

{{ read_csv('emudeck-steam-deck-light-gun-controls.csv') }}

***

### Sony Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

#### PPSSPP (Playstation Portable)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('ppsspp-hotkeys.csv') }}

**These hotkeys are for PPSSPP, a standalone Playstation Portable. These hotkeys are not for the PPSSPP RetroArch core. For more information on RetroArch and the PPSSPP RetroArch core hotkeys, visit [RetroArch](#retroarch).**

***

#### Vita3K (Playstation Vita)
[Back to the Top](#hotkeys-table-of-contents)

N/A

***

#### DuckStation (Playstation 1)
[Back to the Top](#hotkeys-table-of-contents)

**Long Press** to activate hotkeys on the left trackpad touch menu. 

{{ read_csv('duckstation-hotkeys.csv') }}

***

#### PCSX2 (Playstation 2)
[Back to the Top](#hotkeys-table-of-contents)

{{ read_csv('pcsx2-hotkeys.csv') }}


***

#### RPCS3 (Playstation 3)
[Back to the Top](#hotkeys-table-of-contents)

N/A

***

### Tools Hotkeys
[Back to the Top](#hotkeys-table-of-contents)

***

#### Cloud Services
[Back to the Top](#hotkeys-table-of-contents)

These hotkeys are specifically for cloud services, refer to the [Cloud Services](https://github.com/dragoonDorise/EmuDeck/wiki/cloud-services) page for more information.

Cloud Services comes with a Steam Input profile for Hotkeys. Activate the Steam Input profile by clicking the `Game Controller` icon in `Game Mode`, change the template to `Emudeck - Cloud Services`. The hotkeys below can only be used if you have the Steam Input profile active.

By default, the controls are that of a standard gamepad along with:

    - L/R Trackpads being mouse input
    - R Trackpad click is "Left Mouse Click"
    - L Trackpad click is "Right Mouse Click"
    - Pressing "Start + Select" will close the current tab in a web browser
    - Press and hold L4 (Upper left paddle button) to change button layer to "Web Navigation"

"Web Navigation" action layer (need to hold L4 for these keys to be active):

    - Start is "Escape"
    - Select is "Tab"
    - D pad is "Arrow keys"
    - R1 (Right bumper) is "Page Forward"
    - L1 (Left bumper) is "Page Back"
    - R2 (Right trigger) is "Left mouse click"
    - L2 (Left trigger) is "Right mouse click"
    - A is "Play/Pause (Space Key)"
    - B is "Back (Escape Key)"
    - X is "Find in Page (F3)"
    - Y is "Refresh (F5)"
    - Rotate left joystick to scroll: CW scroll down, CCW scroll up

***
