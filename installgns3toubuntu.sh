#!/bin/bash

sudo add-apt-repository ppa:gns3/ppa
sudo apt update                                
sudo apt install gns3-gui gns3-server

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install gns3-iou

sudo usermod -a -G docker $USER
sudo usermod -aG ubridge libvirt kvm wireshark $USER
