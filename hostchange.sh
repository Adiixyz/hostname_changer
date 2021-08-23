#!/bin/bash

hostn=$(cat /etc/hostname)

echo "Existing hostname is $hostn"

echo "Enter new hostname now! : "
read newhost

sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

echo "Changed... Your new hostname is $newhost"

read -s -n 1 -p "Press any key to reboot"
sudo reboot
