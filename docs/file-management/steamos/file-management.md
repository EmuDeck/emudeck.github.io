# File Management, learn how to manage your files like a wizard.

***

## File Management Table of Contents


1. [Managing ROM Files](#managing-rom-files)
    - [How to Manage ROMs with Multiple Discs](#how-to-manage-roms-with-multiple-discs)

2. [Managing Emulators and Tools](#managing-emulators-and-tools)
    - [How to Swap out AppImages and Binaries](#how-to-swap-out-appimages-and-binaries)

3. [Managing Files](#managing-files)
    - [How to Use Symlinks](#how-to-use-symlinks)

***

## Managing ROM Files
[Back to the Top](#file-management-table-of-contents)

***

### How to Manage ROMs with Multiple Discs
[Back to the Top](#file-management-table-of-contents)

***

#### Preface

To reduce the amount of files to manage, it's recommended to use EmuDeck's `Compression Tool`. Place your ROMs as you normally would in their respective folders, open the EmuDeck application on your desktop and run the `Compression Tool`. If you run the compression tool and you ran Steam ROM Manager previously, you will need to re-run Steam ROM Manager after compression to update your shortcuts. If you are following the guide on this page, you can wait until you are finished to re-run Steam ROM Manager. 

Compressing your ROMs makes managing multi-track games a lot simpler. You can create a playlist file (M3U) and place all of your tracks in this file. After creating the playlist file, treat the M3U file as the game (instead of the individual discs) and when the time comes to switch discs, you can use the various emulator quick-menus to seamlessly move onto the next disc. You can view the hotkeys for the various quick-menus here: https://github.com/dragoonDorise/EmuDeck/wiki/Hotkeys.

**Important** 

* PCSX2 does not support M3U files
   * [How to Manage Multiple Discs in PCSX2](../../emulators/steamos/pcsx2.md#how-to-manage-multiple-discs)

***

#### How to Create an M3U File

When it comes time to switch discs, various emulators have an option or a button to switch from one disc to the next. An M3U file allow you to manage ROMS with multiple discs and continue playing without any hiccup. 

Fortunately these M3U files are easy to create. 

**Here's How:**

1. In your ROM folder, right click, click `Create New Text File`
2. Name it `GAMENAME.m3u`
    * The file name of the M3U file is up to you. However, it is recommended you match the M3U file as closely as possible to the game name so Steam ROM Manager and EmulationStation-DE can scrape the appropriate game art or game info
    * For example, with the game: `The Legend of Dragoon`, you may name the M3U file, `The Legend of Dragoon.m3u` so Steam ROM Manager or EmulationStation-DE can locate the appropriate art. However, if you name it `LoD.m3u` as an example, neither tool will know to match `LoD` to `Legend of Dragoon`
3. Right click the text file, click `Open with Kate` or a text editor of your choice
4. Place the full file name of each ROM disc including the file extension on a separate line
    * **IMPORTANT:** If you are using both `.bin` and `.cue` files, only place the `.cue` files in the M3U file. It is recommended you use the EmuDeck compression tool for easier file management 
      * Example (Using D2 for the Dreamcast):
        * Folder: <img src="https://user-images.githubusercontent.com/108900299/211213411-713804bb-8d96-4b21-9b0a-afd40d461d3b.png" height="300">
        * M3U File: <img src="https://user-images.githubusercontent.com/108900299/211213427-05c57715-8bc5-443d-9824-8ae410bc6859.png" height="300">
5. Save and close out of the text file
6. From now on, you can treat the M3U as the game file, and play the respective ROM discs by running the newly created M3U file through one of EmuDeck's included front-ends: Steam shortcuts created by Steam ROM Manager, EmulationStation-DE, or by running the emulator directly
    * Steam ROM Manager:
      * Steam ROM Manager will still parse all of your discs in addition to the M3U file. To solve this, you can hide each disc entry, and only allow Steam ROM Manager to parse the M3U file
        * Learn more about this method here: https://github.com/dragoonDorise/EmuDeck/wiki/steam-rom-manager#how-to-manage-roms-with-multiple-discs
    * EmulationStation-DE:
      * EmulationStation-DE will display all of your discs in addition to the M3U file. To solve this issue, EmulationStation-DE allows you to treat directories as files. 
        * Learn more about this method here: https://github.com/dragoonDorise/EmuDeck/wiki/EmulationStation-DE#how-to-manage-multiple-discs
    * Alternatively, you can move all of your Multi-Disk games to a new folder, ie. `psx-multidisk`, and keep the .m3u files in the `psx` folder, changing the contents to point to the disks in their new location. This will prevent those disks from being read, as the parsers will not look in the new folders created. **Note:** Not all emulators support absolute pathing


Visual Tutorial: 

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-create-an-m3u-file.mp4" type="video/mp4">
  </video>
</figure>

***

## Managing Emulators and Tools
[Back to the Top](#file-management-table-of-contents)

***

### How to Swap out AppImages and Binaries
[Back to the Top](#file-management-table-of-contents)

#### Preface

Sometimes, when an emulator updates, there can be regressions for certain games or bugs that break the emulator temporarily. You can downgrade to a previous version by replacing the emulator in `/home/deck/Applications`. 

Additionally for Yuzu, you can also use this feature to download the `Early Access` version of Yuzu. 

For some emulators, your ROMs launch using a script created by EmuDeck, which look for the corresponding emulator, depending on how it is installed or downloaded. In the case of PCSX2 and Yuzu, the script looks for two things: 

* The most recently downloaded version in `/home/deck/Applications`, based on the file date.
* The emulator name at the beginning of the file. Anything after the emulator name is ignored. `pcsx2-Qt` in the case of PCSX2 and `Yuzu` in the case of Yuzu. For example, if the latest version of `Yuzu` is `1351` and you would like to downgrade to `1349`. When you download `yuzu 1349`, you could rename it to `Yuzu-1349.AppImage`, and EmuDeck's script will ignore the `-1349` in the file name, allowing you to record which versions of Yuzu you are using through the file name. 

#### List of Supported Emulators and Tools

* Cemu (AppImage)
    * Executable Location: `/home/deck/Applications/Cemu.AppImage`
    * Download Link: [https://github.com/cemu-project/Cemu/releases](https://github.com/cemu-project/Cemu/releases)
* Cemu (Swap out its EXE)
    * Executable Location: `Emulation/roms/wiiu/cemu.exe`
    * Download Link: [https://github.com/cemu-project/Cemu](https://github.com/cemu-project/Cemu)
* EmulationStation-DE
    * Executable Location: `Emulation/tools/EmulationStation-DE-x64_SteamDeck.AppImage`
    * Download Link: [https://gitlab.com/es-de/emulationstation-de/-/packages/](https://gitlab.com/es-de/emulationstation-de/-/packages/)
* mGBA
    * Executable Location: `/home/deck/Applications/mGBA.AppImage`
    * Download Link: [https://github.com/mgba-emu/mgba/releases](https://github.com/mgba-emu/mgba/releases)
* PCSX2-QT
    * Executable Location: `/home/deck/Applications/pcsx2-Qt.AppImage`
    * Download Link: [https://pcsx2.net/downloads/#nightly-anchor](https://pcsx2.net/downloads/#nightly-anchor)
* Ryujinx
   * Executable Location: `/home/deck/Applications/publish/Ryujinx`
   * Download Link: [https://github.com/Ryujinx/release-channel-master/releases](https://github.com/Ryujinx/release-channel-master/releases)
* Steam ROM Manager
    * Executable Location: `Emulation/tools/srm/Steam-ROM-Manager.AppImage`
    * Download Link: [https://github.com/SteamGridDB/steam-rom-manager/releases](https://github.com/SteamGridDB/steam-rom-manager/releases)
* Vita3K
    * Executable Location: `/home/deck/Applications/Vita3K/Vita3K`
* Xenia (Swap out its EXE)
    * Executable Location: `Emulation/roms/xbox360/xenia_canary.exe`
    * Download Link: [https://github.com/xenia-canary/xenia-canary/releases](https://github.com/xenia-canary/xenia-canary/releases)
* Yuzu
    * Executable Location: `/home/deck/Applications/yuzu.AppImage`
    * Download Link: [https://github.com/yuzu-emu/yuzu-mainline/releases](https://github.com/yuzu-emu/yuzu-mainline/releases)

#### How to Swap Out Emulators

1. Download the version of the emulator you would like to use, from the list above to your `/home/deck/Downloads` folder
2. Open the respective emulator folder location, using the list above: #list-of-supported-emulators-and-tools
3. Move the downloaded emulator from Step 1 to the folder in Step 2
3. Rename or delete the original emulator file
    * Rename it so it can be distinguished from your downloaded file
        * A Few Examples: 
            * Rename `Yuzu.AppImage` to `Yauzu.AppImage`
            * Rename `Yuzu.AppImage` to add a `.bak` to the end of the file extension, `Yuzu.AppImage.bak` 
            * Rename `Yuzu.AppImage` to add the version number. For example, if the latest version is 1351, rename it to `Yuzu-1351.AppImage`
4. Right click the newly downloaded emulator, click `Properties`, click `Permissions`, check `Is executable`
5. Your games will now launch using the version of the emulator you downloaded

Watch the following GIF for a visual (Yuzu is being used as an example in this GIF):

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/3c461f555ed3eb882e2ee1273a53429ae3fda486/GIFs/Swapping%20out%20AppImages%20and%20Binaries.gif?raw=true"/>

***

## Managing Files
[Back to the Top](#file-management-table-of-contents)


***

### How to Use Symlinks
[Back to the Top](#file-management-table-of-contents)

#### Preface

Symbolic links, or symlinks for short, are a powerful way to link files or directories. Symlinks are a kind of file that points to another file, similar to a shortcut on Windows. However, symlinks are much more versatile. 

A few features of symlinks include: renaming the symlink, crossing partitions (between an SD card and an internal SSD for example), and creating multiple symlinks to the same file. 

It is recommended you symlink your folders inside of the folders created by EmuDeck. For example, if you would like to symlink a PlayStation 2 ROM folder, symlink this folder inside of the `Emulation/roms/ps2` folder instead of overwriting the `ps2` folder. 

#### Use Cases

Let's go over a few use cases specifically pertaining EmuDeck: 

* If you wanted to install EmuDeck on multiple storage devices, you could instead install EmuDeck to the internal SSD and symlink ROM folders from the various storage devices to the ROM folders within the `Emulation` folder on the internal SSD. 
* If you had a large texture pack folder or a large folder of any sort, you could place this folder on your removable storage device and symlink it to its expected location on the internal SSD.
* If you wanted to symlink your NAS to your `Emulation` folder. 

#### How to create a Symlink

You can create a symlink a couple of ways. One method is to create a symlink through Dolphin (file manager). Keep in mind that within Dolphin (file manager), you can open tabs and view multiple folders at the same time.

When you have your original folder or file and the destination ready, drag the original folder or file to the destination and click `Link here`. A symlink is indicated with a small link icon and the file name in italics.

##### Photos

1. ![Symlink Example Step 1](../../assets/symlink-example1.png)
2. ![Symlink Example Step 2](../../assets//symlink-example2.png)
3. ![Symlink Example Step 3](../../assets/symlink-example3.png)

##### GIF

<img src="https://github.com/rawdatafeel/Emudeck-GIFS/blob/60d68dadd56ab45cacadefafc1d5086647dd3c61/GIFs/How%20to%20Create%20a%20Symlink.gif?raw=true"/>

***