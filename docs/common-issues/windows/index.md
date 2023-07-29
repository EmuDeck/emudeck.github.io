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
    - [PlayStation 3 games and EmulationStation](#playstation-3-games-and-emulationstation)
3. [General Emulator Issues](#general-emulator-issues)
    - [An emulator is not working/controls are not working](#an-emulator-is-not-workingcontrols-are-not-working)
    - [Which emulators are available on EmuDeck for Windows?](#which-emulators-are-available-on-emudeck-for-windows)
4. [Installation Issues](#installation-issues)
    - [Windows Defender - Wacatac.B!ml virus](#windows-defender---wacatacbml-virus)
    - [7-Zip and Git are not being installed correctly](#7-zip-and-git-are-not-being-installed-correctly)
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

#### Using EmulationStation-DE

Make sure that you are launching EmulationStation-DE from Steam and that you have enabled one of the included EmuDeck Steam Input profiles.

---

#### Using Steam

Make sure that you have enabled one of the included EmuDeck Steam Input profiles for the respective game. 

---

#### Using the emulator directly

Make sure that you have enabled one of the included EmuDeck Steam Input profiles for the respective emulator. 

---

#### Controls still not working?

Open EmuDeck:

1. Open the Manage Emulators page
2. Select an emulator
3. Click the `Reset configuration` button and try again

---

#### I've done everything, my controls are still not working

Follow the instructions in the video below:

<iframe width="560" height="315" src="https://www.youtube.com/embed/ra_B1axeFqU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

---

#### Can I use Playnite instead of Steam?

If you prefer to use Playnite, you will need to keep Steam running in the background. Steam Input is required for EmuDeck to function. If you prefer not to use Steam at all, you will need to manually configure each emulator.

To use Steam Input with Playnite, follow the steps in the video below: 

<iframe width="560" height="315" src="https://www.youtube.com/embed/ra_B1axeFqU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Consider checking out the community created plugin for Playnite as well! 

The plugin can be found on the Community Creations page here: [EmuDeck for Playnite](../../community-creations/windows/community-creations.md#emudeck-for-playnite).

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

![Gamepad Mode](/assets/rog-ally-front-gamepadmode.jpg)

If the above does not work, you may try resetting your emulators on the Manage Emulators page or run through a Quick/Custom Reset on the home screen of the EmuDeck application.

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

### PlayStation 3 games

---

#### How to run directory games from EmulationStation-DE

Every time you launch Steam ROM Manager or EmulationStation-DE, EmuDeck will rename your PS3 ROM folders and add `.ps3` at the end of the folder name. This tiny edit allows EmulationStation-DE to launch your games with no tinkering on your end. 

For instance:

`Heavenly Sword`

will become:

`Heavenly Sword.ps3`

---

#### EmulationStation-DE:

Follow the steps on the RPCS3 page: [How to Configure RPCS3 with EmulationStation-DE](../../emulators/windows/rpcs3.md#how-to-configure-rpcs3-to-work-with-emulationstation-de).

---

### RetroArch does not have any sound

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

1. Open RetroArch
2. Go to `Settings` -> `Drivers` -> `Audio`
3. Test the different drivers until one works for you

---

## General Emulator Issues

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

If you see `Wacatac.B!ml` virus from Windows Defender, it is a false positive, you may ignore it.

---

### 7-Zip and Git are not being installed correctly

1. Open the Command Prompt, or CMD for short
    * You may open CMD a couple of ways:
        * The easiest may be to search `CMD` in the `Start menu`
3. Run the below commands, one at a time:

                    winget install -e --id Git.Git --accept-package-agreements --accept-source-agreements
                    winget install -e --id 7zip.7zip --accept-package-agreements

---

### EmuDeck is stuck on the "checking for updates" message

[Back to the Top](#common-issues-emudeck-for-windows-table-of-contents)

Open CMD and run powershell. If you are getting an error, try: [https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1](https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1)

Try changing your DNS: [https://pureinfotech.com/change-dns-server-address-windows-11/#:~:text=To%20change%20the%20DNS%20address,and%20change%20the%20DNS%20address](https://pureinfotech.com/change-dns-server-address-windows-11/#:~:text=To%20change%20the%20DNS%20address,and%20change%20the%20DNS%20address).

If you are not getting an error, delete the following folder: `%appdata%\Roaming\EmuDeck\backend` and launch EmuDeck again.

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

Try using [https://token.emudeck.com](https://token.emudeck.com) to generate a token.

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

1. Delete `%appdata%\Roaming\EmuDeck`
2. Delete `%USERPROFILE%\emudeck`
    * ⚠️ **This will delete all of your save files** ⚠️
3. Open Programs and Features in the `Control Panel` and uninstall EmuDeck
4. Done!
