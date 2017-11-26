#!/bin/bash  
echo "Roman bash script for utility ubuntu 16.04: START"  
sudo apt-get update
sudo apt-get upgrade
sudo apt-get autoremove
sudo apt-get autoclean
rm -v -f ~/.cache/thumbnails/*/*.png ~/.thumbnails/*/*.png
rm -v -f ~/.cache/thumbnails/*/*/*.png ~/.thumbnails/*/*/*.png

echo "Roman bash script for utility ubuntu 16.04: FINISH"  