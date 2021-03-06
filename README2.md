2nd Release Updates (RCM3_02_28_20.7z is the correct filename for this release)
In addition to 1st Release tweaks:

-  Auto Resize fat32 partition to remaining space on SD card on first boot.  Unit will reboot once upon boot up to complete this.  You'll see command line first for a little bit and once the exapansion hs completed, unit will reboot and present a Donkey Kong welcome screen then go into Emulationstation interface.
-  SSH, SFTP and Samba are disabled by default even after enabling wireless.  This is to secure the system when wifi is enabled for retroachievements.
-  Added ability to Enable and Disable SSH and Samba services from Retropie menu.  Look for green thumbs up and red thumbs down.
-  Added custom systam splash screens when launching roms in various emulators.  Thanks to ehettervik (https://github.com/ehettervik/es-runcommand-splash)
-  Included Pico-8 setup and menu option.  Just add your licensed Pico-8 files to /home/pi/pico-8 via SSH.  Then go to Pico-8 menu from Emulationstation and launch one of the Pico 8 options based on audio volume level you prefer.
-  New Donkey Kong welcome splashscreen.  Thanks to carolinashakes (https://www.reddit.com/r/RetroPie/comments/405b6c/new_retropie_splash_screen_feel_free_to_use/)

Known Issues
-  Updating RetroPie using the builtin Retropie script will break the Atari 5200 Libretro emulator.  This is an issue with the latest update available for Retropie as of 1/10/2020.
-  Image does not include the separate CPS 1,2,and 3 EmulationStation setups.  They all just use the lr-fbneo emulator. (Fixed!)
-  lr-fbneo is not installed by default.  Can be installed through the Retropie-setup menu.  Will need to be connected to wifi for this to complete. (Fixed!)
-  The auto resize function does not use all of the rest of the available space on the SD card so some space is wasted.  Can be easily reclaimed by using MiniTool Partition Wizard - Free Edition after the expansion process has completed (Hint: After first successful boot into emulationstation interface).  If you have a way to improve this, please feel free to provide code or script suggestions.
- splashscreen no longer works after RetroPie-Setup script update in RetroPie Setup.  To fix this, Using a sftp client, just copy the asplashscreen.sh file in this github to /opt/retropie/supplementary/splashscreen/, then copy asplashscreen.service in this github to /etc/systemd/system/, then from a terminal client (ex. putty) type in sudo systemctl daemon-reload, then reboot the device.

#  Instructions
-  Windows users:
   -  Download the image from (https://mega.nz/#!6Exx3KxQ!_lUvmDBmij-S-CCtFUOg16-os0f4tB3Wc76pQxuvMwo).        
   -  Uncompress the image with 7zip (Can be downloaded from https://www.7-zip.org/download.html)
   -  Use a program such as Win32DiskImager (https://sourceforge.net/projects/win32diskimager/) or Etcher (https://www.balena.io/etcher/) to flash to a 8GB micro SD card or larger.
   -  Insert into Retro CM3, boot, wait for reboot (fat32 partition is being expanded), once in emulationstation, enjoy!

-  Linux users (Instructions are based on Ubuntu 16.04 as this is the Linux OS I use):
   -  Download the image from (https://mega.nz/#!6Exx3KxQ!_lUvmDBmij-S-CCtFUOg16-os0f4tB3Wc76pQxuvMwo).         
   -  Uncompress the image with 7zip (From terminal, you can install this by doing sudo apt-get install p7zip-full p7zip-rar)   
   -  For those with Ubuntu based systems, you can use the Disks app to image to a 8GB micro SD card or larger.
   -  Insert into Retro CM3, boot, wait for reboot (fat32 partition is being expanded), once in emulationstation, enjoy!

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
 

