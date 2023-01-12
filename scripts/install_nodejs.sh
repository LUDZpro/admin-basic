# install npm
apt-get install npm -y
# install nvm for nodejs 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# load nvm
. ~/.nvm/nvm.sh
# install nodejs and npm
nvm install node
# install pm2
npm install pm2 -g
# install yarn
npm install yarn -g

# use verion 14 of nodejs 
nvm install 14
nvm use 14

# install babel-node 
npm install -g @babel/node @babel/core @babel/preset-env
npm install -g @babel/cli
npm install -g @babel/preset-typescript
# make babel-node executable
chmod +x /usr/local/bin/babel-node

# install typescript
npm install -g typescript

