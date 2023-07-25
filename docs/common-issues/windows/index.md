# Common Issues: EmuDeck for Windows

***

## Common Issues: EmuDeck for Windows Table of Contents

1. [Controls](#controls)
    - [General Control Issues](#general-control-issues)
    - [Device Specific Issues](#device-specific-issues)
        - [Asus ROG Ally](#asus-rog-ally)
            - [I have a ROG Ally, my controls do not work!](#i-have-a-rog-ally-my-controls-do-not-work)
2. [Emulators](#emulators)
    - [An emulator is not working/controls are not working](#an-emulator-is-not-workingcontrols-are-not-working)
    - [PlayStation 2 games will not launch](#playstation-2-games-will-not-launch)
3. [Installation Issues](#installation-issues)
    - [Windows Defender - Wacatac.B!ml virus](#windows-defender---wacatacbml-virus)
    - [Windows is trying to open the EmuDeck Application through the Windows Store](#windows-is-trying-to-open-the-emudeck-application-through-the-windows-store)
    - [EmuDeck is stuck on the "checking for updates" message](#emudeck-is-stuck-on-the-checking-for-updates-message)
    - [EmuDeck - I cannot select a drive](#emudeck---i-cannot-select-a-drive)

***

## Controls

***

### General Control Issues

***

### Device Specific Issues

***

#### Asus ROG Ally

***

##### I have a ROG Ally, my controls do not work!

Emulators are pre-configured to work out of the box. However, if you are having issues, make sure you are using Steam to launch your ROMs and Emulators. 

Make sure to note the following:

* Opening ROMs and emulators through Armoury Crate directly will not work
* Select `Gamepad` mode specifically in the `Command Center`, do not use `Automatic`

If the above does not work, you may try resetting your emulators on the Manage Emulators page or do a Quick Reset.

***

## Emulators

***

### An emulator is not working/controls are not working

Reset the specific emulator on the Manage Emulators page in the EmuDeck Application. 

***

### PlayStation 2 games will not launch

Do not create sub-folders in `Emulation\bios`.

`Emulation\bios\ps2\bios.bin` will not work but `Emulation\bios\bios.bin` will.

Read [PCSX2 Configuration](../../emulators/windows/pcsx2.md#pcsx2-configuration) for more information. 

***

## Installation Issues

***

### Windows Defender - Wacatac.B!ml virus

If you see "Wacatac.B!ml virus" from Windows Defender, it is a false positive, you may ignore it.

***

### Windows is trying to open the EmuDeck Application through the Windows Store

Download it again, this time don't use Microsoft Edge :)

***

### Microsoft Edge - EmuDeck is not a known file and that might be dangerous

Download it using other browser. ( We are working on a fix )

***

### EmuDeck is stuck on the "checking for updates" message


Open CMD and run powershell. If you are getting an error, try: [https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1](https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1)

Try changing your DNS: [https://pureinfotech.com/change-dns-server-address-windows-11/#:~:text=To%20change%20the%20DNS%20address,and%20change%20the%20DNS%20address](https://pureinfotech.com/change-dns-server-address-windows-11/#:~:text=To%20change%20the%20DNS%20address,and%20change%20the%20DNS%20address).

If you are not getting an error, delete the following folder: `USERFOLDER/AppData/Roaming/EmuDeck/backend` and launch EmuDeck again.

***

### EmuDeck - I cannot select a drive

Open CMD and run Powershell. 

If you are getting an error, try: [https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1](https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1)

***