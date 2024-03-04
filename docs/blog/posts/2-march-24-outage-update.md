---
draft: false 
date: 2024-03-03
categories:
  - Citra
  - Dolphin
  - RPCS3
---

# 2 March 2024 Outage Update

This issue has now been resolved for Citra, Dolphin, and RPCS3. You may update your emulators in Discover to get the latest working versions.

***

Several emulators have been reported as crashing over the past day. While we await fixes from their respective developers, below is what you can do to resume using the applications.
 
**Citra**

Citra has been fixed! If you update the application from Discover/EmuDeck, it should resume working again.

**Dolphin**

Dolphin can be rolled back to resume functionality. The code below will roll it back to a previously working version. More information about rolling Dolphin back can be found here: [How to Roll Back Dolphin to an Older Version](https://emudeck.github.io/emulators/steamos/dolphin/#how-to-roll-back-dolphin-to-an-older-version)

```flatpak update --commit=44bfa315a0cf9c94a97dfe61127dc05e0e8c85c5c7559dc7665529ec1aa7a3ee org.DolphinEmu.dolphin-emu```

**RPCS3**

RPCS3 can be rolled back to resume functionality. The code below will roll it back to a previously working version. More information about rolling back RPCS3 can be found here: [How to Roll Back RPCS3 to an Older Version](https://emudeck.github.io/emulators/steamos/rpcs3/#how-to-roll-back-rpcs3-to-an-older-version)

`flatpak update --commit=5e4c8f25c5c274f071ff35ee417961253b2f8105cfafa89c9ef10247a8248579 net.rpcs3.RPCS3`

***