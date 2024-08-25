#!/bin/bash
# Make this script executable chmod +x auto_install.sh

tput setaf 2; echo Make some coffee, this will take some time.

# Upgrade & update
sudo apt update && sudo apt upgrade

# Software install
sudo apt install tilix maltego metasploit-framework burpsuite wireshark aircrack-ng hydra nmap beef-xss nikto terminator tor snort synaptic chromium leafpad burpsuite

# Update nmap scripts
sudo nmap --script-updatedb

# Manual steps
# install fish and then run
#chsh -s /usr/bin/fish

#execute crontab -e and add
#00 2 ,15,30 * * autoremove /home/*/automations/apt_autoremove.sh
