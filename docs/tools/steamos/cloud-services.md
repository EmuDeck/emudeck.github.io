# Cloud Services: Your Favorite Cloud Services on Steam Deck

The Cloud Services Manager (CSM) handles two types of services:

1. Cloud Services - (Simple scripts that launch the web browser and go to the script's website)
2. Remote Play Clients - (Installed applications on the Steam Deck designed for remote play)

***

## Cloud Services Table of Contents

- [Getting Started with Cloud Services](#getting-started-with-cloud-services)
- [Configuration](#configuration)
- [List of Cloud Services](#list-of-cloud-services)
- [List of Remote Play Clients](#list-of-remote-play-clients)
- [Hotkeys/Steam Input Profile](#steam-input-profile)

***

## Getting Started with Cloud Services
[Back to the Top](#cloud-services-table-of-contents)

1. Launch "Cloud Services Manager" from EmuDeck
2. Verify the correct web browser is set as shown on the main menu
    * If not, click "Change Settings" and select your desired web browser.
    * Note: If the web browser isn't installed, EmuDeck will install it. To uninstall a browser, use the "Discover" app in desktop mode.
3. Return to the main menu and choose "Manage Cloud Services" or "Manage Remote Play Clients"
    - 3.1. "Manage Cloud Services"
        -  3.1.1. Check the boxes for scripts you want or uncheck those you want removed then click "Ok"
        -  3.1.2. Any checked scripts will be downloaded into your "Emulation/roms/cloud" directory and any existing that match our file names will be updated.
    - 3.2. "Manage Remote Play Clients"
        -  3.2.1. Check the boxes for which clients you want then click "Start"
        -  3.2.2. Any unchecked (if previously installed) will be uninstalled.
        -  3.2.3. Any checked will be installed or updated if previously installed
        * Note: You can also uninstall these clients from the "Discover" app in desktop mode since they are flatpaks.
4. After making any changes (installing/uninstalling/file renaming) you need to run Steam Rom Manager (SRM) using the "Cloud Services" or "Remote Play Clients" parser so uninstalled items are removed and newly installed items are added to Steam with artwork and accessible in game mode.

"Cloud Services" will be shown in a new Steam collection labeled "Cloud Services"

"Remote Play Clients" will be shown in a new Steam collection labeled "Remote Play Clients"

***

### Configuration
[Back to the Top](#cloud-services-table-of-contents)

* Cloud Services Folder Location (web browser launcher script): `Emulation/roms/cloud`
* Remote Play Client Folder Location (flatpak launcher script): `Emulation/roms/remoteplay`

***

### List of Cloud Services
[Back to the Top](#cloud-services-table-of-contents)

| Cloud Services             | Website                            |
|----------------------------|------------------------------------|
| Amazon Luna                | [https://luna.amazon.com/](https://luna.amazon.com/)           |
| Amazon Prime Video         | [https://www.amazon.com/video](https://www.amazon.com/video)       |
| Apple TV                   | [https://tv.apple.com/](https://tv.apple.com/)              |
| Crunchyroll                | [https://www.crunchyroll.com/](https://www.crunchyroll.com/)      |
| Discord                    | [https://discord.com/](https://discord.com/)               |
| Disney+                    | [https://www.disneyplus.com/](https://www.disneyplus.com/)        |
| Dropout                    | [https://dropout.tv](https://dropout.tv)                 |
| Emby *                     | [https://emby.media/](https://emby.media/)               |
| HBO Max                    | [https://www.hbomax.com/](https://www.hbomax.com/)            |
| Home Assistant *           | [https://demo.home-assistant.io/](https://demo.home-assistant.io/)    |
| Hulu                       | [https://www.hulu.com/](https://www.hulu.com/)              |
| Jellyfin *                 | [https://demo.jellyfin.org/stable](https://demo.jellyfin.org/stable)   |
| Netflix                    | [https://www.netflix.com/](https://www.netflix.com/)          |
| Paramount+                 | [https://www.paramountplus.com/](https://www.paramountplus.com/)     |
| Peacock TV                 | [https://www.peacocktv.com/](https://www.peacocktv.com/)         |
| Plex *                     | [https://app.plex.tv/](https://app.plex.tv/)               |
| Spotify                    | [https://open.spotify.com/](https://open.spotify.com/)          |
| Tiktok                     | [https://www.tiktok.com/](https://www.tiktok.com/)            |
| Twitch                     | [https://www.twitch.tv/](https://www.twitch.tv/)            |
| Twitter                    | [https://twitter.com/](https://twitter.com/)               |
| Vimeo                      | [https://vimeo.com/](https://vimeo.com/)                 |
| webRcade *                 | [https://play.webrcade.com/](https://play.webrcade.com/)         |
| Xbox Cloud Gaming (xCloud) | [https://www.xbox.com/play](https://www.xbox.com/play)          |
| YouTube                    | [https://www.youtube.com/](https://www.youtube.com/)           |
| YouTube Music              | [https://music.youtube.com/](https://music.youtube.com/)         |
| YouTube TV                 | [https://tv.youtube.com/](https://tv.youtube.com/)            |

\* These may be self hosted services. If you run your own server, open the script in a text editor (KWrite, Notepad, etc) and change the `LINK` variable to be your server IP address. After saving, be sure to rename the file so it isn't reverted to default when you update the scripts. (Example: "Plex.sh" --> "-Plex.sh")

***

### List of Remote Play Clients
[Back to the Top](#cloud-services-table-of-contents)

| Remote Play Client | Website                            |
|--------------------|------------------------------------|
| Chiaki             | [https://sr.ht/~thestr4ng3r/chiaki/](https://sr.ht/~thestr4ng3r/chiaki/) |
| Moonlight          | [https://moonlight-stream.org/](https://moonlight-stream.org/)      |
| Parsec             | [https://parsec.app/](https://parsec.app/)                |

***

### Steam Input Profile
[Back to the Top](#cloud-services-table-of-contents)

Steam Input Profile: `EmuDeck - Cloud`

By default, the controls are that of a standard gamepad along with:

    - L/R Trackpads being mouse input
    - R Trackpad click is "Left Mouse Click"
    - L Trackpad click is "Right Mouse Click"
    - Pressing "Start + Select" will close the current tab in a web browser
    - Press and hold L4 (Upper left paddle button) to change button layer to "Web Navigation"

"Web Navigation" action layer (need to hold L4 for these keys to be active):

    - Start is "Escape"
    - Select is "Tab"
    - D pad is "Arrow keys"
    - R1 (Right bumper) is "Page Forward"
    - L1 (Left bumper) is "Page Back"
    - R2 (Right trigger) is "Left mouse click"
    - L2 (Left trigger) is "Right mouse click"
    - A is "Play/Pause (Space Key)"
    - B is "Back (Escape Key)"
    - X is "Find in Page (F3)"
    - Y is "Refresh (F5)"
    - Rotate left joystick to scroll: CW scroll down, CCW scroll up

***
