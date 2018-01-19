#!/bin/bash  

# install dependencies
apt update
apt install gconf2 
apt install libappindicator1
apt install proxychains

# make dependencies available at startup
FILE="/live/persistence/TailsData_unlocked/live-additional-software.conf"
/bin/cat <<EOM >$FILE
gconf2
libappindicator1
proxychains
EOM

# download wallet / INFO: you can change the download path if an updated version is available
su -c "wget https://github.com/iotaledger/wallet/releases/download/v2.5.6/iota_2.5.6_amd64.deb" amnesia

