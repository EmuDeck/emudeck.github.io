# External Controllers

***

## External Controllers Table of Contents

1. [Preface](#preface)

2. [Common Issues](#common-issues)
    - [8BitDo Ultimate 2.4G Wireless Controller - Double Inputs](#8bitdo-ultimate-24g-wireless-controller---double-inputs)

3. [Tips and Tricks](#tips-and-tricks)
    - [How to Disable Steam Input](#how-to-disable-steam-input)
    - [How to Open the Quick Access Menu](#how-to-open-the-quick-access-menu)
    - [How to Re-Arrange the Controller Order](#how-to-re-arrange-the-controller-order)
    - [Cemu Native: How to Configure Gyro With External Controllers](../../emulators/steamos/cemu/cemu-native.md#how-to-configure-gyro-with-external-controllers)
    - [RPCS3: How to Set up the Motion Sensor with External Controllers](../../emulators/steamos/rpcs3.md#how-to-set-up-the-motion-sensor-with-external-controllers)
    - [Yuzu: How to Configure Gyro With External Controllers](../../emulators/steamos/yuzu.md#how-to-configure-gyro-with-external-controllers)

4. [Controller Compatibility](#controller-compatibility)
    - [8BitDo Mod Kit for Original N64 Controller](#8bitdo-mod-kit-for-original-n64-controller)
    - [8BitDo Ultimate 2.4G Wireless Controller](#8bitdo-ultimate-24g-wireless-controller)
    - [Nintendo Switch Online: Nintendo 64 Controller](#nintendo-switch-online-nintendo-64-controller)

5. [Multiplayer](#multiplayer)
    - [Generic: How to Configure Multiplayer](#generic-how-to-configure-multiplayer)
    - [Cemu Native: How to Configure Multiplayer](../../emulators/steamos/cemu/cemu-native.md#how-to-configure-multiplayer)
    - [Cemu Proton: How to Configure Multiplayer](../../emulators/steamos/cemu/cemu-proton.md#how-to-configure-multiplayer)
    - [Dolphin: How to Configure Multiplayer](../../emulators/steamos/dolphin.md#how-to-configure-multiplayer)
    - [Yuzu: How to Configure Multiplayer](../../emulators/steamos/yuzu.md#how-to-configure-multiplayer)


***

## Preface
[Back to the Top](#external-controllers-table-of-contents)

Steam Input is the foundation of controls on the Steam Deck. It's what allows EmuDeck to set up a standardized control scheme across emulators. Steam Input allows you to use a controller with any game or emulator. 

However, Steam Input might also conflict with native features of the controller. One example is that Steam Input does not properly expose the gyro for external controllers to emulators. In these cases, you will need to disable Steam Input and allow the controller to "talk" directly to the emulator to properly expose these features. 

You may need to restart to ensure Steam Input is properly disabled. 

This page will cover how to utilize Steam Input with external controllers, and how to use workarounds when Steam Input does not properly expose various features of an external controller. 

***

## Common Issues
[Back to the Top](#external-controllers-table-of-contents)

***

### 8BitDo Ultimate 2.4G Wireless Controller - Double Inputs
[Back to the Top](#external-controllers-table-of-contents)

If you are facing issues with the 8BitDo Ultimate 2.4G Wireless Controller having double inputs, you may consider disabling Steam Input for the respective game causing you issue. 

Read [How to Disable Steam Input](#how-to-disable-steam-input) to learn how to disable Steam Input.

***

## Tips and Tricks
[Back to the Top](#external-controllers-table-of-contents)

***

### How to Disable Steam Input
[Back to the Top](#external-controllers-table-of-contents)

Read the [Preface](#preface) section for more information on how Steam Input interacts with your controller.

Disabling Steam Input may allow you to use your external controller's gyro in multiple emulators, including Cemu, Dolphin, Ryujinx, and Yuzu. 

#### How to Disable Steam Input in Game Mode

1. Select a game, emulator, or EmulationStation-DE
2. On the game's page, click the Controller icon
3. Select your controller tab at the top
4. Select the Gear icon to the right of `Edit Layout`
5. Click `Disable Steam Input`
    * Use this same menu to re-enable Steam Input
    * You may need to restart first for this setting to properly apply

For a video, see below:

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-disable-steam-input.mp4" type="video/mp4">
  </video>
</figure>

#### How to Disable Steam Input in Desktop Mode

In Desktop Mode, exit out of Steam. You may exit out of Steam by right clicking the `Steam` icon in your taskbar and clicking `Quit Steam`. 

Do note that since your controls are tied to Steam being open, your controls will revert to `Lizard Mode`. You can use `L2` to right click, `R2` to left click, and the `Right Trackpad` to move the mouse.

***

### How to Open the Quick Access Menu
[Back to the Top](#external-controllers-table-of-contents)

* Nintendo Switch Controllers: `HOME` + `A`
* PlayStation Controllers: `PLAYSTATION BUTTON` + `X`
* Xbox Controllers: `GUIDE BUTTON` + `A`
* Steam Controllers: `STEAM BUTTON` + `A`
 
If your controller is not in the above list:

To find the button combination, hold the GUIDE button for 3 seconds and look for the QUICK ACCESS MENU button combination in the list.

For a full list of button combinations, hold the GUIDE button for 3 seconds. 

***

### How to Re-Arrange the Controller Order
[Back to the Top](#external-controllers-table-of-contents)

If you are using external controllers, you may need to re-arrange the controller orders in order for one external controller to be identified as "Player 1" and for the other controllers to correctly be identified with their corresponding user. With emulation and on occasion Steam games, re-arranging the controller is necessary for external controllers to be recognized. 

To re-arrange the controller order:

1. On an external controller, open the `Quick Access` menu

        Nintendo Switch Controllers: HOME + A
        PlayStation Controllers: PLAYSTATION BUTTON + X
        Xbox Controllers: GUIDE BUTTON + A
        Steam Controllers: STEAM BUTTON + A
        To find the button combination, hold the GUIDE button for 3 seconds and look for the QUICK ACCESS MENU button combination in the list

2. Open the `Quick Settings` menu (Gear icon)
3. Scroll down to the bottom, click `Rearrange controller order`
4. Select your controller order
    * If you are using a single external controller, swap the external controller and the Steam Deck so the external controller is first in the list

For a video, see below:

<figure class="video_container">
  <video controls="true" allowfullscreen="true">
    <source src="/videos/how-to-re-arrange-the-controller-order.mp4" type="video/mp4">
  </video>
</figure>

***

## Controller Compatibility
[Back to the Top](#external-controllers-table-of-contents)

The controller compatibility section discusses the compatibility on various controllers and how well they work on the Steam Deck. 

***

***

### 8BitDo Mod Kit for Original N64 Controller

Link: [https://shop.8bitdo.com/products/8bitdo-mod-kit-for-original-n64-controller](https://shop.8bitdo.com/products/8bitdo-mod-kit-for-original-n64-controller)

**How to Configure 8BitDo Mod Kit for Original N64 Controller With RetroArch**

1. Set controller to switch mode
2. Disable Steam Input for RetroArch or whichever game you are opening through RetroArch
3. Download configuration and place in `/home/deck/.var/app/org.libretro.RetroArch/config/retroarch/autoconfig/sdl2/`
    * [Nintendo_N64_Controller.cfg](../../configuration-files/Nintendo_N64_Controller.cfg)
4. Forget / Reconnect controller Bluetooth every time you connect the controller

***

### 8BitDo Ultimate 2.4G Wireless Controller
[Back to the Top](#external-controllers-table-of-contents)

Link: [https://shop.8bitdo.com/products/8bitdo-ultimate-c-2-4g](https://shop.8bitdo.com/products/8bitdo-ultimate-c-2-4g)

***

### Nintendo Switch Online: Nintendo 64 Controller
[Back to the Top](#external-controllers-table-of-contents)

Link: [https://www.nintendo.com/store/products/nintendo-64-controller/](https://www.nintendo.com/store/products/nintendo-64-controller/)

***

## Multiplayer
[Back to the Top](#external-controllers-table-of-contents)

***

### Generic: How to Configure Multiplayer
[Back to the Top](#external-controllers-table-of-contents)

Some emulators may support external controllers out of the box. Connect your controllers using bluetooth, and multiplayer should work right away.

***