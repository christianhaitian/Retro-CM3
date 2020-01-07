# Retro-CM3
Updated image for the Retro-CM3 with various tweaks and changes.  

Original repo of the creator of this device is https://github.com/Dean-Chu/Retro-CM3

# This image requires a minimum of an 8GB micro SD card. If using a larger micro SD card, you can expand the last Fat32 partition (labeled RETPIE) using a Windows based Partition tool like MiniTool Partition Wizard - Free Edition (https://www.partitionwizard.com/download.html). I do not suggest using a linux based tool such as GParted as it seems to cause issues with Fat32 partitions being readable on Windows machines.

This image will just be an update and some tweaks to his original image for this device and provide a location to download a working image for the publicly available units as the one linked on the creator's website doesn't seem to work with this unit as of 1/6/2020.

Updates, Changes, and Tweaks to the image include the following:
-  Updated to RetroPie version 4.5.1
-  Set default volume for Libretro Emulators to -45.0db.  (This should prevent the sudden loud sound when launching a rom in a Libretro (LR) based emulator)  Volume can be adjusted up or down by holding select and hitting Up or Down on the directional gamepad.
-  Stability tweak for RTL8188CUE wireless chip.  (Disabled USB and wireless chip power saving in the 8192 driver which causes wifi drops on this chip.  From my personal testing and use, SSH sessions are much more stable now.)

#  Instructions
-  Windows users:
   -  Download the image from (https://mega.nz/#!TFBkiAaK!qZGZaBJGEhF1AHObyaEP_k2FQ_gwjXxrb-AfjZy4kNM).        
   -  Uncompress the image with 7zip (Can be downloaded from https://www.7-zip.org/download.html)
   -  Use a program such as Win32DiskImager (https://sourceforge.net/projects/win32diskimager/) or Etcher (https://www.balena.io/etcher/) to flash to a 8GB micro SD card or larger.
   -  Add the roms to their respective folders in the retropie/roms folder on the RETPIE fat32 partition.
   -  Insert into Retro CM3, boot, and enjoy!

-  Linux users (Instructions are based on Ubuntu 16.04 as this is the Linux OS I use):
   -  Download the image from (https://mega.nz/#!TFBkiAaK!qZGZaBJGEhF1AHObyaEP_k2FQ_gwjXxrb-AfjZy4kNM).         
   -  Uncompress the image with 7zip (From terminal, you can install this by doing sudo apt-get install p7zip-full p7zip-rar)   
   -  For those with Ubuntu based systems, you can use the Disks app to image to a 8GB micro SD card or larger.
   -  Add the roms to their respective folders in the retropie/roms folder on the RETPIE fat32 partition.
   -  Insert into Retro CM3, boot, and enjoy!
