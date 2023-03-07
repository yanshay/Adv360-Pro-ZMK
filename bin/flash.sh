#!/usr/bin/env bash

cd firmware
ls -lt | grep uf2 | head -2
echo

echo "Press Mod-1 to flash left Keyboard"
while [ ! -d "/Volumes/ADV360PRO" ]; do
  sleep 1
done
echo Left keyboard in bootloader mode
sleep 3
echo cp $(ls -1t | grep left.uf2 | head -1) /Volumes/ADV360PRO
cp $(ls -1t | grep left.uf2 | head -1) /Volumes/ADV360PRO
sleep 10
while [ -d "/Volumes/ADV360PRO" ]; do
  sleep 1
done
echo Done flashing left keyboard

sleep 3

echo "Press Mod-3 to flash right keyboard" 
while [ ! -d "/Volumes/ADV360PRO" ]; do
  sleep 1
done
echo
echo Right keyboard in bootloader mode
sleep 3
echo
echo cp $(ls -1t | grep right.uf2 | head -1) /Volumes/ADV360PRO
cp $(ls -1t | grep right.uf2 | head -1) /Volumes/ADV360PRO
echo
echo Done flashing right keyboard 

cd ..
