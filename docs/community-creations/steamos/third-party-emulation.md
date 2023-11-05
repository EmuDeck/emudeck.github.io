# Third Party Emulation: Non-EmuDeck Tools and Resources

Learn how to install various tools and resources related to emulation on your Steam Deck outside of what EmuDeck installs. These tools and resources are either difficult to implement into EmuDeck's installation script directly, require elaborate setup, or may be added to EmuDeck in the future pending time and resources. 

The guides on this page are not officially supported by EmuDeck. Many require some level of comfort in the terminal to successfully install. Regardless of your comfort with the terminal, the guides will cover as much detail as possible to address a wide variety of expertise levels. If you get stuck on a certain part, it is encouraged you Google and troubleshoot. The EmuDeck Discord will not be able to promise support for the guides available on this page.

## Third Party Emulation Table of Contents

1. [Decompilations and Reverse Engineered PC Ports](#decompilations-and-reverse-engineered-pc-ports)
    - [Getting Started with Decompilations and Reverse Engineered PC Ports](#getting-started-with-decompilations-and-reverse-engineered-pc-ports)
        - [How to Set up Distrobox](#how-to-set-up-distrobox)
        - [Terminal Tips and Tricks](#terminal-tips-and-tricks)
    - [Games](#games)
        - [Cannonball OutRun Engine](#user-content-cannonball---outrun-engine)
        - [OpenGOAL: Jak and Dexter: The Precursor Legacy](#opengoal-jak-and-dexter-the-precursor-legacy)
        - [OpenGOAL: Jak II](#opengoal-jak-ii)
        - [Perfect Dark](#perfect-dark)
        - [Render96ex](#render96ex)
        - [Ship of Harkinian: Ocarina of Time](#ship-of-harkinian-ocarina-of-time)
        - [sm64ex](#sm64ex)
        - [sm64ex-coop](#sm64ex-coop)
        - [Sonic 1 and 2](#sonic-1-and-2)
        - [Sonic CD](#sonic-cd)
        - [Super Mario 64 Plus](#super-mario-64-plus)
        - [Super Mario Bros](#super-mario-bros)
        - [Super Mario Bros: The Lost Levels](#super-mario-bros-the-lost-levels)
        - [Super Mario World](#super-mario-world)
        - [Super Metroid](#super-metroid)
        - [Super Metroid Redux](#super-metroid-redux)
        - [zelda3: A Link to the Past](#zelda3-a-link-to-the-past)
    - [General Maintenance](#general-maintenance)
        - [How to Add Decompilations and Reverse Engineered PC Ports to Steam](#how-to-add-decompilations-and-reverse-engineered-pc-ports-to-steam)
        - [How to Update Decompilations and Reverse Engineered PC Ports](#how-to-update-decompilations-and-reverse-engineered-pc-ports)

2. [Emulators](#emulators)
    - [BlueMaxima's Flashpoint](#bluemaximas-flashpoint)
    - [Hypseus Singe](#hypseus-singe)
    - [Sega Model 2: Model 2 Emulator](#sega-model-2-model-2-emulator)
    - [Sega Model 3: Supermodel](#sega-model-3-supermodel)
    - [Super Smash Bros: Project+](#super-smash-bros-project)

3. [Emulation Related Games](#emulation-related-games)
    - [AM2R](#am2r) 
    - [PokeMMO](#pokemmo)
    - [Sonic 3 A.I.R.](#sonic-3-air)
 
4. [How to Contribute to This Page](#how-to-contribute-to-this-page)

***

## Decompilations and Reverse Engineered PC Ports
[Back to the Top](#third-party-emulation-table-of-contents)

***

## Getting Started with Decompilations and Reverse Engineered PC Ports
[Back to the Top](#third-party-emulation-table-of-contents)

***

### How to Set up Distrobox
[Back to the Top](#third-party-emulation-table-of-contents)

Many of the decompilations and reverse engineered PC ports must be compiled. Compiling on the Steam Deck can be a bit tricky. Distrobox is one solution to make compiling these easy to do and any changes made within a Distrobox are retained on SteamOS updates.

This section will go over setting up a Distrobox, which you will utilize throughout this page.

#### Prerequisites: Sudo Password

**Note:** Skip this section if you have already set a sudo password

1. In Desktop Mode, open `Konsole`, type in `passwd`, and press enter
2. You'll be prompted to create a password. Your text will not be visible. After you press enter, you will need to type your password again to confirm
3. Exit out of Konsole


#### How to Install Distrobox

This will require your sudo password for the setup

1. In Desktop Mode, open Konsole and enter the following lines, one at a time
    * `curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local`
    * `sudo touch /etc/subuid /etc/subgid`
    * `sudo usermod --add-subuid 100000-165535 --add-subgid 100000-165535 $USER`
2. Download `podman-launcher-amd64` from [https://github.com/89luca89/podman-launcher/releases](https://github.com/89luca89/podman-launcher/releases) to your `/home/deck/Downloads` folder
3. Rename `podman-launcher-amd64` to `podman`
    * Casing and spelling are important
4. Right click `podman`, click `Properties`, click `Permissions`, check `Is executable`
5. Move the `podman` file to `/home/deck/.local/bin/`
    * `~/.local` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click "view hidden files" to see these folders

#### How to Configure bashrc

1. In Desktop Mode, open the `/home/deck` folder
     * You may not see the word `deck` in the file path at the top, this is the `home` folder for the `deck` user
2. Click the hamburger menu in the top right, `☰`, click `Show Hidden Files`
3. Right click `.bashrc`, click `Open with Kate` or a file editor of your choice
4. Add these lines to the bottom of the `.bashrc` file

```
# Uncomment the xhost line below if you know that you are using xhost
#xhost +si:localuser:$USER
export PATH=$HOME/.local/bin:$PATH
```

5. Save the `.bashrc` file and exit
6. If you had a terminal open previously (Konsole), close out of it and re-open before proceeding to the next section

#### How to Set Up Distrobox

1. Open Konsole
2. Create an Ubuntu Distrobox: `distrobox create --name ubuntu -i ubuntu:23.04`
    * If you get multiple options after inputting this command, select the `docker.io/library/ubuntu:##.##` image by pressing enter on the respective line
3. To enter the Distrobox, open Konsole and enter: `distrobox enter ubuntu`
    * You will need to enter the Distrobox when compiling the various games on this page. You can identify when you are in a Distrobox by looking at the lefthand side of Konsole. Using the Distrobox created by this guide, it will say `deck@ubuntu` 

***

### Terminal Tips and Tricks

* `cd`
    * Change directories
    * For example, if you are working in a folder in terminal and need to change to a subfolder, enter `cd subfoldername`
        * You can press tab to auto-complete the sub-folder name as well
* `cd ..` or `cd -`
    * Change into the previous directory
* `Tab` button
    * Auto complete file and path names
* `ls` or `ll` 
    * List all of the folders and files in the current directory
* `~` can be used in place of `home`
    * For example, if you have a folder in your `Applications` that you would like to navigate to, you can use `cd ~/Applications` instead of typing `cd /home/deck/Applications`
* `mkdir`
    * Create folders
    * For example: `mkdir foldername`   
* `Ctrl` + `C`
    * Terminate a running process
* `Up` arrow key button
    * Repeat last used command
* `Ctrl` + `L`
    * Clear the screen 
* `Ctrl` + `U`
    * Clear current input
* `Ctrl` + `A`
    * Jump to beginning of the line

***

## Games
[Back to the Top](#third-party-emulation-table-of-contents)

***

### Cannonball - OutRun Engine
[Back to the Top](#third-party-emulation-table-of-contents)
   
#### How to Build Cannonball on the Steam Deck

#### What is this?

`CannonBall is a souped-up game engine for the OutRun arcade game.`

Source: [https://github.com/djyt/cannonball](https://github.com/djyt/cannonball)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install -y sdl2-dev libboost-dev cmake make`

#### Setting Up Cannonball

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone --recursive https://github.com/djyt/cannonball.git`
4. A `cannonball` folder will be created, `
5. You  will add your ROM files will be added after the build is finished

#### Building Cannonball

1. In `/home/deck/Applications/Distrobox/cannonball`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `mkdir build`
    * `mkdir roms`
    * `cd build`
    * `cmake --fresh -DTARGET=linux.cmake -DOpenGL_GL_PREFERENCE=GLVND -DCMAKE_BUILD_TYPE="Release" -S ../cmake/`
    * `make -j4 VERBOSE=1`
3. Wait for it to finish building

#### Providing ROM Files for Super Cannonball

You must provide particular versions of the OutRun ROM files to run Cannonball. OutRun Revision B Roms need to unpacked into the cannonball/build/roms folder. The [cannonball/roms/roms.txt](https://raw.githubusercontent.com/djyt/cannonball/master/roms/roms.txt) file lists the expected file names to help you check that you have unpacked the correct files. 

The location of suitable files cannot be linked here because they are copyright. When you have a suitable archive unpack it so that the files are directly in cannonball/build/roms and not in any subdirectory.

#### How to Configure Cannonball

See the Cannonball manual: 
`https://github.com/djyt/cannonball/wiki/Cannonball-Manual`

No particular reconfiguration is needed for the Steam Deck. The game will default to 16:9 widescreen, and has no 16:10 mode, so there will be small black bars at the top and bottom of the SteamDeck screen. Options can be changed inside the Cannonball UI.

#### How to Run Cannonball

   * `cd ~/Applications/distrobox/cannonball/build`
   * `./cannonball`

***

### OpenGOAL: Jak and Dexter: The Precursor Legacy
[Back to the Top](#third-party-emulation-table-of-contents)

#### What is OpenGOAL: Jak and Dexter: The Precursor Legacy?

`OpenGOAL is an unofficial port of Jak and Daxter: The Precursor Legacy for Windows and Linux.`

Source: [https://opengoal.dev/](https://opengoal.dev/)

#### Setting up OpenGOAL

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create an `OpenGOAL` folder
2. Place your `Jak and Dexter: The Precursor Legacy` ISO directly in the newly created `OpenGOAL` folder
3. Download the latest `amd64.AppImage` from here: [https://github.com/open-goal/launcher/releases/tag/v2.3.6](https://github.com/open-goal/launcher/releases/tag/v2.3.6) and place it in the folder you created in Step 1
    * Example: Download `open-goal-launcher_2.3.6_amd64.AppImage` 
        * The version number may be different depending on when you are reading this
4. Right click `open-goal-launcher_#.#.#_amd64.AppImage`, click `Properties`, click `Permissions`, check `Is Executable`

#### Installing OpenGOAL

1. In `/home/deck/Applications/OpenGOAL`, double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
2. Click `Set Version`, click the `Download` icon on the row with the latest version at the top
3. Click the circle icon on the left to select the version and click `Save` in the top right
4. On the left side, select `Jak and Dexter`
5. On the bottom right, click `Install via ISO` and select your `Jak and Dexter: The Precursor Legacy` ISO
6. The application will begin to decompile your game, this may take a few moments 
7. Once it is finished decompiling, press `Continue`
8. To play your game, open this launcher, select `Jak and Dexter` on the left, and click `Play` in the bottom right
    * The launcher does not work in Game Mode. See [How to Add OpenGOAL: Jak and Dexter: The Precursor Legacy to Steam](#how-to-add-opengoal-jak-and-dexter-the-precursor-legacy-to-steam) to learn how to play the game directly in Steam

#### How to Install Custom Textures

**Note:** Texture packs need to be zipped in order to be installed from the launcher. This section will use `texture_replacements.zip` from [https://www.youtube.com/watch?v=lX1gBO1INZ4](https://www.youtube.com/watch?v=lX1gBO1INZ4) as an example.

1. Download the custom textures from the pinned comment on this Youtube Video: [https://www.youtube.com/watch?v=lX1gBO1INZ4](https://www.youtube.com/watch?v=lX1gBO1INZ4) to `/home/deck/Applications/OpenGOAL`
2. Double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
3. On the left side, select `Jak and Dexter`
4. On the bottom right, select `Features`, `Texture Packs`
5. Click `Add New Pack` 
6. Select `texture_replacements.zip` and wait a few moments
7. Your texture pack will appear below in its own box. Click the red `Disabled` button to enable your texture pack
8. Click `Apply Texture Changes` in the top right and wait a few moments
9. Your custom textures will now be installed

#### How to Add OpenGOAL: Jak and Dexter: The Precursor Legacy to Steam

1. In `/home/deck/Applications/OpenGOAL`, right click anywhere in the blank space, click `Create New` > `Text File`
2. Name it `Jak and Dexter: The Precursor Legacy.sh` 
3. At the top of the text file, write `#!/bin/bash`
4. In `/home/deck/Applications/OpenGOAL`, double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
5. On the left side, select `Jak and Dexter`
6. On the bottom right, click the `Gear` icon, and click `Copy Game Executable Command`
7. In the text file you created in Step 1, right click anywhere below `#!/bin/bash` and click `Paste`
8. Save the text file and exit out
9. Right click your newly created text file, click `Properties`, click `Permissions`, check `Is Executable`
10. Right click the text file, click `Add to Steam`
    * If you are using EmulationStation-DE or Steam ROM Manager, place in `Emulation/roms/desktop` instead
        * See [How to Add Decompilations and Reverse Engineered PC Ports to Steam](#how-to-add-decompilations-and-reverse-engineered-pc-ports-to-steam) for further detail

Your text file should look similar to the text below:

Text file name: 
`Jak and Dexter: The Precursor Legacy.sh`
Text file contents:
```
/home/deck/Applications/OpenGOAL/versions/official/v0.2.0/gk -v --proj-path /home/deck/Applications/OpenGOAL/active/jak1/data --game jak1 -- -boot -fakeiso
```

***

### OpenGOAL: Jak II

#### Preface

The folders in this section will be repeated from [OpenGOAL: Jak and Dexter: The Precursor Legacy](#opengoal-jak-and-dexter-the-precursor-legacy). If you have already installed Jak and Dexter: The Precursor Legacy, you may use the same folders and launcher to install Jak II. 

#### What is OpenGOAL: Jak II?

`OpenGOAL is an unofficial port of Jak II for Windows and Linux.`

Source: [https://opengoal.dev/](https://opengoal.dev/)

#### Setting up OpenGOAL

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create an `OpenGOAL` folder
2. Place your `Jak II` ISO directly in the newly created `OpenGOAL` folder
3. Download the latest `amd64.AppImage` from here: [https://github.com/open-goal/launcher/releases/tag/v2.3.6](https://github.com/open-goal/launcher/releases/tag/v2.3.6) and place it in the folder you created in Step 1
    * Example: Download `open-goal-launcher_2.3.6_amd64.AppImage` 
        * The version number may be different depending on when you are reading this
4. Right click `open-goal-launcher_#.#.#_amd64.AppImage`, click `Properties`, click `Permissions`, check `Is Executable`

#### Installing OpenGOAL

If you already installed OpenGOAL: Jak and Dexter: The Precursor Legacy, you do not need to do Steps 2 and 3 again. 

1. In `/home/deck/Applications/OpenGOAL`, double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
2. Click `Set Version`, click the `Download` icon on the row with the latest version at the top
3. Click the circle icon on the left to select the version and click `Save` in the top right
4. On the left side, select `Jak II`
5. On the bottom right, click `Install via ISO` and select your `Jak II` ISO
6. The application will begin to decompile your game, this may take a few moments 
7. Once it is finished decompiling, press `Continue`
8. To play your game, open this launcher, select `Jak II` on the left, and click `Play` in the bottom right
    * The launcher does not work in Game Mode. See [How to Add OpenGOAL: Jak II to Steam](#how-to-add-opengoal-jak-ii-to-steam) to learn how to play the game directly in Steam

#### How to Install Custom Textures

**Note:** Texture packs need to be zipped in order to be installed from the launcher. This section will use `texture_replacements.zip` from [https://www.youtube.com/watch?v=lX1gBO1INZ4](https://www.youtube.com/watch?v=lX1gBO1INZ4) as an example.

1. Download the custom textures from the pinned comment on this Youtube Video: [https://www.youtube.com/watch?v=lX1gBO1INZ4](https://www.youtube.com/watch?v=lX1gBO1INZ4) to `/home/deck/Applications/OpenGOAL`
2. Double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
3. On the left side, select `Jak II`
4. On the bottom right, select `Features`, `Texture Packs`
5. Click `Add New Pack` 
6. Select `texture_replacements.zip` and wait a few moments
7. Your texture pack will appear below in its own box. Click the red `Disabled` button to enable your texture pack
8. Click `Apply Texture Changes` in the top right and wait a few moments
9. Your custom textures will now be installed

#### How to Install Mods

#### How to Add OpenGOAL: Jak II to Steam

1. In `/home/deck/Applications/OpenGOAL`, right click anywhere in the blank space, click `Create New` > `Text File`
2. Name it `Jak II.sh` 
3. At the top of the text file, write `#!/bin/bash`
4. In `/home/deck/Applications/OpenGOAL`, double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
5. On the left side, select `Jak II`
6. On the bottom right, click the `Gear` icon, and click `Copy Game Executable Command`
7. In the text file you created in Step 1, right click anywhere below `#!/bin/bash` and click `Paste`
8. Save the text file and exit out
9. Right click your newly created text file, click `Properties`, click `Permissions`, check `Is Executable`
10. Right click the text file, click `Add to Steam`
    * If you are using EmulationStation-DE or Steam ROM Manager, place in `Emulation/roms/desktop` instead
        * See [How to Add Decompilations and Reverse Engineered PC Ports to Steam](#how-to-add-decompilations-and-reverse-engineered-pc-ports-to-steam) for further detail

Your text file should look similar to the text below:

Text file name: 
`Jak II.sh`
Text file contents:
```
/home/deck/Applications/OpenGOAL/versions/official/v0.2.0/gk -v --proj-path /home/deck/Applications/OpenGOAL/active/jak2/data --game jak2 -- -boot -fakeiso
```


### Perfect Dark
[Back to the Top](#third-party-emulation-table-of-contents)

#### What is This Decompilation?

`A work-in-progress port of the Perfect Dark decompilation to modern platforms.`

Source: [https://github.com/fgsfdsfgs/perfect_dark](https://github.com/fgsfdsfgs/perfect_dark)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following, one line at a time:
    * `sudo dpkg --add-architecture i386`
    * `sudo apt-get update`
4. Enter the following: 
    * `sudo apt-get install git gcc g++ gcc-multilib g++-multilib make libsdl2-dev zlib1g-dev libsdl2-dev:i386 zlib1g-dev:i386`

#### Setting Up Perfect Dark

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. Download the `i686-linux` version from [https://github.com/fgsfdsfgs/perfect_dark#download](https://github.com/fgsfdsfgs/perfect_dark#download) to your `Downloads` folder
2. Right click `pd-i686-linux.zip`, click `Extract archive here, autodetect subfolder`
3. Move the newly extracted `pd-i686-linux` folder to `/home/deck/Applications`
4. Right click `pd`
5. Click `Properties`
6. Click `Permissions`
7. Check `Is Executable`
8. Place your `Perfect Dark` ROM in `/home/deck/Applications/pd-i686-linux/data`
    * MD5 Hash: `e03b088b6ac9e0080440efed07c1e40f`
    * To locate your MD5 Hash, right click your ROM, click `Properties`, click `Checksums`, click `Calculate` to the left of `MD5` and compare it to the above hash. If it is a match, you have a valid ROM 5
9. In order to properly launch Perfect Dark, proceed to the next section

#### How to Launch Perfect Dark

1. Download attached `.sh` file
    * [https://gist.githubusercontent.com/rawdatafeel/5337756f78b3c42f0a532ff360b85273/raw/dc79b7a5d734e8f0c10b6456080d63f255dfecba/PerfectDark.sh](https://gist.githubusercontent.com/rawdatafeel/5337756f78b3c42f0a532ff360b85273/raw/dc79b7a5d734e8f0c10b6456080d63f255dfecba/PerfectDark.sh)
    * Right click anywhere on the page, click `Save Page As`
    * **Note:** If you are using different folder locations, make sure to edit the above file and edit the paths
2. Place in `/home/deck/Applications`
    * If you are using EmulationStation-DE or Steam ROM Manager, place in `Emulation/roms/desktop` instead
        * See [How to Add Decompilations and Reverse Engineered PC Ports to Steam](#how-to-add-decompilations-and-reverse-engineered-pc-ports-to-steam) for instructions
3. Right click `PerfectDark.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `PerfectDark.sh` to open Perfect Dark

#### How to Configure Perfect Dark

1. Open `PerfectDark.sh` at least once so it can generate the `pd.ini` file 
2. Open the `/home/deck/.local/share/perfectdark/` folder
    * `~/.local` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
3. Right click `pd.ini`, click `Open with Kate` or a text editor of your choice
4. Customize settings

**Recommended Settings**

* Set `DefaultWidth` to `800`
* Set `DefaultHeight` to `1200`
* Set `DefaultFullscreen` to `1`

#### Controls

[https://github.com/fgsfdsfgs/perfect_dark#controls](https://github.com/fgsfdsfgs/perfect_dark#controls)

***

### Render96ex
[Back to the Top](#third-party-emulation-table-of-contents)

#### How to Compile Render96ex on the Steam Deck

#### What is Render96ex?

`An "HD" version of Super Mario 64 based on the rendered advertisements and art published in Nintendo Power.`

Source: [https://github.com/Render96/Render96ex/wiki](https://github.com/Render96/Render96ex/wiki)

When you include the HD textures as part of this guide the whole Render96ex install will need 1.1GB of storage. This compares to less than 0.1 GB for the SM64Plus version of the game.

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: `sudo apt install -y git build-essential pkg-config libusb-1.0-0-dev libsdl2-dev bsdmainutils libglew-dev`

#### Setting Up Render96ex

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone --single-branch --branch alpha https://github.com/Render96/Render96ex.git`
3. A `Render96ex` folder will be created, place your Super Mario 64 ROM in this folder
4. Rename the Super Mario 64 ROM to `baserom.us.z64`

#### Building Render96ex

1. In `/home/deck/Applications/Distrobox/Render96ex/`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make -j4 TEXTURE_FIX=1`
3. Wait for it to finish building
4. To play Render96ex, open `sm64.us.f3dex2e` in `/home/deck/Applications/Distrobox/Render96ex/build/us_pc`

#### How to Install Custom Models

1. Download the latest model pack: [https://github.com/Render96/ModelPack/releases](https://github.com/Render96/ModelPack/releases) to `/home/deck/Downloads`
2. Right click `Render96_DynOs_v3.2.7z` and click `Extract archive here, autodetect subfolder`
3. Move the newly extracted `Render96_DynOs...` folder to `/home/deck/Applications/Distrobox/Render96ex/build/us_pc/dynos/packs`
4. To enable custom models, in game, press `Start`, press `L2`, select `Model Packs` and enable `Render96DynOs...`

#### How to Install Custom Textures

1. In `/home/deck/Applications/Distrobox/Render96ex/`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/pokeheadroom/RENDER96-HD-TEXTURE-PACK.git -b master`
2. Move the `gfx` folder in the newly cloned `RENDER96-HD-TEXTURE-PACK` folder to `/home/deck/Applications/Distrobox/Render96ex/build/us_pc/res`

#### How to Configure Render96ex

1. While in game, press `Start`, press `R1`
2. Configure settings



***

### Ship of Harkinian: Ocarina of Time 
[Back to the Top](#third-party-emulation-table-of-contents)

#### What is Ship of Harkinian?

An unofficial PC port of The Legend of Zelda Ocarina of Time

Source: [https://www.shipofharkinian.com/](https://www.shipofharkinian.com/)

#### Supported Legend of Zelda: Ocarina of Time ROMs

**Note:** You will need one of the following ROMs before you can proceed with the tutorial

#### Ocarina of Time Debug PAL GC (not Master Quest)
> Currently the recommended option
```
Build team: `zelda@srd022j`
Build date: `03-02-21 00:49:18` (year-month-day)
sha1: cee6bc3c2a634b41728f2af8da54d9bf8cc14099
```
#### Ocarina of Time PAL GameCube
> May lead to crashes and instability
```
sha1: 0227d7c0074f2d0ac935631990da8ec5914597b4
```
#### Ocarina of Time Debug PAL GC MQ (Dungeons will be Master Quest)
```
Build team: `zelda@srd022j`
Build date: `03-02-21 00:16:31` (year-month-day)
sha1: 079b855b943d6ad8bd1eb026c0ed169ecbdac7da (Produced by decomp)
sha1: 50bebedad9e0f10746a52b07239e47fa6c284d03 (Alternate)
```

#### Setting up Ship of Harkinian

**Note:** The following folder locations are recommendations. You can choose a different folder location.

1. In `/home/deck/Applications`, create a `ShipofHarkinian` folder
2. Download the latest `Linux-Performance` version of `Ship of Harkinian`: [https://github.com/HarbourMasters/Shipwright/releases](https://github.com/HarbourMasters/Shipwright/releases) to the folder you created in Step 1
    * Download the `SoH-VERSION-NAME-Linux-Performance.zip` file
3. Right click the downloaded zip file and click `Extract archive here, detect subfolder`
4. Move the `soh.AppImage` to `/home/deck/Applications/ShipofHarkinian`
5. Right click `soh.AppImage`, click `Properties`, click `Permissions`, check `Is Executable`

#### Installing Ship of Harkinian

1. Place your `The Legend of Zelda: Ocarina of Time` ROM in `/home/deck/Applications/ShipofHarkinian`
2. Open `soh.AppImage`, wait
3. To play Ship of Harkinian, open `soh.AppImage`


#### How to Install Custom Textures and Mods

**Texture Pack and Mod Sources**

__This list is not exhaustive__

* [https://gamebanana.com/games/16121](https://gamebanana.com/games/16121)
* [https://evilgames.eu/texture-packs/oot-reloaded.htm](https://evilgames.eu/texture-packs/oot-reloaded.htm)

**How to Install Custom Textures and Mods**

1. In your Ship of Harkinian folder, create a `mods` folder, all lowercase
    * `/home/deck/Applications/ShipofHarkinian` if you used the folders in the above guide
    * **Casing matters**
2. Place your mods or textures directly into this folder. Mods or textures typically have a `.otr` file extension
    * If you have a `.rar` or `.zip` file, you will need to extract it first 
3. Depending on the mod or texture pack, you may need to enable it in game as well. Refer to the mod or texture pack for any additional instructions

***

### sm64ex
[Back to the Top](#third-party-emulation-table-of-contents)

#### What is This Decompilation?

`A fork of sm64-port/sm64-port with additional features.`

Source: [https://github.com/sm64pc/sm64ex](https://github.com/sm64pc/sm64ex)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install build-essential git python3 libglew-dev libsdl2-dev bsdmainutils patch`

#### Setting Up sm64ex

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/sm64pc/sm64ex`
3. A `sm64ex` folder will be created, place your Super Mario 64 ROM in this folder
4. Rename the Super Mario 64 ROM to `baserom.us.z64`

#### Building sm64ex

1. In the `sm64ex` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make`
3. Wait for it to finish building
4. To play `sm64ex`, open `sm64.us.f3dex2e` in `/home/deck/Applications/Distrobox/sm64ex/build/us_pc`

#### How to Configure sm64ex

1. Open `sm64.us.f3dex2e` in `/home/deck/Applications/Distrobox/sm64ex/build/us_pc` at least once so it can generate the `sm64config.txt` file 
2. Open the `/home/deck/.local/share/sm64ex/` folder
    * `~/.local` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
3. Right click `sm64config.txt`, click `Open with Kate` or a text editor of your choice
4. Customize settings

#### How to Apply Patches

A 60 FPS patch is included with the GitHub repo for sm64ex. However, you can take what's written here and apply additional patches to sm64ex.

1. In the `/home/deck/Applications/Distrobox/sm64ex/enhancements` folder, right click anywhere in the folder, click `Open Terminal Here`
2. Enter:
    * ` git apply 60fps_ex.patch --ignore-whitespace --reject`
    * `60fps_ex.patch` is the name of the included file. If the file name is different, replace the file name in the above command
3. You will need to re-build sm64ex for the patches to apply. To do so, enter the Ubuntu Distrobox and run `make clean` in the ``/home/deck/Applications/Distrobox/sm64ex` folder

***

### sm64ex-coop
[Back to the Top](#third-party-emulation-table-of-contents)

#### What is This Decompilation?

`Online multiplayer mod for SM64 that synchronizes all entities and every level for multiple players. Fork of sm64pc/sm64ex.`

Source: [https://github.com/djoslin0/sm64ex-coop](https://github.com/djoslin0/sm64ex-coop)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install build-essential git python3 libglew-dev libsdl2-dev libz-dev bsdmainutils`

#### Setting Up sm64ex-coop

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/djoslin0/sm64ex-coop.git`
3. A `sm64ex-coop` folder will be created, place your Super Mario 64 ROM in this folder
4. Rename the Super Mario 64 ROM to `baserom.us.z64`

#### Building sm64ex-coop

1. In the `sm64ex-coop` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make -j4`
3. Wait for it to finish building
4. To play `sm64ex-coop`, open `sm64.us.f3dex2e` in `/home/deck/Applications/Distrobox/sm64ex-coop/build/us_pc`

#### How to Configure sm64ex-coop

1. Open `sm64.us.f3dex2e` in `/home/deck/Applications/Distrobox/sm64ex-coop/build/us_pc`
2. On the main menu, click `Options`

#### How to Play Multiplayer

See [https://github.com/djoslin0/sm64ex-coop/wiki/Hosting-and-Joining](https://github.com/djoslin0/sm64ex-coop/wiki/Hosting-and-Joining).

***

### Sonic 1 and 2
[Back to the Top](#third-party-emulation-table-of-contents)

#### Preface

To compile Sonic 1 and 2, you will need a legally obtained copy of a `Data.rsdk` file, obtained either from the Sonic 1 and 2 versions on the Android or iOS versions. For instructions, see [Android](https://gamebanana.com/tuts/14492) and [iOS](https://gamebanana.com/tuts/14491).

#### What is This Decompilation?

`A complete decompilation of Retro Engine v4 and the menus from Sonic 1 and 2 (2013).`

Source: [https://github.com/Rubberduckycooly/Sonic-1-2-2013-Decompilation](https://github.com/Rubberduckycooly/Sonic-1-2-2013-Decompilation)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install build-essential git libsdl2-dev libvorbis-dev libogg-dev libglew-dev libdecor-0-dev`

#### Setting Up Sonic 1 and 2

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone --recursive https://github.com/Rubberduckycooly/Sonic-1-2-2013-Decompilation.git`
3. A `Sonic-1-2-2013-Decompilation` folder will be created

#### Building Sonic 1 and 2

1. In the `Sonic-1-2-2013-Decompilation` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make -j5`
3. In the `Sonic-1-2-2013-Decompilation`, a `bin` folder will be created
4. If you would like to play both Sonic 1 and 2, make a copy of the `bin` folder directly in the `Sonic-1-2-2013-Decompilation` folder
5. Rename the original `bin` and the copied folder to Sonic 1 and Sonic 2 respectively
    * This step is for easier folder management, it is a recommendation and not a requirement
6. Place the matching `Data.rsdk` in each folder
7. To play Sonic 1 and 2, open `RSDKv4`

#### How to Configure Sonic 1 and 2

1. In the respective Sonic 1 and 2 folder, after launching `RSDKv4` for the first time, a `settings.ini` will be created
2. Right click `settings.ini`, click `Open with Kate` or a text editor of your choice
3. Customize settings

#### How to Mod Sonic 1 and 2

**Mod Resources**

_This list is not comprehensive_

* [Sonic 1: GameBanana](https://gamebanana.com/mods/465176)
* [Sonic 2: GameBanana](https://gamebanana.com/mods/459508)

1. In the respective `Sonic 1` or `Sonic 2` folders, create a `mod` folder
2. Download and extract mod(s) to the `mod` folder
    * A mod folder should typically have a `Data` folder and a `mod.ini` file
3. Right click `settings.ini`, click `Open with Kate` or a text editor of your choice
4. Change `DevMenu=false` to `DevMenu=true` and save and close out of the file
5. While in game, press `Start` and you should see a list of your mod(s)
6. To activate/toggle a mod, press `A` on the respective mod
 
***

### Sonic CD
[Back to the Top](#third-party-emulation-table-of-contents)

#### Preface

To compile Sonic CD, you will need a legally obtained copy of a `Data.rsdk` file, obtained either from the Sonic CD versions on the Android or iOS versions. For instructions, see [Android](https://gamebanana.com/tuts/14942) and [iOS](https://gamebanana.com/tuts/14491).

#### What is This Decompilation?

`A complete decompilation of Retro Engine v3/Sonic CD.`

Source: [https://github.com/Rubberduckycooly/Sonic-CD-11-Decompilation](https://github.com/Rubberduckycooly/Sonic-CD-11-Decompilation)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install build-essential git libsdl2-dev libvorbis-dev libogg-dev libtheora-dev libglew-dev`

#### Setting Up Sonic CD

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone --recursive https://github.com/Rubberduckycooly/Sonic-CD-11-Decompilation.git`
3. A `Sonic-CD-11-Decompilation` folder will be created

#### Building Sonic CD

1. In the `Sonic-CD-11-Decompilation` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make CXXFLAGS=-O2 -j5`
3. In the `Sonic-CD-11-Decompilation`, a `bin` folder will be created
4. Place the `Data.rsdk` you retrieved from [How to Compile Sonic CD on the Steam Deck](#how-to-compile-sonic-cd-on-the-steam-deck) directly into the `bin` folder
7. To play Sonic CD, open `RSDKv4`

#### How to Configure Sonic CD
1. In the `bin`, after launching `RSDKv4` for the first time, a `settings.ini` will be created
2. Right click `settings.ini`, click `Open with Kate` or a text editor of your choice
3. Customize settings

#### How to Mod Sonic CD

**Mod Resources**

_This list is not comprehensive_

* [https://gamebanana.com/mods/games/6108](https://gamebanana.com/mods/games/6108)

1. In the `bin` folders, create a `mod` folder
2. Download and extract mod(s) to the `mod` folder
    * A mod folder should typically have a `Data` folder and a `mod.ini` file
3. Right click `settings.ini`, click `Open with Kate` or a text editor of your choice
4. Change `DevMenu=false` to `DevMenu=true` and save and close out of the file
5. While in game, press `Start` and you should see a list of your mod(s)
6. To activate/toggle a mod, press `A` on the respective mod

***
    
### Super Mario 64 Plus 
[Back to the Top](#third-party-emulation-table-of-contents)

#### How to Compile Super Mario 64 Plus on the Steam Deck

#### What is Super Mario 64 Plus?

`SM64Plus is a fork of sm64-port that focuses on customizability and aims to add features that not only fix some of the issues found in the base game but also enhance the gameplay overall with extra options.`

Source: [https://github.com/MorsGames/sm64plus](https://github.com/MorsGames/sm64plus)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install -y git build-essential pkg-config libusb-1.0-0-dev libsdl2-dev bsdmainutils`

#### Setting Up Super Mario 64 Plus

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/MorsGames/sm64plus`
3. A `sm64plus` folder will be created, place your Super Mario 64 ROM in this folder
4. Rename the Super Mario 64 ROM to `baserom.us.z64`

#### Building Super Mario 64 Plus

1. In `/home/deck/Applications/Distrobox/sm64plus/`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make -j4`
3. Wait for it to finish building
4. To play Super Mario 64 Plus, open `sm64.us` in `/home/deck/Applications/Distrobox/sm64plus/build/us_pc`
    * The game may have missing HUD UI textures, to fix these, read the next section
   
#### How to Fix the Missing HUD UI textures

1. Download attached `.sh` file
    * Link: [https://gist.githubusercontent.com/rawdatafeel/b3933e82b913175f2b7cad60f9c6f2b5/raw/0f7e619465a4349da98b5c7899a8e998037a9876/SuperMario64Plus.sh](https://gist.githubusercontent.com/rawdatafeel/b3933e82b913175f2b7cad60f9c6f2b5/raw/0f7e619465a4349da98b5c7899a8e998037a9876/SuperMario64Plus.sh)
    * Right click anywhere on the page, click `Save Page As`
    * **Note:** If you are using different folder locations, make sure to edit the above file and edit the paths
2. Place in `/home/deck/Applications`
    * If you are using EmulationStation-DE or Steam ROM Manager, place in `Emulation/roms/desktop` instead
        * See [How to Add Decompilations and Reverse Engineered PC Ports to Steam](#how-to-add-decompilations-and-reverse-engineered-pc-ports-to-steam) for instructions
3. Right click `SuperMario64Plus.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `SuperMario64Plus.sh` to open SM64Plus

#### How to Configure Super Mario 64 Plus

1. Open `sm64.us` in `/home/deck/Applications/Distrobox/sm64plus/build/us_pc` at least once so it can generate the `settings.ini` file 
2. Open the `/home/deck/Applications/Distrobox/sm64plus/build/us_pc` folder
3. Right click `settings.ini`, click `Open with Kate` or a text editor of your choice
4. Customize settings

**Recommended Settings**

* Set `window_height` to `800`

#### How to Add Super Mario 64 Plus to Steam

1. In `/home/deck/Applications`, right click `SuperMario64Plus.sh`, click `Add to Steam`
2. After adding it to Steam, you may rename the shortcut in Steam directly


***

### Super Mario Bros
[Back to the Top](#third-party-emulation-table-of-contents)

### How to Compile Super Mario Bros on the Steam Deck

**Note:** This section requires a legal copy of `Super Mario World` and `Super Mario All-Stars` ROMs for the SNES. 

#### What is this?

`A reverse engineered clone of Super Mario Bros.`

Source: [https://github.com/snesrev/smw](https://github.com/snesrev/smw)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following commands one at a time: 
    * `sudo apt install libsdl2-dev python3-pip make`
    * `sudo apt install python3-zstandard`

#### How to Set Up Super Mario Bros

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/snesrev/smw smb1`
3. A `smb1` folder will be created, place your `Super Mario All-Stars` ROM in `/home/deck/Applications/smb1/other`
    * SHA256 Hash: `c05817c5b7df2fbfe631563e0b37237156a8f6b6`
    * To locate your SHA256 Hash, right click your ROM, click `Properties`, click `Checksums`, click `Calculate` to the left of `SHA1` and compare it to the above hash. If it is a match, you have a valid ROM
4. Rename the Super Mario World ROM to `smas.sfc`
5. Place your `Super Mario World` ROM in `/home/deck/Distrobox/Applications/smbll`
    * SHA256 Hash: `6b47bb75d16514b6a476aa0c73a683a2a4c18765`
    * To locate your SHA256 Hash, right click your ROM, click `Properties`, click `Checksums`, click `Calculate` to the left of `SHA1` and compare it to the above hash. If it is a match, you have a valid ROM
6. Rename the `Super Mario World` ROM to `smw.sfc`

#### How to Build Super Mario Bros

1. In `/home/deck/Applications/Distrobox/smb1/other`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `python3 extract.py`
3. Change directories to `/home/deck/Applications/Distrobox/smb1` by entering the following:
    * `cd ..`  
    * If you are not comfortable with the terminal, you may also open a terminal in `/home/deck/Applications/Distrobox/smb1`, enter the Distrobox again by entering: `distrobox enter ubuntu`
4. Enter:
    * `make` 
5. Wait for it to finish building

#### How to Play Super Mario Bros

1. Download attached `.sh` file
    * Link: [https://gist.githubusercontent.com/rawdatafeel/2dcf2e3a19d42fab86c1c67590d51025/raw/79bf538b66e4025e577fb9dba9c37560f5f26631/smb1.sh](https://gist.githubusercontent.com/rawdatafeel/2dcf2e3a19d42fab86c1c67590d51025/raw/79bf538b66e4025e577fb9dba9c37560f5f26631/smb1.sh)
    * Right click anywhere on the page, click `Save Page As`
    * **Note:** If you are using different folder locations, make sure to edit the above file and edit the paths
2. Place in `/home/deck/Applications`
3. Right click `smb1.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `smb1.sh` to open Super Mario Bros

#### How to Configure Super Mario Bros

1. In `/home/deck/Applications/Distrobox/smb1/`, right click `smw.ini`, click `Open with Kate` or a text editor of your choice
2. Customize settings

**Recommended** 

* Set `Fullscreen` to `1`


***

### Super Mario Bros: The Lost Levels
[Back to the Top](#third-party-emulation-table-of-contents)

#### How to Compile Super Mario Bros: The Lost Levels on the Steam Deck

**Note:** This section requires a legal copy of `Super Mario World` and `Super Mario All-Stars` ROMs for the SNES. 

#### What is this?

`A reverse engineered clone of Super Mario Bros: The Lost Levels.`

Source: [https://github.com/snesrev/smw](https://github.com/snesrev/smw)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following commands one at a time: 
    * `sudo apt install libsdl2-dev python3-pip make git`
    * `sudo apt install python3-zstandard`

#### How to Set Up Super Mario Bros: The Lost Levels

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/snesrev/smw smbll`
3. A `smbll` folder will be created, place your `Super Mario All-Stars` ROM in `/home/deck/Distrobox/Applications/smbll/other`
    * SHA256 Hash: `c05817c5b7df2fbfe631563e0b37237156a8f6b6`
    * To locate your SHA256 Hash, right click your ROM, click `Properties`, click `Checksums`, click `Calculate` to the left of `SHA1` and compare it to the above hash. If it is a match, you have a valid ROM
4. Rename the `Super Mario All-Stars` ROM to `smas.sfc`
5. Place your `Super Mario World` ROM in `/home/deck/Distrobox/Applications/smbll`
    * SHA256 Hash: `6b47bb75d16514b6a476aa0c73a683a2a4c18765`
    * To locate your SHA256 Hash, right click your ROM, click `Properties`, click `Checksums`, click `Calculate` to the left of `SHA1` and compare it to the above hash. If it is a match, you have a valid ROM
6. Rename the `Super Mario World` ROM to `smw.sfc`

#### How to Build Super Mario Bros: The Lost Levels

1. In `/home/deck/Applications/Distrobox/smbll/other`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `python3 extract.py`
3. Change directories to `/home/deck/Applications/Distrobox/smbll` by entering the following:
    * `cd ..`  
    * If you are not comfortable with the terminal, you may also open a terminal in `/home/deck/Applications/Distrobox/smbll`, enter the Distrobox again by entering: `distrobox enter ubuntu`
4. Enter:
    * `make` 
5. Wait for it to finish building

#### How to Play Super Mario Bros: The Lost Levels

1. Download attached `.sh` file
    * Link: [https://gist.githubusercontent.com/rawdatafeel/279ab67a552f665599b8cbda530a6cfa/raw/f537fd54b6cef235ef4c896b6ba56bba4f3f2f95/smbll.sh](https://gist.githubusercontent.com/rawdatafeel/279ab67a552f665599b8cbda530a6cfa/raw/f537fd54b6cef235ef4c896b6ba56bba4f3f2f95/smbll.sh)
    * Right click anywhere on the page, click `Save Page As`
    * **Note:** If you are using different folder locations, make sure to edit the above file and edit the paths
2. Place in `/home/deck/Applications`
3. Right click `smbll.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `smbll.sh` to open Super Mario Bros: The Lost Levels

#### How to Configure Super Mario Bros: The Lost Levels

1. In `/home/deck/Applications/Distrobox/smbll/`, right click `smw.ini`, click `Open with Kate` or a text editor of your choice
2. Customize settings

**Recommended** 

* Set `Fullscreen` to `1`

***

### Super Mario World 
[Back to the Top](#third-party-emulation-table-of-contents)

#### How to Compile Super Mario World on the Steam Deck

#### What is this?

`A reverse engineered clone of Super Mario World.`

Source: [https://github.com/snesrev/smw](https://github.com/snesrev/smw)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following commands one at a time: 
    * `sudo apt install libsdl2-dev python3-pip make git`
    * `sudo apt install python3-zstandard`

#### How to Set Up Super Mario World

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/snesrev/smw`
4. A `smw` folder will be created, place your Super Mario World ROM in `/home/deck/Applications/smw`
    * SHA256 Hash: `6b47bb75d16514b6a476aa0c73a683a2a4c18765`
    * To locate your SHA256 Hash, right click your ROM, click `Properties`, click `Checksums`, click `Calculate` to the left of `SHA1` and compare it to the above hash. If it is a match, you have a valid ROM
5. Rename the Super Mario World ROM to `smw.sfc`

#### How to Build Super Mario World

1. In `/home/deck/Applications/Distrobox/smw/`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make`
3. Wait for it to finish building
4. To play Super Mario World, open `smw` in `/home/deck/Applications/Distrobox/smw/`

#### How to Configure Super Mario World

1. In `/home/deck/Applications/Distrobox/smw/`, right click `smw.ini`, click `Open with Kate` or a text editor of your choice
2. Customize settings

**Recommended** 

* Set `Fullscreen` to `1`

#### How to Mod Super Mario World

1. In `/home/deck/Applications/Distrobox/smw/`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter:
    * `git clone https://github.com/snesrev/smw_hacks.git`
3. Enter:
    * `pip install --break-system-packages --user bsdiff4`
4. Select a mod:
    * You do not need to download any additional content from the links below. They are strictly for additional context on what the mod entails
    * You can only have one mod active at a time. These mods will override the base Super Mario World game
    * [Return to Dinosaur Land](https://www.smwcentral.net/?a=details&id=4990&p=section)
        * Enter:
            * `python3 assets/restool.py --hack=return_dino_land`  
    * [SMW with Levels from NSMB](https://www.smwcentral.net/?p=section&a=details&id=32487)
        * Enter:
            * `python3 assets/restool.py --hack=nsmb`
    * [Super Mario World Enhanced](https://www.smwcentral.net/?a=details&id=5922&p=section)
        * Enter:
            * `python3 assets/restool.py --hack=enhanced`
    * [Super Mario World Redrawn](https://www.romhacking.net/hacks/6771/)
        * Enter:
            * `python3 assets/restool.py --hack=redrawn`
    * To remove a mod and play vanilla Super Mario World
        * Enter:
            * `python3 assets/restool.py`
5. To play the mod you selected, open `smw` in `/home/deck/Applications/Distrobox/smw/` 

***

### Super Metroid
[Back to the Top](#third-party-emulation-table-of-contents)
   
#### How to Build Super Metroid on the Steam Deck

#### What is this?

`A reverse engineered clone of Super Metroid.`

Source: [https://github.com/snesrev/sm](https://github.com/snesrev/sm)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install libsdl2-dev python3-pip make git`

#### Setting Up Super Metroid

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone --recursive https://github.com/snesrev/sm`
4. A `sm` folder will be created, place your US Super Metroid ROM in `/home/deck/Applications/sm`
5. Rename the Super Metroid ROM to `sm.smc`

#### Building Super Metroid

1. In `/home/deck/Applications/Distrobox/sm`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make`
3. Wait for it to finish building
4. To play Super Metroid, open `sm` in `/home/deck/Applications/Distrobox/sm/`

#### How to Configure Super Metroid

1. In `/home/deck/Applications/Distrobox/sm/`, right click `sm.ini`, click `Open with Kate` or a text editor of your choice
2. Customize settings

***

### Super Metroid Redux
[Back to the Top](#third-party-emulation-table-of-contents)
   
#### How to Build Super Metroid Redux on the Steam Deck

#### What is this?

A port of `Super Metroid Redux`: [https://www.romhacking.net/hacks/4963/](https://www.romhacking.net/hacks/4963/), using `a reverse engineered clone of Super Metroid.`

Source: [https://github.com/testyourmine/sm-redux](https://github.com/testyourmine/sm-redux)

Source: [https://github.com/snesrev/sm](https://github.com/snesrev/sm)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following: 
    * `sudo apt install libsdl2-dev python3-pip make git`
 
#### Patching Super Metroid Redux

1. Download the patch here: [https://www.romhacking.net/hacks/4963/](https://www.romhacking.net/hacks/4963/)
2. Use the romhacking website here to patch your ROM: [https://www.romhacking.net/patch/](https://www.romhacking.net/patch/)

#### Setting Up Super Metroid Redux

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone --recursive https://github.com/testyourmine/sm-redux`
4. A `sm-redux` folder will be created, place your patched US Super Metroid ROM in `/home/deck/Applications/sm-redux`
5. Rename the patched Super Metroid ROM to `sm.smc`

#### Building Super Metroid Redux

1. In `/home/deck/Applications/Distrobox/sm-redux`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make`
3. Wait for it to finish building
4. To play Super Metroid Redux, open `sm` in `/home/deck/Applications/Distrobox/sm-redux/`

#### How to Configure Super Metroid Redux

1. In `/home/deck/Applications/Distrobox/sm-redux/`, right click `sm.ini`, click `Open with Kate` or a text editor of your choice
2. Customize settings

*** 

### zelda3: A Link to the Past 
[Back to the Top](#third-party-emulation-table-of-contents)

#### How to Compile zelda3 on the Steam Deck

#### What is zelda3?

`A reverse engineered clone of Zelda 3 - A Link to the Past.`

Source: [https://github.com/snesrev/zelda3](https://github.com/snesrev/zelda3)

#### Installing Prerequisites

1. To do the steps in this section, you will need to have created an Ubuntu Distrobox. If you have not created one already, see [How to Set up Distrobox](#how-to-set-up-distrobox) for instructions
2. Enter the Distrobox by opening Konsole and entering: `distrobox enter ubuntu`
3. Enter the following commands one line at a time: 
    * `sudo apt install libsdl2-dev python3-pip make git python3-zstandard python3-yaml python3-pillow`

#### How to Set Up zelda3

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Applications`, create a `Distrobox` folder
2. In the `Distrobox` folder, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone https://github.com/snesrev/zelda3`
4. A `zelda3` folder will be created, place your US Link to the Past ROM in `/home/deck/Applications/zelda3`
    * SHA256 Hash: `66871d66be19ad2c34c927d6b14cd8eb6fc3181965b6e517cb361f7316009cfb`
    * To locate your SHA256 Hash, right click your ROM, click `Properties`, click `Checksums`, click `Calculate` to the left of `SHA1` and compare it to the above hash. If it is a match, you have a valid ROM
5. Rename the Link to the Past ROM to `zelda3.sfc`

#### How to Build zelda3

1. In `/home/deck/Applications/Distrobox/zelda3/`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `distrobox enter ubuntu`
2. Enter: 
    * `make`
3. Wait for it to finish building
4. To play zelda3, open `zelda3` in `/home/deck/Applications/Distrobox/zelda3/`

#### How to Configure zelda3

1. In `/home/deck/Applications/Distrobox/zelda3/`, right click `zelda3.ini`, click `Open with Kate` or a text editor of your choice
2. Customize settings

**Recommended** 

* Set `ExtendedAspectRatio` to `16:10`
* Set `Fullscreen` to `1`

#### How to Customize Sprites

1. In `/home/deck/Applications/Distrobox/zelda3/`, right click anywhere in the folder, click `Open Terminal Here`, enter:
    * `git clone --recursive https://github.com/snesrev/sprites-gfx.git`
2. In `/home/deck/Applications/Distrobox/zelda3/`, right click `zelda3.ini`, click `Open with Kate` or a text editor of your choice
3. Remove the `#` at the beginning of this line: `# LinkGraphics = sprites-gfx/snes/zelda3/link/sheets/megaman-x.2.zspr`
4. Replace `megaman-x.2.zspr` with the sprite of your choice

For a full list of sprites, visit: [http://alttp.mymm1.com/sprites/](http://alttp.mymm1.com/sprites/)

##### To find the file name to place in zelda3.ini

1. On [http://alttp.mymm1.com/sprites/](http://alttp.mymm1.com/sprites/), right click the link above the sprite you would like to use, click `Copy Link`
2. In a new tab, paste the URL
    * If you press enter, it will download the sprite
3. The sprite file name will be at the end of the URL
4. Example (Crewmate): [https://alttpr-assets.s3.us-east-2.amazonaws.com/crewmate.2.zspr](https://alttpr-assets.s3.us-east-2.amazonaws.com/crewmate.2.zspr)
5. In `zelda3.ini`, replace `megaman-x.2.zspr` at the end: `LinkGraphics = sprites-gfx/snes/zelda3/link/sheets/megaman-x.2.zspr` with `crewmate2.zspr`
6. Example: `LinkGraphics = sprites-gfx/snes/zelda3/link/sheets/crewmate2.zspr`


#### How to Enable MSU1 CD Soundtrack Files

Choose a soundtrack from: [https://www.zeldix.net/t791-the-legend-of-zelda-a-link-to-the-past](https://www.zeldix.net/t791-the-legend-of-zelda-a-link-to-the-past)

**Example**


1.  Download `Alternative New Soundtrack For Randomizers by JUD6MENT (updated: Sep 27, 2021)` from: [https://www.zeldix.net/t791-the-legend-of-zelda-a-link-to-the-past](https://www.zeldix.net/t791-the-legend-of-zelda-a-link-to-the-past) to your `/home/deck/Downloads` folder
2. Right click `Zelda Alternative Soundtrack by JUD6MENT (update Sep-21-2021).zip`, click `Extract archive here, autodetect subfolder`
3. Rename the newly extracted `Zelda Alternative Soundtrack by JUD6MENT (update Sep-21-2021)` folder to `msu`
    * `msu` is case sensitive
4. Move the `msu` folder to `/home/deck/Applications/Distrobox/zelda3/`
5. In `/home/deck/Applications/Distrobox/zelda3/`, right click `zelda3.ini`, click `Open with Kate` or a text editor of your choice
6. Edit the line: `EnableMSU = false` so it instead writes: `EnableMSU = true`
7. MSU1 CD Soundtrack Files are now enabled



***

## General Maintenance
[Back to the Top](#third-party-emulation-table-of-contents)

***

### How to Add Decompilations and Reverse Engineered PC Ports to Steam
[Back to the Top](#third-party-emulation-table-of-contents)

This section will use a simple script file to launch the various decompilations and reverse engineered ports on this page. You will need to create a script file per game. 

#### How to Create Script Files

- [Script Files: Group 1](#script-files-group-1)
    - [Cannonball OutRun Engine](#user-content-cannonball---outrun-engine)
    - [Render96ex](#render96ex)
    - [sm64ex](#sm64ex)
    - [sm64ex-coop](#sm64ex-coop)
    - [Sonic CD](#sonic-cd)
    - [Sonic 1 and 2](#sonic-1-and-2)
    - [Super Mario Bros](#super-mario-bros)
    - [Super Mario Bros: The Lost Levels](#super-mario-bros-the-lost-levels)
    - [Super Mario World](#super-mario-world)
    - [Super Metroid](#super-metroid)
    - [Super Metroid Redux](#super-metroid-redux)
    - [zelda3: A Link to the Past](#zelda3-a-link-to-the-past)
- [Script Files: Group 2](#script-files-group-2)
    - [Super Mario 64 Plus](#super-mario-64-plus)
- [Script Files: Group 3](#script-files-group-3)
    - [Perfect Dark](#perfect-dark)
- [Script Files: Group 4](#script-files-group-4)
    - [Ship of Harkinian: Ocarina of Time](#ship-of-harkinian-ocarina-of-time)
- [Script Files: Group 5](#script-files-group-5)
    - [OpenGOAL: Jak and Dexter: The Precursor Legacy](#opengoal-jak-and-dexter-the-precursor-legacy)
    - [OpenGOAL: Jak II](#opengoal-jak-ii)

#### Script Files: Group 1

- [Cannonball OutRun Engine](#user-content-cannonball---outrun-engine)
- [Render96ex](#render96ex)
- [sm64ex](#sm64ex)
- [sm64ex-coop](#sm64ex-coop)
- [Sonic CD](#sonic-cd)
- [Sonic 1 and 2](#sonic-1-and-2)
- [Super Mario Bros](#super-mario-bros)
- [Super Mario Bros: The Lost Levels](#super-mario-bros-the-lost-levels)
- [Super Mario World](#super-mario-world)
- [Super Metroid](#super-metroid)
- [Super Metroid Redux](#super-metroid-redux)
- [zelda3: A Link to the Past](#zelda3-a-link-to-the-past)

1. In `Emulation/roms/desktop`, right click anywhere in the blank space, click `Create New` > `Text File` and give the text file a descriptive name (matching the game name typically) with a `.sh` file extension
    * For example: `Super Metroid.sh` or `The Legend of Zelda: A Link to the Past.sh`
2. Open the text file in a text editor of your choice
3. Enter the following (including the quotes):

        #!/bin/sh
        cd "/path/to/game"
        "/path/to/gameexecutable"

4. Edit the path to where your game executable is located
    * For example:

            #!/bin/bash
            cd "/home/deck/Applications/Distrobox/sm"
            "/home/deck/Applications/Distrobox/sm/sm"
            
5. Save and exit out of the file
6. Right click the newly created file
7. Click `Properties`
8. Click `Permissions`
9. Check `Is Executable`

**Note:** 

* If your path is in the `home` directory, you may also replace `/home/$USER` (`home/deck` if you are on a Steam Deck) with `$HOME` 
    * For example:

            #!/bin/bash
            cd "$HOME/Applications/Distrobox/sm"
            "$HOME/Applications/Distrobox/sm/sm"
    
* For `Super Mario Bros` and `Super Mario Bros: The Lost Levels`, you will also need to include the path to the respective game file in addition to the `smw` executable. For more information, see [How to Play Super Mario Bros](#how-to-play-super-mario-bros) and [How to Play Super Mario Bros: The Lost Levels](#how-to-play-super-mario-bros-the-lost-levels).

#### Script Files: Group 2

- [Super Mario 64 Plus](#super-mario-64-plus)

1. Download attached `.sh` file
    * Link: [https://gist.githubusercontent.com/rawdatafeel/b3933e82b913175f2b7cad60f9c6f2b5/raw/b3ea9d23cfa37cad6d6e7a0d4b3ab26e408441e4/SuperMario64Plus.sh](https://gist.githubusercontent.com/rawdatafeel/b3933e82b913175f2b7cad60f9c6f2b5/raw/b3ea9d23cfa37cad6d6e7a0d4b3ab26e408441e4/SuperMario64Plus.sh)
    * Right click anywhere on the page, click `Save Page As`
    * **Note:** If you are using different folder locations, make sure to edit the above file and edit the paths
2. Place in `Emulation/roms/desktop`
3. Right click `SuperMario64Plus.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`

#### Script Files: Group 3

- [Perfect Dark](#perfect-dark)

1. Download attached `.sh` file
    * [https://gist.githubusercontent.com/rawdatafeel/5337756f78b3c42f0a532ff360b85273/raw/dc79b7a5d734e8f0c10b6456080d63f255dfecba/PerfectDark.sh](https://gist.githubusercontent.com/rawdatafeel/5337756f78b3c42f0a532ff360b85273/raw/dc79b7a5d734e8f0c10b6456080d63f255dfecba/PerfectDark.sh)
    * Right click anywhere on the page, click `Save Page As`
    * **Note:** If you are using different folder locations, make sure to edit the above file and edit the paths
2. Place in `Emulation/roms/desktop`
3. Right click `PerfectDark.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `PerfectDark.sh` to open Perfect Dark

#### Script Files: Group 4

- [Ship of Harkinian: Ocarina of Time](#ship-of-harkinian-ocarina-of-time)

1. In a folder of your choice, create a text file and give it a descriptive name (matching the game name typically) with a `.sh` file extension
     * For example: `Ship of Harkinian.sh`
2. Open the text file in a text editor of your choice
3. Enter the following:

        #!/bin/sh
        "/path/to/gameexecutable"

4. Edit the path to where your game executable is located
    * For example:

            #!/bin/sh
            "/home/deck/Applications/ShipofHarkinian/soh.appimage"

5. Save and exit out of the file
6. Right click the newly created file
7. Click `Properties`
8. Click `Permissions`
9. Check `Is Executable`

**Note:** 

* If your path is in the `home` directory, you may also replace `/home/$USER` (`home/deck` if you are on a Steam Deck) with `$HOME` 
    * For example:

            #!/bin/sh
            "$HOME/Applications/ShipofHarkinian/soh.appimage"

#### Script Files: Group 5

- [OpenGOAL: Jak and Dexter: The Precursor Legacy](#opengoal-jak-and-dexter-the-precursor-legacy)
- [OpenGOAL: Jak II](#opengoal-jak-ii)

1. In `Emulation/roms/desktop`, right click anywhere in the blank space, click `Create New` > `Text File`
2. Name it matching the respective Jak and Dexter game 
3. At the top of the text file, write `#!/bin/bash`
4. In `/home/deck/Applications/OpenGOAL`, double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
5. On the left side, select the matching Jak and Dexter game you created the script file for in Step 2 
6. On the bottom right, click the `Gear` icon, and click `Copy Game Executable Command`
7. In the text file you created in Step 1, right click anywhere below `#!/bin/bash` and click `Paste`
8. Save the text file and exit out
9. Right click your newly created text file, click `Properties`, click `Permissions`, check `Is Executable`

#### How to Utilize Script Files with EmulationStation-DE

1. Place your script files in `Emulation/roms/desktop`
2. In Game Mode, open EmulationStation-DE and play your newly created script files

#### How to Utilize Script Files with Steam ROM Manager

1. Place your script files in `Emulation/roms/desktop`
2. In `/home/deck/.config/steam-rom-manager/userData/`, open `userConfigurations.json` in a text editor of your choice
3. Scroll to the very bottom of the text file, you will see a `}` and a `]`, add a comma to `}`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/7b816803-7bd4-4758-bb04-140d447e4aa1" height="300"> 
4. Paste the below block of text between the `},` and the `]`
    
            {
               "parserType": "Glob",
               "configTitle": "Decompilations",
               "steamDirectory": "${steamdirglobal}",
               "steamCategory": "${Decompilations}",
               "romDirectory": "${romsdirglobal}/desktop",
               "executableArgs": "",
               "executableModifier": "\"${exePath}\"",
               "startInDirectory": "",
               "titleModifier": "${fuzzyTitle}",
               "fetchControllerTemplatesButton": null,
               "removeControllersButton": null,
               "imageProviders": [
                     "SteamGridDB"
               ],
               "onlineImageQueries": "${${fuzzyTitle}}",
               "imagePool": "${fuzzyTitle}",
               "userAccounts": {
                     "specifiedAccounts": null
               },
               "executable": {
                     "path": "",
                     "shortcutPassthrough": true,
                     "appendArgsToExecutable": true
               },
               "parserInputs": {
                     "glob": "**/${title}@(.sh|.SH|.desktop|.DESKTOP)"
               },
               "titleFromVariable": {
                     "limitToGroups": "",
                     "caseInsensitiveVariables": false,
                     "skipFileIfVariableWasNotFound": false,
                     "tryToMatchTitle": false
               },
               "fuzzyMatch": {
                     "replaceDiacritics": true,
                     "removeCharacters": true,
                     "removeBrackets": true
               },
               "controllers": {
                     "ps4": null,
                     "ps5": null,
                     "xbox360": null,
                     "xboxone": null,
                     "switch_joycon_left": null,
                     "switch_joycon_right": null,
                     "switch_pro": null,
                     "neptune": null
               },
               "imageProviderAPIs": {
                     "SteamGridDB": {
                        "nsfw": false,
                        "humor": false,
                        "styles": [],
                        "stylesHero": [],
                        "stylesLogo": [],
                        "stylesIcon": [],
                        "imageMotionTypes": [
                           "static"
                        ]
                     }
               },
               "defaultImage": {
                     "tall": null,
                     "long": null,
                     "hero": null,
                     "logo": null,
                     "icon": null
               },
               "localImages": {
                     "tall": null,
                     "long": null,
                     "hero": null,
                     "logo": null,
                     "icon": null
               },
               "parserId": "168816977280299277",
               "version": 15
            }
    
5. Open Steam ROM Manager, toggle the `Decompilations` parser and generate an app list to add your games to Steam

***

### How to Update Decompilations and Reverse Engineered PC Ports
[Back to the Top](#third-party-emulation-table-of-contents)

[Updating: Group 1](#updating-group-1)
    - [Render96ex](#render96ex)
    - [Super Mario 64 Plus](#super-mario-64-plus)
    - [sm64ex](#sm64ex)
    - [sm64ex-coop](#sm64ex-coop)
    - [Sonic 1 and 2](#sonic-1-and-2)
    - [Sonic CD](#sonic-cd)
    - [Super Mario Bros](#super-mario-bros)
    - [Super Mario Bros: The Lost Levels](#super-mario-bros-the-lost-levels)
    - [Super Mario World](#super-mario-world)
    - [Super Metroid](#super-metroid)
    - [Super Metroid Redux](#super-metroid-redux)
    - [zelda3: A Link to the Past](#zelda3-a-link-to-the-past)
[Updating: Group 2](#updating-group-2)
    - [Perfect Dark](#perfect-dark)
[Updating: Group 3](#updating-group-3)
    - [Ship of Harkinian: Ocarina of Time](#ship-of-harkinian-ocarina-of-time)   
[Updating: Group 4](#updating-group-4)
    - [OpenGOAL: Jak and Dexter: The Precursor Legacy](#opengoal-jak-and-dexter-the-precursor-legacy)
    - [OpenGOAL: Jak II](#opengoal-jak-ii)

#### Updating: Group 1

- [Render96ex](#render96ex)
- [Super Mario 64 Plus](#super-mario-64-plus)
- [sm64ex](#sm64ex)
- [sm64ex-coop](#sm64ex-coop)
- [Sonic 1 and 2](#sonic-1-and-2)
- [Sonic CD](#sonic-cd)
- [Super Mario Bros](#super-mario-bros)
- [Super Mario Bros: The Lost Levels](#super-mario-bros-the-lost-levels)
- [Super Mario World](#super-mario-world)
- [Super Metroid](#super-metroid)
- [Super Metroid Redux](#super-metroid-redux)
- [zelda3: A Link to the Past](#zelda3-a-link-to-the-past)

1. In the respective folder, open a terminal and enter:
    * `git pull origin main`
    * If this does not work, try:
        * `git pull origin master`   
2. Resolve any conflicts
    * If it states an ini file is in conflict, rename the pre-existing ini file and add a `.bak` at the end of the file name
        * For example: `smw.ini.bak`  
3. Re-build the game
    * You may need to do `make clean` first using a terminal in the root of the project folder
    * You may reference the various sections to re-build the game. The steps will be identical 

This section specifically applies to: 

- [Perfect Dark](#perfect-dark)
- [Ship of Harkinian](#ship-of-harkinian-ocarina-of-time)

#### Updating: Group 2

- [Perfect Dark](#perfect-dark)

1. Download the `i686-linux` version from [https://github.com/fgsfdsfgs/perfect_dark#download](https://github.com/fgsfdsfgs/perfect_dark#download) to your `Downloads` folder
2. Right click `pd-i686-linux.zip`, click `Extract archive here, autodetect subfolder`
3. Move the newly extracted `pd-i686-linux` folder to `/home/deck/Applications`
4. Overwrite the current `pd` file
5. Right click `pd`
6. Click `Properties`
7. Click `Permissions`
8. Check `Is Executable`

#### Updating: Group 3

- [Ship of Harkinian: Ocarina of Time](#ship-of-harkinian-ocarina-of-time)

1. Download the latest `Linux-Performance` version of `Ship of Harkinian`: [https://github.com/HarbourMasters/Shipwright/releases](https://github.com/HarbourMasters/Shipwright/releases) to the folder you created in Step 1
    * Download the `SoH-VERSION-NAME-Linux-Performance.zip` file
2. Right click the downloaded zip file and click `Extract archive here, detect subfolder`
3. Move the `soh.AppImage` to `/home/deck/Applications/ShipofHarkinian`
4. Overwrite the current `soh.AppImage` file
5. Right click `soh.AppImage`, click `Properties`, click `Permissions`, check `Is Executable`
6. When a new OTR is required, delete the current OTR files in `/home/deck/Applications/ShipofHarkinian` and re-run the `soh.AppImage` file by double clicking it to generate new OTR files
    * See [https://www.shipofharkinian.com/faq#what-do-the-release-numbers-mean](https://www.shipofharkinian.com/faq#what-do-the-release-numbers-mean) for details

#### Updating: Group 4

- [OpenGOAL: Jak and Dexter: The Precursor Legacy](#opengoal-jak-and-dexter-the-precursor-legacy)
- [OpenGOAL: Jak II](#opengoal-jak-ii)

1. In `/home/deck/Applications/OpenGOAL`, double click `open-goal-launcher_#.#.#_amd64.AppImage` to open it
2. On the left, select the `Gear` icon, click `Versions` at the top, click the `Download` icon on the top-most row (usually will also have the most recent date)
3. Click the circle icon on the left to select the version and click `Save` in the top right
4. Click the game you would like to update on the left
5. You will receive a message requesting you to update the game, click `Update Game` and wait a few moments
6. Your game will now be updated to the latest version 

***

## Emulators
[Back to the Top](#third-party-emulation-table-of-contents)

***

### BlueMaxima's Flashpoint
[Back to the Top](#third-party-emulation-table-of-contents)

Link: [https://gist.github.com/parkerlreed/4bd1f5fa38f7ffa72f9ceacb7d7f636d](https://gist.github.com/parkerlreed/4bd1f5fa38f7ffa72f9ceacb7d7f636d)

***

### Hypseus Singe
[Back to the Top](#third-party-emulation-table-of-contents)

Link: [https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#hypseus-singe-daphne](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md#hypseus-singe-daphne)

***

### Sega Model 2: Model 2 Emulator

#### Setting up Model 2 Emulator

1. Open [https://github.com/PhoenixInteractiveNL/emuDownloadCenter/wiki/Emulator-m2emulator](https://github.com/PhoenixInteractiveNL/emuDownloadCenter/wiki/Emulator-m2emulator) and download `1.1a` to the `Emulation/roms/model2` folder
2. Create an additional `roms` folder in `Emulation/roms/model2`
3. Download attached `.sh` file to the `Emulation/tools/launchers` folder
    * ![model-2.sh](../../configuration-files/model-2.sh)
4. Download [https://raw.githubusercontent.com/mozilla/fxc2/master/dll/d3dcompiler_47_32.dll](https://raw.githubusercontent.com/mozilla/fxc2/master/dll/d3dcompiler_47_32.dll) to the `Emulation/roms/model2` folder
5. Rename `d3dcompiler_47_32.dll` to `d3dcompiler_47.dll`
6. You may now launch the Model 2 emulator by double clicking `model-2.sh` in `Emulation/tools/launchers`

#### EmulationStation-DE

1. Download attached `.sh` file to your `Downloads` folder
    * ![model-2-esde.sh](../../configuration-files/model-2-esde.sh)
2. Double click `model-2-esde.sh` to run it 
3. EmulationStation-DE will now be configured for Model 2

#### Steam ROM Manager

1. In `/home/deck/.config/steam-rom-manager/userData/`, open `userConfigurations.json` in a text editor of your choice
2. Scroll to the very bottom of the text file, you will see a `}` and a `]`, add a comma to `}`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/7b816803-7bd4-4758-bb04-140d447e4aa1" height="300"> 
3. Paste the below block of text between the `},` and the `]`
    
    {
        "parserType": "Glob",
        "configTitle": "Sega Model 2 - Model 2 Emulator",
        "steamDirectory": "${steamdirglobal}",
        "steamCategory": "${Sega Model 2}",
        "romDirectory": "${romsdirglobal}/model2/roms",
        "executableArgs": "\"${fileName}\"",
        "executableModifier": "\"${exePath}\"",
        "startInDirectory": "",
        "titleModifier": "${fuzzyTitle}",
        "fetchControllerTemplatesButton": null,
        "removeControllersButton": null,
        "imageProviders": [
            "SteamGridDB"
        ],
        "onlineImageQueries": "${${fuzzyTitle}}",
        "imagePool": "${fuzzyTitle}",
        "userAccounts": {
            "specifiedAccounts": ""
        },
        "executable": {
            "path": "/run/media/mmcblk0p1/Emulation/tools/launchers/model-2.sh",
            "shortcutPassthrough": false,
            "appendArgsToExecutable": true
        },
        "parserInputs": {
            "glob": "${title}@(.zip|.ZIP)"
        },
        "titleFromVariable": {
            "limitToGroups": "${MAME}",
            "caseInsensitiveVariables": false,
            "skipFileIfVariableWasNotFound": false,
            "tryToMatchTitle": true
        },
        "fuzzyMatch": {
            "replaceDiacritics": true,
            "removeCharacters": true,
            "removeBrackets": true
        },
        "controllers": {
            "ps4": null,
            "ps5": null,
            "xbox360": null,
            "xboxone": null,
            "switch_joycon_left": null,
            "switch_joycon_right": null,
            "switch_pro": null,
            "neptune": null
        },
        "imageProviderAPIs": {
            "SteamGridDB": {
                "nsfw": false,
                "humor": false,
                "styles": [],
                "stylesHero": [],
                "stylesLogo": [],
                "stylesIcon": [],
                "imageMotionTypes": [
                    "static"
                ]
            }
        },
        "defaultImage": {
            "tall": "",
            "long": "",
            "hero": "",
            "logo": "",
            "icon": "/home/deck/.config/EmuDeck/backend/configs/steam-rom-manager/userData/img/default/icon.png"
        },
        "localImages": {
            "tall": "",
            "long": "",
            "hero": "",
            "logo": "",
            "icon": ""
        },
        "parserId": "169890088467987948",
        "version": 15,
        "disabled": false
    }

4. Open Steam ROM Manager, click the `Settings` button, change the theme to `Classic` or Deck`
5. Select the `Sega Model 2 - Model 2 Emulator` parser on the left 
6. Scroll down to the `Executable` box on the right. If the box is not red, you are all set, proceed to Step 9
7. If the box is highlighted with a red outline, click `Browse` and navigate to where your `model-2.sh` is located
8. Click `Save` in the bottom left
9. Toggle the `Sega Model 2 - Model 2 Emulator` parser and generate an app list to add your games to Steam

#### How to Configure Controls

1. In Desktop Mode, open `model-2.sh` in `Emulation/tools/launchers`
2. Load a game by clicking `Emulator` in the top left, `Load ROM`, and selecting your ROM
3. Hold `Start` for three seconds to switch to Gamepad configs
4. Click `Game` at the top, click `Configure Controls`
5. Configure controls

You may also try the pre-configured pack from Launchbox: [https://forums.launchbox-app.com/files/file/3926-sega-model-2-emulator-everything-pre-configured-inc-controls-for-pc-controller-mouse-light-guns-test-menus-configured-analogue-inputs-calibrated-free-play-all-games-in-english-2-player-mouse-support-no-screen-flash/?_fromLogin=1](https://forums.launchbox-app.com/files/file/3926-sega-model-2-emulator-everything-pre-configured-inc-controls-for-pc-controller-mouse-light-guns-test-menus-configured-analogue-inputs-calibrated-free-play-all-games-in-english-2-player-mouse-support-no-screen-flash/?_fromLogin=1) but there is a chance that the configuration files included **may** not work. 

***

### Sega Model 3: Supermodel
[Back to the Top](#third-party-emulation-table-of-contents)

**Note:** The following folder locations are required so EmulationStation-DE can properly recognize the emulator and your ROMs. 

Prerequisites: 

* EmulationStation-DE 2.2

#### Setting up Supermodel

1. In Desktop Mode, open Discover
2. Search for Supermodel and download it
3. Search for Flatseal and download it
4. Open Flatseal and select `Supermodel` on the left
5. Scroll down to `Filesystem` and enable `All system files filesystem=host`
6. Download attached `.sh` file to your `Downloads` folder
    * ![Supermodel Configurator](../../configuration-files/supermodel-configurator.sh)
7. Double click `supermodel-configurator.sh` to run it
    * You can confirm it worked by checking if a `.supermodel` folder was created in your `home` folder
        * `~/.supermodel` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders 

#### EmulationStation-DE

After placing ROMs in `Emulation/roms/model3`, open `EmulationStation-DE` in Game Mode, and run your Supermodel 3 ROMs.

**Note:** Your ROMs should be zipped

#### Steam ROM Manager

1. In `/home/deck/.config/steam-rom-manager/userData/`, open `userConfigurations.json` in a text editor of your choice
2. Scroll to the very bottom of the text file, you will see a `}` and a `]`, add a comma to `}`
    * <img src="https://github.com/dragoonDorise/EmuDeck/assets/108900299/7b816803-7bd4-4758-bb04-140d447e4aa1" height="300"> 
3. Paste the below block of text between the `},` and the `]`
    
    {
        "parserType": "Glob",
        "configTitle": "Sega Model 3 - Supermodel",
        "steamDirectory": "${steamdirglobal}",
        "steamCategory": "${Sega Model 3}",
        "romDirectory": "${romsdirglobal}/model3",
        "executableArgs": "run com.supermodel3.Supermodel \"${filePath}\"",
        "executableModifier": "\"${exePath}\"",
        "startInDirectory": "",
        "titleModifier": "${fuzzyTitle}",
        "fetchControllerTemplatesButton": null,
        "removeControllersButton": null,
        "imageProviders": [
            "SteamGridDB"
        ],
        "onlineImageQueries": "${${fuzzyTitle}}",
        "imagePool": "${fuzzyTitle}",
        "userAccounts": {
            "specifiedAccounts": ""
        },
        "executable": {
            "path": "/usr/bin/flatpak",
            "shortcutPassthrough": false,
            "appendArgsToExecutable": true
        },
        "parserInputs": {
            "glob": "${title}@(.zip|.ZIP)"
        },
        "titleFromVariable": {
            "limitToGroups": "${MAME}",
            "caseInsensitiveVariables": false,
            "skipFileIfVariableWasNotFound": false,
            "tryToMatchTitle": true
        },
        "fuzzyMatch": {
            "replaceDiacritics": true,
            "removeCharacters": true,
            "removeBrackets": true
        },
        "controllers": {
            "ps4": null,
            "ps5": null,
            "xbox360": null,
            "xboxone": null,
            "switch_joycon_left": null,
            "switch_joycon_right": null,
            "switch_pro": null,
            "neptune": null
        },
        "imageProviderAPIs": {
            "SteamGridDB": {
                "nsfw": false,
                "humor": false,
                "styles": [],
                "stylesHero": [],
                "stylesLogo": [],
                "stylesIcon": [],
                "imageMotionTypes": [
                    "static"
                ]
            }
        },
        "defaultImage": {
            "tall": "",
            "long": "",
            "hero": "",
            "logo": "",
            "icon": "/home/deck/.config/EmuDeck/backend/configs/steam-rom-manager/userData/img/default/icon.png"
        },
        "localImages": {
            "tall": "",
            "long": "",
            "hero": "",
            "logo": "",
            "icon": ""
        },
        "parserId": "169922790806455368",
        "version": 15
    }

4. Toggle the `Sega Model 2 - Model 2 Emulator` parser and generate an app list to add your games to Steam
    * **Note:** Your ROMs should be zipped 

***

### Super Smash Bros: Project+
[Back to the Top](#third-party-emulation-table-of-contents)

Link: [https://gist.github.com/WingofaGriffin/3202698447ca2452a9431137cfc18d21](https://gist.github.com/WingofaGriffin/3202698447ca2452a9431137cfc18d21)

*** 

## Emulation Related Games
[Back to the Top](#third-party-emulation-table-of-contents)

***

### AM2R
[Back to the Top](#third-party-emulation-table-of-contents)

#### What is AM2R?

`It is an unofficial remake of the 1991 Game Boy game Metroid II: Return of Samus in the style of Metroid: Zero Mission (2004).`

Source: [https://en.wikipedia.org/wiki/AM2R](https://en.wikipedia.org/wiki/AM2R)

#### How to Play AM2R

**Note:** You will need a copy of `AM2R_1_1.zip`, this section will not cover how to obtain that file.

1. In Desktop Mode, open Discover
2. Search for AM2R
     * Flathub page: [https://flathub.org/apps/io.github.am2r_community_developers.AM2RLauncher](https://flathub.org/apps/io.github.am2r_community_developers.AM2RLauncher)
         * Discover (on the Steam Deck) uses Flathub as its source for applications
3. Download AM2R
4. Open AM2R and click the big `Download` button on the main screen
5. Select `Select AM2R_1_1.zip`, select your file, and play the game

#### How to add AM2R to Steam

1. Download attached `.sh` file
    * Link: [https://gist.githubusercontent.com/rawdatafeel/a708bbfe9c162250e51b741d6aea8de1/raw/e8751109b4d5d9f7a74c209c033c81dd6fb4fbde/AM2R.sh](https://gist.githubusercontent.com/rawdatafeel/a708bbfe9c162250e51b741d6aea8de1/raw/e8751109b4d5d9f7a74c209c033c81dd6fb4fbde/AM2R.sh)
    * Right click anywhere on the page, click `Save Page As`
2. Place in `/home/deck/Applications`
3. Right click `AM2R.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `AM2R.sh` to open AM2R
8. In Desktop Mode, right click `AM2R.sh`, click `Add to Steam`
    * Alternatively, use the Steam ROM Manager parser here: [How to Utilize Script Files with Steam ROM Manager](#how-to-utilize-script-files-with-steam-rom-manager) to add it to Steam

***

### PokeMMO
[Back to the Top](#third-party-emulation-table-of-contents)

**Note:** You will need a legal copy of the following games:

* Pokemon Black or Pokemon White
* Optional: 
    * Pokemon Fire Red
    * Pokemon Platinum
    * Pokemon Emerald
    * Pokemon HeartGold or Pokemon SoulSilver

#### How to Install PokeMMO

**Note:** The following folder locations are recommendations. You may choose a different folder location. 

1. In `/home/deck/Games`, create a `PokeMMO` folder
2. In `/home/deck/Games/PokeMMO`, create a `jdk` folder
3. Download Java OpenJDK: [https://jdk.java.net/19/](https://jdk.java.net/19/) to `/home/deck/Games/PokeMMO`
    * Download `Linux / x64 	tar.gz (sha256) 	195931906`
4. Download PokeMMO: [https://pokemmo.com/downloads/linux/](https://pokemmo.com/downloads/linux/) to `/home/deck/Games/PokeMMO`
    * Under `Other Distributions`, click `Download the Client`
5. Extract `PokeMMO-Client.zip` in `/home/deck/Games/PokeMMO`
    * <img src="https://user-images.githubusercontent.com/108900299/215299506-ef39e81d-989a-4f79-9865-4b0fbe8dba42.png" height="300">
6. Extract `openjdk-19.0.2_linux-x64_bin.tar.gz` to `/home/deck/Games/PokeMMO/jdk`
    * If the `.tar.gz` creates a subfolder, move the contents out directly into `/home/deck/Games/PokeMMO/jdk`
    * <img src="https://user-images.githubusercontent.com/108900299/215299685-351108f5-4645-4316-8640-2f0e390532f2.png" height="300">
7. To launch the game, open `Konsole` and enter: `/home/deck/Games/PokeMMO/jdk/bin/java -jar PokeMMO.exe -cp com.pokeemu.client.Client`

#### How to add PokeMMO to Steam

1. Download attached `.sh` file
    * Link: [https://gist.githubusercontent.com/rawdatafeel/c499a7c8313067c2af4dc9afc785eed0/raw/e03292153a3d2f07b1b1ad0517fc92875a01df78/PokeMMO.sh](https://gist.githubusercontent.com/rawdatafeel/c499a7c8313067c2af4dc9afc785eed0/raw/e03292153a3d2f07b1b1ad0517fc92875a01df78/PokeMMO.sh)
    * Right click anywhere on the page, click `Save Page As`
    * **Note:** If you are using different folder locations, make sure to edit the above file and edit the paths
2. Place in `/home/deck/Applications`
3. Right click `PokeMMO.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `PokeMMO.sh` to open PokeMMO
8. In Desktop Mode, right click `PokeMMO.sh`, click `Add to Steam`
    * Alternatively, use the Steam ROM Manager parser here: [How to Utilize Script Files with Steam ROM Manager](#how-to-utilize-script-files-with-steam-rom-manager) to add it to Steam

***

### Sonic 3 A.I.R.
[Back to the Top](#third-party-emulation-table-of-contents)

#### Preface

To play Sonic 3 A.I.R., you will need an original and legal copy of Sonic 3 & Knuckles from the Steam version of Sonic 3 & Knuckles. This section will not cover how to obtain that file. For more information, see [https://docs.google.com/document/d/1oSud8dJHvdfrYbkGCfllAOp3JuTks7z4K5SwtVkXkx0/edit#heading=h.ux87lw254eyd](https://docs.google.com/document/d/1oSud8dJHvdfrYbkGCfllAOp3JuTks7z4K5SwtVkXkx0/edit#heading=h.ux87lw254eyd).

Sonic 3 A.I.R. has a comprehensive manual covering many of the features and settings in the game. See [https://sonic3air.org/Manual.pdf](https://sonic3air.org/Manual.pdf). 

#### What is Sonic 3 A.I.R.

`A fan-made widescreen remaster of Sonic 3 & Knuckles.`

Source: [https://sonic3air.org/](https://sonic3air.org/)

#### Setting Up Sonic 3 A.I.R.

1. In Desktop Mode, open Discover
2. Search for Sonic 3: Angel Island Revisited
     * Flathub page: [https://flathub.org/apps/org.sonic3air.Sonic3AIR](https://flathub.org/apps/org.sonic3air.Sonic3AIR)
         * Discover (on the Steam Deck) uses Flathub as its source for applications
3. Download Sonic 3: Angel Island Revisited
4. Open Sonic 3: Angel Island Revisited
5. Select your `Sonic 3 & Knuckles` game file
    * The Steam version is typically named: `Sonic_Knuckles_wSonic3.bin`
    * For more information, read the Linux section on the manual: [https://sonic3air.org/Manual.pdf](https://sonic3air.org/Manual.pdf)

`Sonic 3: Angel Island Revisited` Folder and File Locations

`/home/deck/.var/app/org.sonic3air.Sonic3AIR`      

```
org.sonic3air.Sonic3AIR/
├── cache
├── config
└── data
    └── Sonic3AIR
        ├── logfile.txt
        ├── mods
        ├── settings_input.json
        ├── settings.json
        └── Sonic_Knuckles_wSonic3.bin
```

#### How to Configure Sonic 3 A.I.R.

1. Open the `/home/deck/.var/app/org.sonic3air.Sonic3AIR/data/Sonic3AIR` folder
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
2. Right click `settings.json` or `settings_input.json`, click `Open with Kate` or a text editor of your choice
    * `settings.json` is specifically for game settings
    * `settings_input.json` is specifically for game controls
3. Customize settings

#### How to Mod Sonic 3 A.I.R.

**Mod Resources**

_This list is not comprehensive_

* [https://sonic3air.boards.net/board/6/mod-releases](https://sonic3air.boards.net/board/6/mod-releases)
* [https://gamebanana.com/mods/games/6878](https://gamebanana.com/mods/games/6878)

1. Open the `/home/deck/.var/app/org.sonic3air.Sonic3AIR/data/Sonic3AIR` folder
    * `~/.var` is an invisible folder by default. In Dolphin (file manager), click the hamburger menu in the top right, click `Show Hidden Files` to see these folders
2. Download and extract mod(s) to the `mod` folder
    * A mod folder should typically have a `Data` folder and a `mod.ini` file
3. To activate/toggle the mod(s), open Sonic 3 A.I.R.. On the main menu, click the `Mods` button

#### How to add Sonic 3 A.I.R. to Steam

1. Download attached `.sh` file
    * Link: [https://gist.githubusercontent.com/rawdatafeel/a36e86ede582766ea5b7a03787dc796a/raw/593fb18893f48ccee85ffdf7f915a842b0add85e/Sonic3AIR.sh](https://gist.githubusercontent.com/rawdatafeel/a36e86ede582766ea5b7a03787dc796a/raw/593fb18893f48ccee85ffdf7f915a842b0add85e/Sonic3AIR.sh)
    * Right click anywhere on the page, click `Save Page As`
2. Place in `/home/deck/Applications`
3. Right click `Sonic3AIR.sh`
4. Click `Properties`
5. Click `Permissions`
6. Check `Is Executable`
7. Use `Sonic3AIR.sh` to open Sonic 3 A.I.R.
8. In Desktop Mode, right click `Sonic3AIR.sh`, click `Add to Steam`
    * Alternatively, use the Steam ROM Manager parser here: [How to Utilize Script Files with Steam ROM Manager](#how-to-utilize-script-files-with-steam-rom-manager) to add it to Steam

***

### How to Contribute to This Page
[Back to the Top](#third-party-emulation-table-of-contents)

You will need to **create** a GitHub account first. To sign up for GitHub, see [https://github.com/signup](https://github.com/signup).

1. Open [https://github.com/EmuDeck/emudeck.github.io/blob/main/docs/community-creations/steamos/third-party-emulation.md](https://github.com/EmuDeck/emudeck.github.io/blob/main/docs/community-creations/steamos/third-party-emulation.md)
2. Click the `Pencil` icon in the top right
3. Create a new section below the most recently added section under the respective category
    * For example: `##### Paper Mario 64 Decompilation`
	 * Make sure to add your section to the respective section in the [Table of Contents](#third-party-emulation-table-of-contents) as well
4. Write your section
    * If you are using a Distrobox for your instructions, you may link to [How to Set Up Distrobox](#how-to-set-up-distrobox)
    * If you are using external script files, embed them in code blocks instead
5. Once you are finished making your changes, click the `Commit changes...` button in the top right
    * ![How to Contribute to the Wiki 2](../../assets/how-to-contribute-2.png)
6. You will be prompted to create a Pull Request. Add a little bit of detail about what you added and why
    * ![How to Contribute to the Wiki 3](../../assets/how-to-contribute-3.png)
    * You will not see the option to `Commit directly to the main branch` so do not worry about inadvertently making any changes
7. Submit your Pull Request
8. Once your Pull Request is reviewed, it will be merged and any of your changes will automatically be deployed to this page

***