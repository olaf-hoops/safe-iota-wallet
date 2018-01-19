#!/bin/bash  

# Install Light Wallet / INFO: change "iota_2.5.6_amd64.deb" if you downloaded an updated version
sudo dpkg -i iota_2.5.6_amd64.deb & sleep 2

# Startup and copying settings.json
iota start & sleep 2
last_pid=$!
kill $last_pid 
sleep 2
cp ./settings.json ~/.config/IOTA\ Wallet/
sleep 1
proxychains iota --ignore-gpu-blacklist
