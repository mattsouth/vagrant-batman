#!/bin/bash
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y autoremove

# get ready for webapp
sudo apt-get -y install git
sudo apt-get -y install build-essential libssl-dev gcc make  # Maybe needed.

echo ""
echo "Almost done.  The machine is prepared..."
echo "Now you need to run the following commands:"
echo "> vagrant ssh"
echo "> curl https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash"
echo "> source ~/.bashrc"
echo "> nvm install 0.8.0"
echo "> git clone https://github.com/jhnvz/batman"
echo "> cd batman"
