# Cemu is a Wii U Emulator.

## Welcome to the landing page for Cemu. 

Website: https://cemu.info/

Github: https://github.com/cemu-project/Cemu

Compatibility List: https://compat.cemu.info/

This is a landing page for the two versions of Cemu bundled with EmuDeck, proton and native (AppImage). EmuDeck includes the native build of Cemu as an optional install. If you choose to install the native version of Cemu, both versions will remain installed to provide the user choice and to allow for the native version to mature and fix any lingering issues. 

To try out the native version of Cemu, open the EmuDeck application, click the `Manage Emulators` button, click `Cemu`, and click install `Cemu AppImage`. 

***

## Cemu Table of Contents

- [EmuDeck Cemu Wiki Links](#emudeck-cemu-wiki-links)
- [How do I download Native Cemu?](#how-do-i-download-native-cemu)
- [What is the difference between the proton and the native version?](#what-is-the-difference-between-the-proton-and-the-native-version)
- [Which Cemu version should I use?](#which-cemu-version-should-i-use)
- [How do I know which Cemu is which?](#how-do-i-know-which-cemu-is-which)
- [How do I select which version of Cemu to use in Game Mode?](#how-do-i-select-which-version-of-cemu-to-use-in-game-mode)
- [How do I select which version of Cemu to use in Desktop Mode?](#how-do-i-select-which-version-of-cemu-to-use-in-desktop-mode)

***

## EmuDeck Cemu Wiki Links
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

**Looking for the Cemu wiki pages? Select a wiki page below. Each correspond to the two different versions of Cemu bundled with EmuDeck.**

**Cemu Proton:** https://github.com/dragoonDorise/EmuDeck/wiki/Cemu-Proton

**Cemu Native:** https://github.com/dragoonDorise/EmuDeck/wiki/Cemu-Native



***

## How do I download Native Cemu?
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

1. In Desktop Mode, open the EmuDeck Application
2. Click `Manage Emulators`
3. Click `Cemu`
4. Click `Install Cemu AppImage`
   * <img src="https://user-images.githubusercontent.com/108900299/236600742-52661f18-a8e4-454d-9b8a-f1cfcf4423d2.png" height="300">
5. Click `Reset Cemu AppImage` to configure the emulator
   * <img src="https://user-images.githubusercontent.com/108900299/236601649-361f4578-e46a-4807-9052-fc2a2dc1e302.png" height="300">

***

## What is the difference between the proton and the native version?
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

Up until the end of 2022, Cemu only provided a Windows version. EmuDeck bundled this windows version and created a script to run it through Proton. At the end of 2022, Cemu released a native Linux version as an AppImage. The AppImage released in a beta state and still had issues, both with general emulation and game compatibility. 

Throughout 2023, Cemu released frequent updates to improve the performance and compatibility of the native version. However, as of May 2023, there are still lingering issues and some games do not run well. These games do run well on the Windows counterpart of Cemu. 

EmuDeck only started to bundle the native version of Cemu with EmuDeck 2.1, released in April, 2023. Many EmuDeck users still use the Windows version of Cemu and have not fully migrated over to the native version yet. 

The foreseeable future should see improvements and eventual parity with native Cemu and a full migration in EmuDeck from the Windows version. 

**Cemu Native Game Compatibility**

* Read: https://github.com/dragoonDorise/EmuDeck/wiki/cemu-native#game-compatibility


*** 

## Which Cemu version should I use?
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

It is up to you. Both versions of Cemu are bundled with EmuDeck to allow the user to choose. Be sure to read [What is the difference between the proton and the native version?](#what-is-the-difference-between-the-proton-and-the-native-version) as well.

Generally, it is **recommended** to select Cemu Native over Cemu Proton. There is less fuss with Proton layers and prefixes and the two versions are mostly similar at this point. 

*** 

## How do I know which Cemu is which?
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

One quick way to tell the difference is to compare the two GUIs.

Native Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765451-f9e712cd-f6c5-4257-8821-8957f28b3745.png" height="300">

Proton Cemu: <img src="https://user-images.githubusercontent.com/108900299/226765705-e8aa00ff-d647-4965-9e8a-253dfb36f289.png" height="300">

***

## How do I select which version of Cemu to use in Game Mode?
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

### Steam ROM Manager

Select the corresponding parsers. 

**Cemu Proton Parsers:**

* `Nintendo WiiU - Cemu (.rpx) - Proton`
* `Nintendo WiiU - Cemu (.wud, .wux, .wua) - Proton`

**Cemu Native Parsers:**

* `Nintendo WiiU - Cemu (.rpx) - Native`
* `Nintendo WiiU - Cemu (.wud, .wux, .wua) - Native`

### EmulationStation-DE

1. Open EmulationStation-DE
2. Press `Start`
3. Press `Other Settings`
4. Press `Alternative Emulators`
5. On `Wiiu`, select `Cemu [Native]` or `Cemu [Proton]`

***

## How do I select which version of Cemu to use in Desktop Mode?
[Back to the Top](https://github.com/dragoonDorise/EmuDeck/wiki/cemu#cemu-table-of-contents)

1. In Desktop Mode, press the Steam icon in the bottom left of the taskbar to open the Applications Launcher
   * <img src="https://user-images.githubusercontent.com/108900299/236600606-f9de3696-c794-4c15-b7d5-16a88c54360a.png" height="300">
2. Select which Cemu you would like to use, `Cemu (Proton)` or `Cemu AppImage`
   * <img src="https://user-images.githubusercontent.com/108900299/236600639-6a5bcb38-c0b0-4ea0-b2ff-526045bba7da.png" height="300">

***

