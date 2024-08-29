# Troubleshooting on SteamOS

[TOC]

***

## Basic Troubleshooting

***

### Have you tried restarting?

The classic IT solution, works more often than you think. 

Do note that switching between Desktop Mode and Game Mode **is not** a restart. Properly restart your device and see if the issue is resolved. 

***

### Is the EmuDeck installer not downloading or completing?

Internet issues are an increasingly common issue among Steam Decks, even if your internet works perfectly fine on other devices, or you have the latest and fastest internet. You may notice that EmuDeck isn't installing properly, or is taking a long time time to install. You may notice these same internet issues when you try to browse the internet or download a game and the internet speeds are much slower than you would expect. 

You can fix these issues by adjusting your DNS, in System Settings within Desktop Mode, in `Configure Network Settings`. 

**Note:** If you are noticing unexpected behavior with RetroAchievements causing errant controls or freezing, consider trying the below steps. 

**Here's How:** 

1. Click the bottom left icon in the taskbar (Steam Deck icon), click `Settings` in the list, open `System Settings`.
2. Click `Connections` on the left.
3. On the `IPv4` tab, change the `Method` to `Automatic (Only Addresses)`.
4. In the `DNS Servers` box, enter `1.1.1.1`.
5. Click the `IPv6` tab at the top, change the `Method` to `Disabled`.
6. For good measure, restart your Steam Deck.

**Note:** If the above steps still do not fix the issue for you, you can try switching to a 2.4 GHz WiFi network if your ISP provides you with one. 

**Visual Reference**

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/main/GIFs/How%20to%20Configure%20Internet%20Settings.gif?raw=true"/>


***

### Is everything up to date?

***

It is recommended you keep emulators up to date. Update Flatpaks through Discover, AppImages/Binaries through the emulator's self-updater or through EmuDeck, and Windows Executables through EmuDeck.

It is recommended you monitor and **use the Discover store** to update any system libraries as well. Not updating these system libraries can cause Flatpak emulators to **stop working.**

For more information on updating and which emulators are Flatpaks, AppImages, Binaries, and Windows Executables, visit the [Updating](../../emudeck-maintenance/steamos/updating.md) page.

