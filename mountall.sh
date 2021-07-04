#!/bin/sh

# convenience for using from archiso when my laptop borked
# Prepares all the drives in my dell to be arch-chrooted into
# then arch-chroots into it

mount /dev/nvme0n1p3 /mnt \
    && mount /dev/nvme0n1p1 /mnt/boot \
    && swapon /dev/nvme0n1p2 \
    && cryptsetup open /dev/sda5 home-john \
    && mount /dev/mapper/home-john /mnt/home \
    && arch-chroot /mnt

