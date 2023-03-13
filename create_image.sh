#!/bin/bash

sudo /usr/sbin/debootstrap --variant=minbase stable ./stable http://deb.debian.org/debian/
sudo tar -C ./stable -c . | docker import - kdedesign/debian-stable:latest
sudo rm -r ./stable
