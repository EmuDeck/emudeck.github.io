# Common Issues: EmuDeck for Windows

---

## Common Issues: EmuDeck for Windows Table of Contents

1. [Controls](#controls)
   - [General Control Issues](#general-control-issues)
   - [Device Specific Issues](#device-specific-issues)
     - [Asus ROG Ally](#asus-rog-ally)
       - [I have a ROG Ally, my controls do not work!](#i-have-a-rog-ally-my-controls-do-not-work)
2. [Emulators](#emulators)
   - [PlayStation 2 games will not launch](#playstation-2-games-will-not-launch)
   - [RetroArch does not have any sound](#retroarch-does-not-have-any-sound)
   - [PS3 games and EmulationStation](#ps3-games-and-emulationstation)
3. [General Emulator Issues](#general-emulator-issues)
   - [An emulator is not working/controls are not working](#an-emulator-is-not-workingcontrols-are-not-working)
   - [Which emulators are available on EmuDeck for Windows?](#which-emulators-are-available-on-emudeck-for-windows)
4. [Installation Issues](#installation-issues)
   - [Windows Defender - Wacatac.B!ml virus](#windows-defender---wacatacbml-virus)
   - [Windows is trying to open the EmuDeck Application through the Windows Store](#windows-is-trying-to-open-the-emudeck-application-through-the-windows-store)
   - [EmuDeck is stuck on the "checking for updates" message](#emudeck-is-stuck-on-the-checking-for-updates-message)
   - [EmuDeck - I cannot select a drive](#emudeck---i-cannot-select-a-drive)
5. [Patreon](#patreon)
   - [I am having difficulty generating a Patreon token](#i-am-having-difficulty-generating-a-patreon-token)
   - [I am subscribed to the Patreon, how do I receive support on Discord?](#i-am-subscribed-to-the-patreon-how-do-i-receive-support-on-discord)
6. [Uninstalling EmuDeck](#uninstallating-emudeck)
   - [How do I Uninstall EmuDeck for Windows?](#how-do-i-uninstall-emudeck-for-windows)

---

## Controls

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

### General Control Issues

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

#### Using EmulationStation

Make sure you are launching EmulationStation from Steam and that EmulationStation has one of our Steam Input Profiles enabled

#### Using Steam

Make sure that the game entry has one of our Steam Input Profiles active

#### Using the Emulator directly

Make sure you are launching the Emulator from Steam and that the Emulator has one of our Steam Input Profiles enabled

#### Still not working...

Please go to Manage Emulators -> Emulator -> Reset configuration and try again.

#### I've done everything, my controls are still not working

Follow this video:
https://youtu.be/ra_B1axeFqU

#### I don't want to use Steam, I prefer to use another Frontend like Playnite

EmuDeck needs Steam Input to work out of the box, if you don't use Steam you'll need to manually configure each Emulator on install and on EmuDeck updates.

The only alternative is to have Steam open in the background and do these steps: https://youtu.be/ra_B1axeFqU

---

### Device Specific Issues

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

#### Asus ROG Ally

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

##### I have a ROG Ally, my controls do not work!

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Emulators are pre-configured to work out of the box. However, if you are having issues, make sure you are using Steam to launch your ROMs and Emulators.

Make sure to note the following:

- Opening ROMs and emulators through Armoury Crate directly will not work
- Select `Gamepad` mode specifically in the `Command Center`, do not use `Automatic`

![gamepad mode](./assets/rog-ally-front-gamepadmode.jpg)

If the above does not work, you may try resetting your emulators on the Manage Emulators page or do a Quick Reset.

---

## Emulators

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

### PlayStation 2 games will not launch

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Do not create sub-folders in `Emulation\bios`.

`Emulation\bios\ps2\bios.bin` will not work but `Emulation\bios\bios.bin` will.

Read [PCSX2 Configuration](../../emulators/windows/pcsx2.md#pcsx2-configuration) for more information.

---

### PS3 games and EmulationStation

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

#### How to run directory games on EmulationStation

Every time you launch SRM or EmulationStation, EmuDeck will rename your PS3 folder games adding at the end the text .ps3 so EmulationStation can detect them.

For instance:

`Heavenly Sword`

will become:

`Heavenly Sword.ps3`

# How to run HDD Games
First install the game opening RPCS3 and then...

#### Steam:

Just launch Steam Rom Manager like with any other game.

#### EmulationStation:

- Open RPCS3

- Go to the File menu, select Install Packages/Raps/Edats and select your game file

- It should appear on the RPCS3 list of games as an HDD Game, right click and select Create Shortcut -> Create Desktop Shorcut

- Copy the new shortcut from your Windows Desktop to your Emulation\ps3\roms\shorcuts folder, a new EmulationStation PS3 HDD Game category should appear.

---

### RetroArch does not have any sound

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

1. Open RetroArch
2. go to Settings -> Drivers -> Audio
3. Try the different drivers until one works for you

---

## General Emulator Issues

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

### An emulator is not working/controls are not working

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Reset the specific emulator on the Manage Emulators page in the EmuDeck Application.

---

### Which emulators are available on EmuDeck for Windows?

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Visit the [Supported Emulators](../../emulators/windows/supported-emulators.md) page for a full list.

---

## Installation Issues

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

### Windows Defender - Wacatac.B!ml virus

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

If you see "Wacatac.B!ml virus" from Windows Defender, it is a false positive, you may ignore it.

---

### EmuDeck is stuck on the "checking for updates" message

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Open CMD and run powershell. If you are getting an error, try: [https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1](https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1)

Try changing your DNS: [https://pureinfotech.com/change-dns-server-address-windows-11/#:~:text=To%20change%20the%20DNS%20address,and%20change%20the%20DNS%20address](https://pureinfotech.com/change-dns-server-address-windows-11/#:~:text=To%20change%20the%20DNS%20address,and%20change%20the%20DNS%20address).

If you are not getting an error, delete the following folder: `USERFOLDER/AppData/Roaming/EmuDeck/backend` and launch EmuDeck again.

---

### EmuDeck - I cannot select a drive

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Open CMD and run Powershell.

If you are getting an error, try: [https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1](https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1)

---

## Patreon

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

### I am having difficulty generating a Patreon token

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Try using [https://token.emudeck.com](https://token.emudeck.com)

---

### I am subscribed to the Patreon, how do I receive support on Discord?

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Read this Patreon article to link your Patreon account to your Discord, [https://support.patreon.com/hc/en-us/articles/212052266-Getting-Discord-access](https://support.patreon.com/hc/en-us/articles/212052266-Getting-Discord-access). After you have linked your Patreon account, you will have access to the Windows channel.

---

## Uninstalling EmuDeck

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

---

### How do I Uninstall EmuDeck for Windows?

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

1. Delete `USERFOLDER/AppData/Roaming/EmuDeck`
2. Delete `USERFOLDER/emudeck` -> This will delete all the saved games!
3. Go to Programs and Features inside windows configuration and uninstall EmuDeck.
4. Done!
