# CloudSync

This page will present you with a troubleshooting guide in case you are having issues with CloudSync

---

[TOC]

---

## First Step: Make sure these files exist:

Try installing cloudSync from the EmuDeck app and check these:

- **Emulation/tools/rclone/rclone.exe** or just rclone if you are on linux.
  If this file doesn't exist you need to reinstall cloudSync from the EmuDeck app.

  - Alternatively you can download it manually from here:

    - [Linux](https://downloads.rclone.org/v1.68.2/rclone-v1.68.2-linux-amd64.zip)
    - [Windows](https://downloads.rclone.org/v1.68.2/rclone-v1.68.2-windows-amd64.zip)

- **Emulation/tools/rclone/rclone.conf**, this is where your settings are, if you don't have this file try to reinstall CloudSync. - If the file exists but the provider you chose is empty or the file doesn't even exist, try setting cloudSync in another computer and then copy the **rclone.conf** file to the other machine.

## One of my devices is not uploading / downloading saves

Let's see if the files are being synced but the issue is in the emulator not finding them.

- Open your emulator of choice on one of the devices and left it open.
- Go to Emulation/saves/_your_emulator_ and create an empty file, test.txt for instance.
- See if you get any notification about the uploading happening.
- Now go to your cloud provider website and check EmuDeck/saves/_your_emulator_, see if the file is in there.

### a) The file is there

Great, that means that device can upload saves just fine! You can check next step

### b) The file is not there

Bad news, time to check everything again, make sure you followed the **First Step: Make sure these files exist**

## I have two Ryujinx / ryujinx saves folders

if you have two Ryujinx folders, one with capital R and another without you need to:

- Make sure Ryujinx or ESDE is not running.
- Backup both folders outside the Emulation/saves folder from the machine that has the most up to date saves.
- Delete both folders from every device.
- Delete both folders in your cloud provider.
- Double check, make sure there is no ryujinx or Ryujinx folder anywhere.
- On Windows: reset SRM settings from Manage Emulators so the save folder is created.
- On Linux: reset Ryujinx settings from Manage Emulators so the save folder is created.
- Copy your saves from the backup you did to any

## My Ryujinx saves are being synced but the emulator doesn't see them

Ryujinx has an issue: it creates a save folder for each game but in the order you launched them, so game A can be folder 1 in one device but the same game A can be folder 3 on another device. This is a real pain.

- Go to Emulation/saves/ryujinx in the device that has the oldest saved games, enter inside each folder and delete the contents.

- Reset Ryujinx settings from both Windows and Steam OS in Manage Emulators.

- Launch Ryujinx from the device that you deleted all the saves, it should have downloaded all your saved games now. Do any change in any game, save and let it upload in the background ( it takes a few seconds depending of the network connection )

- Launch Ryujinx in the other device and check if the saved game is the same as in the other system.
