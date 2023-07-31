# Troubleshooting on SteamOS 

***

## Is everything up to date?

***

It is recommended you keep emulators up to date. Update Flatpaks through Discover, AppImages/Binaries through the emulator's self-updater or through EmuDeck, and Windows Executables through EmuDeck.

It is recommended you monitor and **use the Discover store** to update any system libraries as well. Not updating these system libraries can cause Flatpak emulators to **stop working.**

For more information on updating and which emulators are Flatpaks, AppImages, Binaries, and Windows Executables, visit the [Updating](../../emudeck-maintenance/steamos/updating.md) page.

Notably, not updating a system library recently caused RetroArch to suddenly stop working. Read [RetroArch does not work anymore - April 30th, 2023](../../common-issues/steamos/index.md#retroarch-does-not-work-anymore---april-30th-2023) for more information. 

## Do you have the correct BIOS or ROM file types?

Visit the [Cheat Sheet](../../cheat-sheet.md) to learn which BIOS and ROM file types you need.

In some cases, `.7z` and `.zip` are **not** correct file formats.

***

## Are your ROMs or BIOS valid?

Do you have a good ROM or BIOS dump? Corrupt, incomplete, or incorrect ROMs or BIOS can be a common reason why your game does not work. Transferring between two systems can be one reason for incomplete ROMs. If your ROM works on another machine, that **does not** mean it will work on the Steam Deck if the transfer was incomplete. 

Read [How to Verify ROMs](../../file-management/steamos/file-management.md#how-to-verify-roms) to learn how to verify your ROMs and BIOS.

***

## Have you tried resetting the emulator or tool through EmuDeck?

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