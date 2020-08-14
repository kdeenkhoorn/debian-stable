# debian-stable
This docker image is an armhf version of Debian Stable Linux which i have created especially for my Cubietruck. It is my personally created image and the base for my docker images. This image is also compatible with the Raspberry Pi 2.

## Build characteristics:
- Build on a Odroid HC2 board with Ubuntu 18.04 (armhf)

## Build dependencies:
- debootstrap 
```
# apt install debootstrap
```

## Build command:
```
$ cd /workdir_with_500M_of_space
$ sudo /usr/sbin/debootstrap --variant=minbase stable ./stable http://deb.debian.org/debian/
$ sudo tar -C buster -c . | docker import - kdedesign/debian-stable:latest
$ sudo rm -r ./stable
```

## More info:
- Check https://github.com/kdeenkhoorn/debian-stable
- Check https://hub.docker.com/r/kdedesign/debian-stable/
- Check https://docs.docker.com/develop/develop-images/baseimages/
- Check https://wiki.debian.org/Debootstrap

Have fun!

Kl@@s
