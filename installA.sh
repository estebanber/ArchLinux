#!/bin/bash
pacman -Sy reflector --noconfirm
timedatectl set-ntp true

parted --script /dev/sda \
    mklabel msdos \
    mkpart primary ext4 1MiB 10GiB \
    set 1 boot on \
    mkpart primary ext4 10GiB 100%

mkfs.ext4 -F /dev/sda1
mkfs.ext4 -F /dev/sda2
mount /dev/sda1 /mnt

reflector --country Bangladesh --country 'United States' --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist

pacstrap /mnt base
genfstab -U /mnt >> /mnt/etc/fstab
cp script2 /mnt/home/
arch-chroot /mnt sh /home/installB

rm /mnt/home/script2
echo 'Setup Complete!'
echo 'type "reboot" and remove installation media.'
