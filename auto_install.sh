#!/bin/bash
# Make this script executable chmod +x auto_install.sh

tput setaf 2; echo Make some coffee, this will take some time.

# Upgrade & update
sudo apt update && sudo apt upgrade

# Software install
sudo apt install \
tilix \
maltego \
metasploit-framework \
burpsuite \
wireshark \
aircrack-ng \
hydra \
nmap \
beef-xss \
nikto \
terminator \
tor \
snort \
synaptic \
chromium \
leafpad \
burpsuite \
pipx \
smbmap \
autokey-gtk \
seclists

# Python installs
python3 -m pipx install impacket

# Pipx settings
pipx ensurepath

# Update nmap scripts
sudo nmap --script-updatedb

#   Manual steps
# install fish and then run
# chsh -s /usr/bin/fish
# Add to path fish_add_path -g /home/vidar/.local/bin/

#execute crontab -e and add
#00 2 ,15,30 * * autoremove /home/[USER NAME]/automations/apt_autoremove.sh

# git installs
# run ssh-keygen if needed
#git clone https://github.com/cddmp/enum4linux-ng.git
#cd enum4linux-ng
#pip3 install -r requirements.txt
