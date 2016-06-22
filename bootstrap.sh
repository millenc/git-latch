#!/usr/bin/env bash

# Run update and get the required software
apt-get update
apt-get install -y git-all
apt-get install -y unzip

# Get latch-cmd (and save it in tmp)
wget -q https://github.com/millenc/latch-cmd/releases/download/1.0/latch-cmd_linux_amd64.zip -O /tmp/latch-cmd.zip

# Unzip the package, extract it in /usr/bin and setup permissions
sudo unzip -o /tmp/latch-cmd.zip -d /usr/bin/
sudo chmod 775 /usr/bin/latch-cmd

# Cleanup
rm /tmp/latch-cmd.zip

# Set the git template dir (where the hooks are stored)
git config --global init.templatedir /vagrant/git_template/
