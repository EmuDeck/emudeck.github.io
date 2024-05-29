# Super Smash Bros

This is a page on how to install Super Smash Bros Mods on deck. This is for those of you who are new to Linux, or just need some help with Steam. This page will only cover a few mods, but should be relatively transferable to other mods.

## Table of Contents

[TOC]

***

## Smash Remix (Smash N64)

To install Smash Remix you will first need a vanilla copy of the NTSC version of Super Smash Bros. N64. I cannot tell you where to find this.

1. Download the latest patch. You can find it [here](https://github.com/JSsixtyfour/smashremix/releases/latest). The file should be titled `smashremix<version>.zip`. Unzip it. 

2. Navigate to https://www.marcrobledo.com/RomPatcher.js/ then upload the Smash Bros. rom on top. On the bottom, look for `patches/smashremix<version>.xdelta` in the folder you unzipped. If done correctly, it should look something like this:

![jspatcher](https://user-images.githubusercontent.com/19497824/216860016-e68db266-fe81-460c-bf3d-c0912d6f909e.png)

3. Click "Apply Patch", then download the resulting file into your `n64` roms folder. Rename it to `Smash Remix (<Version>>).z64`.

4. (Optional) run Steam Rom Manager and scrape the art. That's it!

***

## Slippi

To install Slippi, you will need a vanilla copy of the NTSC version of Melee. I cannot tell you where to find this. Note that this needs to be an ISO, not compressed.

1. Download the latest Slippi launcher for Linux. You can find it [here](https://slippi.gg/downloads).

2. On your SD card, create a folder titled "Slippi". I suggest placing this **outside** the "Emulation" folder to avoid any possible quirks with EmuDeck. Move the AppImage we just downloaded as well as the Melee ISO here. It should look like the following:

![slippi](https://user-images.githubusercontent.com/19497824/242464555-9b2c81b4-a5ef-4e5a-8976-b5448510894a.png)

3. Launch the AppImage. Follow the on screen instructions to locate the Melee iso and login to the platform.

4. Within your Emulation folder, navigate to "tools/launchers" and create a file named `slippi.sh`. Open it in the text editor of your choice, and copy the following into it:

```sh
#!/bin/sh
/run/media/mmcblk0p1/Slippi/Slippi-Launcher-*.AppImage --no-sandbox
```

If you placed your Project+ folder elsewhere, change the path to that. If you followed the above instructions, it should work unchanged.

Save and close the editor.

5. Still within the "launchers" folder, right click an empty space, and select "Open Terminal Here". Run the following command

```sh
chmod +x slippi.sh
```

This will make the launcher executable.

6. Run Steam Rom Manager as normal. Slippi should appear and launch the AppImage when selected.

***

## Project+

To install Project+, you will need a vanilla copy of the NTSC version of Brawl. I cannot tell you where to find this. Note that this needs to be an ISO, not compressed.

1. Download the latest patch. You can find it [here](https://github.com/jlambert360/FPM-AppImage/releases/latest). As described in the readme, you should download `Faster_Project_Plus-x86-64.AppImage`, `Launcher.tar.gz` and `ProjectPlusSd<version>.tar.gz`. Unarchive both of the `.tar.gz` files.

2. On your SD card, create a folder titled "Project+". I suggest placing this **outside** the "Emulation" folder to avoid any possible quirks with EmuDeck. Move the AppImage as well as the two uncompressed archives into this folder. Additionally, place the Brawl ISO here. It should look like the following:

![projectplus](https://user-images.githubusercontent.com/19497824/216861964-b19eada9-9570-474b-a0b2-ed80d05dfc2e.png)

3. Launch the AppImage. Select "Config" then "Paths". Set the Default ISO to the Brawl ISO and the SD Card to the `sd.raw` inside the folder. Close the AppImage.

![pplusappimage](https://user-images.githubusercontent.com/19497824/216863616-dcc322d7-5d73-4f1c-9006-dea209992fcd.png)

4. Within your Emulation folder, navigate to "tools/launchers" and create a file named `project+.sh`. Open it in the text editor of your choice, and copy the following into it:

```sh
#!/bin/sh
/run/media/mmcblk0p1/Project+/Faster_Project_Plus-x86-64.AppImage
```

If you placed your Project+ folder elsewhere, change the path to that. If you followed the above instructions, it should work unchanged.

Save and close the editor.

5. Still within the "launchers" folder, right click an empty space, and select "Open Terminal Here". Run the following command

```sh
chmod +x project+.sh
```

This will make the launcher executable.

6. Run Steam Rom Manager as normal. When launching, it will bring up the AppImage in which you should double tap the version of Project+ you wish to play.

***

## 20XX Training Pack

Due to the online xdelta patchers not supporting the functions needed, as well as SteamOS not containing xdelta, I suggest patching 20XX on a different device and transfering the file over to your deck instead.

***