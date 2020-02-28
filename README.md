# Retro-CM3
Updated image for the Retro-CM3 with various tweaks and changes.  

Original repo of the creator of this device is https://github.com/Dean-Chu/Retro-CM3

# This image requires a minimum of an 8GB micro SD card. If using a larger micro SD card, you can expand the last Fat32 partition (labeled RETPIE) using a Windows based Partition tool like MiniTool Partition Wizard - Free Edition (https://www.partitionwizard.com/download.html). I do not suggest using a linux based tool such as GParted as it seems to cause issues with Fat32 partitions being readable on Windows machines.

# Attention!! - A new image is available with new features including auto resize of the last fat partition on first boot.  This means no need to use a separate tool like MiniTool Parition Wizard to resize after flashing.  Check out README2.md (https://github.com/christianhaitian/Retro-CM3/blob/master/README2.md) for more info!

This image will just be an update and some tweaks to his original image for this device and provide a location to download a working image for the publicly available units as the one linked on the creator's website doesn't seem to work with this unit as of 1/6/2020.

Updates, Changes, and Tweaks to the image include the following:
-  Updated to RetroPie version 4.5.1
-  Set default volume for Libretro Emulators to -45.0db.  (This should prevent the sudden loud sound when launching a rom in a Libretro (LR) based emulator)  Volume can be adjusted up or down by holding select and hitting Up or Down on the directional gamepad.
-  Stability tweak for RTL8188CUE wireless chip.  (Disabled USB and wireless chip power saving in the 8192 driver which causes wifi drops on this chip.  From my personal testing and use, SSH sessions are much more stable now.)

Known Issues
-  Updating RetroPie using the builtin Retropie script will break the Atari 5200 Libretro emulator.  This is an issue with the latest update available for Retropie as of 1/10/2020.
-  Image does not include the separate CPS 1,2,and 3 EmulationStation setups.  They all just use the lr-fbneo emulator.
-  lr-fbneo is not installed by default.  Can be installed through the Retropie-setup menu.  Will need to be connected to wifi for this to complete.

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

# Interested in a RecalBox version instead?  Download this image: https://mega.nz/#!qcQXVKgA!yL3dulin_ku2frebVYKVyzE5YVD70ZeHK61zWVwZc7Q.

# Want to get Pico-8 running on the Retro-CM3?  Follow the instructions available in the link below and with my tweaks below using SSH.
https://sinisterspatula.github.io/RetroflagGpiGuides/pico8/pico8

Under the Install Pico-8 section, you can skip steps 5 to 11 and just copy the sdl_controllers.txt from the releases section of this github to /home/pi/pico-8 folder.

Under the Add PICO-8 to the Emulationstation menu section, es_systems.cfg is actually located at /etc/emulationstation in the retropie image provided here.  I also made a change to the es_systems.cfg and added the following instead of what was shown in the instructions:

```
<system>
   <name>pico8</name>
   <fullname>PICO-8</fullname>
   <path>/home/pi/pico-8</path>
   <extension>.sh .SH</extension>
   <command>/opt/retropie/supplementary/runcommand/runcommand.sh 0 "%ROM%"</command>
   <platform>pico8</platform>
   <theme>pico8</theme>
</system>
``` 

And loaded 3 custom shell scripts (.sh files) into /home/pi/pico-8 folder.  The purpose of each file is for different volume levels.  You can find the custom scripts in the releases section of this github. 

The User Manual is available from the creator's google drive at https://drive.google.com/open?id=1vXOQh2Tf3WvNB2zH0UrLiWtqS37SApLm and also in this github (Retro-CM3 User manual - 副本.docx).

Enjoy!
 

