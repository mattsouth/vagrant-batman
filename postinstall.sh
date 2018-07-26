#!/bin/bash -i
curl https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
source ~/.bashrc
nvm install 0.10.32
git clone https://github.com/jhnvz/batman
cd batman
git checkout v0.14.1
npm config set registry="http://registry.npmjs.org/"
patch package.json /vagrant/package.json.diff

# Fix issue with Example batmap
patch examples/batmap.html /vagrant/batmap.html.patch.diff

# Fix issue "path.existsSync is now called fs.existsSync" by using older version of coffeescript
source ~/.profile
nvm --version
npm install coffeescript@1.8.0

# Ready to build
npm install
node_modules/.bin/cake build
node_modules/.bin/cake test
