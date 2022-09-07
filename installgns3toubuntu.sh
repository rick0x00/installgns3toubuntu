#!/bin/bash

sudo add-apt-repository ppa:gns3/ppa
sudo apt update                                
sudo apt install gns3-gui gns3-server

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install gns3-iou

sudo apt-get install libpcap-dev
git clone https://github.com/GNS3/ubridge.git
cd ubridge
make
sudo make intall

sudo usermod -a -G docker $USER
sudo usermod -a -G ubridge $USER 
sudo usermod -a -G libvirt $USER 
sudo usermod -a -G kvm $USER 
sudo usermod -a -G wireshark $USER



