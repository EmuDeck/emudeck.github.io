# X emulator won't work, or my controls are not working or any other issue.
Try doing a reset for the Emulator that's giving you problems from Manager Emulators or just do a Quick Reset from Tools & Stuff. If this doesn't solve your issue continue reading

# Asus ROG Ally Issues

## I have a ROG Ally, my controls don't work!
All the emulators are configured so you can use them out of the box. No need to configure anything. , if you are having issues make sure you are using Steam to launch your games / Emulators. Armoury crate links won't work. Make sure your controller is in gamepad mode, if the issue still continues reset your Emulators configuration from Manager Emulators or just do a Quick Reset from Tools & Stuff.

<img src="https://c10.patreonusercontent.com/4/patreon-media/p/post/84635205/968f05dbc5fb4f00a9b0821ab41ec46c/eyJ3Ijo2MjB9/1.png?token-time=1688169600&token-hash=88Hilf6SqVWkrCQSHz0Mi0U1IvnAKhPXlStyqzCFFPk%3D" alt="ROG Ally"/>

# Installing Issues
## Windows says EmuDeck has the Wacatac.B!ml virus
It's a false positive from Windows Defender, you can ignore it safely.

## Windows can't open the EmuDeck installer, it wants to open it using the Windows Store.
Download it again, this time don't use Edge :)

## Edge says this is not a known file and that might be dangerous
Download it using other browser. ( We are working on a fix )

## EmuDeck won't go any further than the "checking for updates message"
Open CMD and run powershell. If it gives you an error you have to follow this instructions: https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1

Try changing your DNS using this tutorial: https://pureinfotech.com/change-dns-server-address-windows-11/#:~:text=To%20change%20the%20DNS%20address,and%20change%20the%20DNS%20address.

If it doesn't give you an error then delete this folder: USERFOLDER/AppData/Roaming/EmuDeck/backend and launch EmuDeck again.

## EmuDeck won't allow me to select any Drive
Open CMD and run powershell. If it gives you an error you have to follow this instructions: https://confluence.atlassian.com/bamkb/powershell-is-not-recognized-as-an-internal-or-external-command-1095246216.html#:~:text=This%20is%20caused%20by%20the,%5CSystem32%5CWindowsPowerShell%5Cv1

# Emulators Issues


## My PS2 games won't launch and I have copied the bios

Don't create subfolders on Emulation\bios, Emulation\bios\ps2\bios.bin won't work, but Emulation\bios\bios.bin will.