#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y autoremove

# get ready for webapp
sudo apt-get -y install git
sudo apt-get -y install build-essential libssl-dev gcc make  # Maybe needed.

echo ""
echo "Almost done.  The machine is prepared..."
echo "Now you need to run the following commands to build and test batman:"
echo "> vagrant ssh"
echo "> /vagrant/postinstall.sh"
