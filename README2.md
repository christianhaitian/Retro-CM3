2nd Release Updates
In addition to 1st Release tweaks:

-  Auto Resize fat32 partition to remaining space on SD card on first boot.  Unit will reboot once upon boot up to complete this.
-  SSH, SFTP and Samba are disabled by default even after enabling wireless.  This is to secure the system when wifi is enabled for retroachievements.
-  Added ability to Enable and Disable SSH and Samba services from Retropie menu.  Look for green thumbs up and red thumbs down.
-  Added custom systam splash screens when launching roms in various emulators.  Thanks to ehettervik (https://github.com/ehettervik/es-runcommand-splash)
-  New boot splashscreen.  Thanks to 

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

Enjoy!
 