Notably, not updating a system library recently caused RetroArch to suddenly stop working. Read [RetroArch does not work anymore - April 30th, 2023](../../known-issues/steamos/index.md#retroarch-does-not-work-anymore---april-30th-2023) for more information. 

***

### Do you have the correct BIOS or ROM file types?

Visit the [Cheat Sheet](../../cheat-sheet.md) to learn which BIOS and ROM file types you need.

In some cases, `.7z` and `.zip` are **not** correct file formats.

***

### Performance or audio quality unexpectedly bad?

There may be a number of reasons for this, but your first debugging tool should be to ensure that the `Framerate limit` is off and that the `Refresh Rate` is set to 60. 

To find these options:

1. In Game Mode, press the QAM (`...` button)
    * You may need to open the game first to see if you created a per-game profile
2. Press the `Battery` icon
3. Select `Advanced View`
4. Scroll down and set te `Framerate Limit` to `Off` and `Refresh Rate` to 60
    * ![Performance or audio quality unexpectedly bad](../../assets/performance-or-audio-quality-unexpectedly-bad.png)

These are the recommended settings for emulated games. If you would like to change these settings, use the `Use per-game profile` toggle. This toggle will only apply these settings for the game currently open. 

***

### Are you playing in Desktop Mode?

Generally, it is recommended to use Game Mode to play your ROMs. However, if you are in Desktop Mode, make sure to hold the start button for 3 seconds to switch your controller configurations to gamepad configurations. 

With gamepad configurations enabled, your controls will work and you may also use combo hotkeys to exit out of a game. 

***

### Are your ROMs or BIOS valid?

Do you have a good ROM or BIOS dump? Corrupt, incomplete, or incorrect ROMs or BIOS can be a common reason why your game does not work. Transferring between two systems can be one reason for incomplete ROMs. If your ROM works on another machine, that **does not** mean it will work on the Steam Deck if the transfer was incomplete. 

Read [How to Verify ROMs](../../file-management/steamos/file-management.md#how-to-verify-roms) to learn how to verify your ROMs and BIOS.

If your ROM is not valid and you have ensured that it was transferred correctly, you may need to re-dump. You can find dumping guides on the various emulator websites. 

A couple of good websites to get you started:

* [https://dumping.guide/start](https://dumping.guide/start)
* [https://wiki.no-intro.org/index.php?title=Dumping_Guides](https://wiki.no-intro.org/index.php?title=Dumping_Guides)
* [http://wiki.redump.org/index.php?title=Dumping_Guides](http://wiki.redump.org/index.php?title=Dumping_Guides)
* [https://3ds.hacks.guide/](https://3ds.hacks.guide/)
* [https://cemu.cfw.guide/using-dumpling.html](https://cemu.cfw.guide/using-dumpling.html)
* [https://yuzu-emu.org/help/quickstart/](https://yuzu-emu.org/help/quickstart/)

***

### Path not writable?

If you are seeing an error message that states your path is not writable, this typically means that you have a space in your SD Card or external drive name.

To fix this issue:

1. Open the `KDE Partition Manager` in Desktop Mode 
    * You may need to set a sudo password first. To do so, open `Konsole`, type `passwd`, and enter a password. It will not be visible for security reasons. After pressing enter, you will be prompted to type it again to confirm
2. Locate your SD Card or external drive and right click, click `Unmount`
3. Click `Properties`
4. In the `Label` box, give your SD Card or external drive a name **without** a space
5. Click `OK`
6. Locate your SD Card or external drive and right click, click `Mount`
7. Re-run EmuDeck and your SD Card or external drive will be writable


***

### Game unexpectedly muted or missing audio?

Sometimes, games may accidentally mute themselves with no discernible reason. Fortunately, the fix is easy.

1. In Desktop Mode, open the emulator you use to launch the ROM
    * For example, if your ROM is a PlayStation 2 game, open PCSX2
2. Open your ROM
3. If the emulator launched in full screen, hold `R1` and press the `Select` button until you see the desktop or taskbar
4. Click the `Speaker` icon in your taskbar
5. Click the `Applications` tab
6. Click the `Speaker` icon below the application name to unmute the application
    * A red line through the `Speaker` icon indicates that it is muted. If there is no red line, that means there should be audio outputting from the emulator
    * ![Game unexpectedly muted or missing audio](../../assets/game-unexpectedly-muted-or-missing-audio.png)

***

### Have you tried resetting the emulator or tool through EmuDeck?

Sometimes after installing EmuDeck, you may notice an emulator's configurations were not set properly or you tweaked something on accident and you do not remember the default settings. 

You may reset an emulator's configurations in the `Manage Emulators` page. 

**Tutorial**

1. Open EmuDeck on your desktop.
2. Click the `Manage Emulators` button.
3. Select which emulator configurations you would like to reset in the drop-down menu.
4. Click `Reset configuration`, wait a moment.
    1. Using PCSX2 as an example: <img src="https://user-images.githubusercontent.com/108900299/196877825-0a4fd76f-bed0-487a-95d5-5454e631f920.png" height="200">
5. Your selected emulator has been reset.

***

### Have you checked out the various emulator and tool pages?

The wiki has a separate page for each emulator and tool installed by EmuDeck. You can find the emulator pages grouped under their company name on the sidebar. The tool pages can be found under the `Tools` section. Each emulator and tool page has various sections that may go into detail on your question. 

Don't forget, if a page is missing something, you may also contribute to the wiki. Learn how by visiting the [How to Contribute](../../how-to-contribute.md) page. 

***

### If you are using an external controller, have you re-arranged the controller order?

Read the [How to Re-Arrange the Controller Order](../../controls-and-hotkeys/steamos/external-controllers.md#how-to-re-arrange-the-controller-order) section on the External Controllers page to learn how. 

***

### Are you missing a CUE file?

See [How to Create CUE Files](../../file-management/steamos/file-management.md#how-to-create-cue-files) for more information.

***

### ROM not launching? Does your ROM have a special character in the name?

There may be a couple of reasons for this. One blanket solution is to ensure your ROM does not have any special characters in the name.

Special characters may include apostrophes, pluses, or characters with acccents.

Here are a few examples:

* `é` in `Pokémon`
* `'` in `The Legend of Zelda: Link's Awakening`
* `+` and `'` in `Super Mario 3D World + Bowser’s Fury` 

If your ROM has a special character, rename the file itself and re-run Steam ROM Manager after renaming your ROMs.

**How to Remove Special Characters**

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-remove-special-characters.mp4" type="video/mp4">
  </video>
</figure>

***

### Did you turn on Proton?

There is outdated info on the internet that indicates you need to set Proton on games added by Steam ROM Manager to Steam. Turning on Proton is not necessary. **DO NOT set Proton Compatibity on any emulated games.** Do **NOT** set `STEAM_COMPAT_MOUNTS` in parameters.

**Do not** open the `Compatibility` screen in `Game Mode`. **Do not** touch any of the settings on the `Compatibility` screen in `Game Mode`. This **only** applies for emulated games. 

Using Cemu as an example:

<img width="500" alt="proton" src="https://user-images.githubusercontent.com/108900299/194777064-526930f4-c36c-44be-b26a-ec192375ef7b.png">

***

### Is the Gamescope Flatpak installed?

The Gamescope Flatpak can cause crashes with the various Flatpak emulators installed by EmuDeck. Even if you do not recall installing it, it is recommended you double check. If the Gamescope Flatpak is installed, make sure to **uninstall** it. This section will cover how to both identify if it is installed and how to **uninstall** it. 

1. In Desktop Mode, open Konsole, and type `flatpak list`
2. See if you can find an entry titled `org.freedesktop.Platform.VulkanLayer.gamescope`
3. If you see it in the list, you have the Gamescope Flatpak installed, this may cause **crashing** in other Flatpak applications
4. To uninstall (**highly recommended**), in Konsole, type `flatpak remove org.freedesktop.Platform.VulkanLayer.gamescope` and press enter to uninstall the Gamescope Flatpak
 
If you do not have it installed, you may try entering this command in case you accidentally overlooked it in the `flatpak list` command. If you do not have it installed, this command will return a generic error message. 

For more information on this issue, see this GitHub comment [https://github.com/ValveSoftware/gamescope/issues/1239#issuecomment-2053572427](https://github.com/ValveSoftware/gamescope/issues/1239#issuecomment-2053572427) and this GitHub issue: [https://github.com/ValveSoftware/gamescope/issues/1239](https://github.com/ValveSoftware/gamescope/issues/1239)

***

### Steam ROM Manager

***

#### Did you exclude the game in Steam ROM Manager?

When parsing an app list in Steam ROM Manager, it is easy to misclick and accidentally exclude or hide a game. Excluding a game will hide it from the parsed app list preventing it from being added to Steam.

To "un-hide" a game:

1. Open Steam ROM Manager
2. Click the `Exceptions` button
3. Locate or search for your game in the list
4. Click `Remove exception`
5. Click the `Save` button 
    * If you **do not** click the `Save` button, the game will still be hidden from the app list
6. Generate an app list and your game will appear

If your game was not in the exceptions list, your issue lies elsewhere. See [Do you have the correct BIOS or ROM file types?](#do-you-have-the-correct-bios-or-rom-file-types) for another common instance where your games may not show up in Steam ROM Manager. 

***

#### Did you turn on duplicate parsers in Steam ROM Manager?

For some systems, there may be more than one option (RetroArch core or standalone emulator) to play your game. If you enable all of the respective options for a single system, you will have duplicates in your app list with each entry correlating to a different emulator option.

For example, the Nintendo DS system can be played through both a standalone emulator and a RetroArch core. If you enable both parsers, you will have duplicates with half that will launch through the standalone emulator and half through the RetroArch core. These can be identiifed by the "Collections" tab in Game Mode. However, if you prefer to only use one option for a system, make sure the other option **is disabled**. 

***

#### Are you seeing missing artwork? Are you getting axios errors?

These axios errors mean that there is a potential network issue causing connection problems between Steam ROM Manager and the website it scrapes its art from, [https://www.steamgriddb.com/](https://www.steamgriddb.com/).

If you are seeing these issues, wait 24-48 hours and try again. 

***

## Advanced Troubleshooting

***

### How to Test Steam ROM Manager Shortcuts

1. In Desktop Mode, open Steam
2. Locate the game in question, click the `Gear` icon
    * ![How to Test Steam ROM Manager Shortcuts 1](../../assets/how-to-test-steam-rom-manager-shortcuts-1.png)
3. Click `Properties`
    * ![How to Test Steam ROM Manager Shortcuts 2](../../assets/how-to-test-steam-rom-manager-shortcuts-2.png)
4. Copy the `Target` box. **If** the `Launch Options` box contains text, copy the `Launch Options` box as well
    * In some cases, you will need to copy both the `Target` box and the `Launch Options` box. This is only necessary if the `Launch Options` box has text in it. If the `Launch Options` box is empty, only copy the `Target` box
    * ![How to Test Steam ROM Manager Shortcuts 3](../../assets/how-to-test-steam-rom-manager-shortcuts-3.png)
5. In the bottom left of the taskbar, click the `Applications Launcher` (Steam icon on a Steam Deck) and open `Konsole` or a terminal of your choice
6. In Konsole, right click anywhere, click `Paste`
    * If you are copying both the `Target` and `Launch Options` box, paste one at a time ensuring there is a space between the two commands
    * ![How to Test Steam ROM Manager Shortcuts 4](../../assets/how-to-test-steam-rom-manager-shortcuts-4.png)
7. After clicking paste, you will receive some output that you can Google. If you are requesting support, you may provide a screenshot of this window or copy and paste the output
    * If the game launches successfully, your issue lies elsewhere. You may have accidentally enabled Proton for the game in question. If this is the case, disable Proton for the game in question
    * ![How to Test Steam ROM Manager Shortcuts 5](../../assets/how-to-test-steam-rom-manager-shortcuts-5.png)

***

## Logs

### Still stuck?

If none of the troubleshooting sections above worked for you, gather photos and a log so you can request support in EmuDeck's Discord or Reddit.

If you do not have an easy way of gathering photos, take a few photos with your phone. As long as the information can be captured, the quality of the photo does not matter!

### How to get the EmuDeck Log

If you have been sent this link on Discord, follow the below steps to locate a log so you may share it with the person you are chatting with on Discord. These logs will allow the person to investigate the issue in further detail.

#### Method 1

1. In `Desktop Mode`, open the EmuDeck application
2. Click `Fetch Log File`
3. Share the URL with the person providing you support 

#### Method 2

1. Open `$HOME/emudeck/logs`
    * On a Steam Deck, this path may be `/home/deck/emudeck/logs`
2. Right click `emudeckSetup.log`, click `Share --> Pastebin...`
    * It may appear blank, you can see the full log by clicking the `raw` button on the Pastebin page
3. Share the Pastebin URL with the person providing you support
    * If you do not have a way of sharing URLs easily, share the alphanumerical string at the end of the URL with the person providing you support
        * You may need to type this manually, however the alphanumerical string is fairly short

***

### How to get the EmuDeck AppImage Log

If you have been sent this link on Discord, follow the below steps to locate a log so you may share it with the person you are chatting with on Discord. These logs will allow the person to investigate the issue in further detail.

1. Open `$HOME/emudeck/logs`
    * On a Steam Deck, this path may be `/home/deck/emudeck/logs`
2. Right click `emudeckApp.log`, click `Share --> Pastebin...`
    * It may appear blank, you can see the full log by clicking the `raw` button on the Pastebin page
3. Share the Pastebin URL with the person providing you support
    * If you do not have a way of sharing URLs easily, share the alphanumerical string at the end of the URL with the person providing you support
        * You may need to type this manually, however the alphanumerical string is fairly short

***
