#!/bin/bash
sudo rm /boot/test*
sudo umount /home/pi/RetroPie
sudo echo ", +" | sudo sfdisk -N 3 --force /dev/mmcblk0
sudo ln -s /dev/mmcblk0 /dev/hda
sudo ln -s /dev/mmcblk0p3 /dev/hda3
sudo fdisk -l /dev/hda >> /boot/test.txt
sudo awk '{print $5}' /boot/test.txt >> /boot/test2.txt
maxsize=$(tail -n 1 /boot/test2.txt)
truemaxsize=$(( ${maxsize%.*}*1024 ))M
sudo fatresize -p -s $truemaxsize /dev/hda3
echo -ne '\xeb\x58\x90' | sudo dd conv=notrunc bs=1 count=3 of=/dev/mmcblk0p3
sudo rm /boot/test*
sudo mv /opt/retropie/configs/all/autostart.sh.bak /opt/retropie/configs/all/autostart.sh
exitcode=$?
if [ $exitcode -eq 0 ]; then echo -e "Completed expansion of fat32 partition."
echo -e "Rebooting in 10 seconds."
systemctl enable asplashscreen
systemctl disable one-time.service
sleep 10
reboot
else
echo fat32 partition expansion failed.
echo Rebooting in 10 seconds.
systemctl disable one-time.service
sleep 10
reboot
fi
