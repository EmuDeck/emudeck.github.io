# Common Issues: What's wrong with my emulator?!

**Note:** Each section of this page includes the date it was added to this page in its header. 

***

## Gyro suddenly stopped working - June 15th, 2023

The latest Steam Client update on June 14th, https://store.steampowered.com/oldnews/195171, adjusted how gyro works on the Steam Deck. 

Gyro, through SteamDeckGyroDSU, now requires a few additional steps to enable in Game Mode. 

To enable gyro, follow the below steps. This assumes you have already installed SteamDeckGyroDSU through EmuDeck (or by manually installing it).

1. In Game Mode, while in a game, press the `STEAM` button
2. Open Controller Settings
3. Edit layout
4. Go to Gyro
5. Select Gyro Behavior -> Directional Pad

***

## RPCS3 - emulator does not work - May 7th, 2023

The update May 7th update of the RPCS3 Flatpak did not behave as expected due to a missing dependency. If you have not recently updated RPCS3 and the emulator no longer launches, you will need to open Discover in Desktop Mode and update RPCS3. 

There are **no currently known** issues with the latest version of RPCS3.   

***

## RetroArch does not work anymore - April 30th, 2023

If you recently updated from an older version of RetroArch and you notice your games are suddenly not working, you will need to check Discover for any system updates. Updating RetroArch on its own is not enough and will prevent it from working.

After you have updated any pending system library updates in Discover, RetroArch will work again. 

1. In Desktop Mode, open Discover (shopping bag icon)
   * <img src="https://user-images.githubusercontent.com/108900299/236019379-be39493c-8b61-4163-be41-ff3de4d14177.png" height=50>
   * <img src="https://user-images.githubusercontent.com/108900299/236021304-1d8a5494-c866-4103-8491-f0baf93a9a88.png" height=300>
2. Click Update (x) in the bottom left
   * There will usually be a number in the ()
3. Click Update All in the top right
   * <img src="https://user-images.githubusercontent.com/108900299/236020629-558f88f7-76f2-4fa6-b137-adaf077411bb.png" height="300">
4. Wait, once the updates are finished, test RetroArch again

***
