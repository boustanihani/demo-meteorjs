#! /bin/bash

# Current path
currentPath=$(realpath ./)

# Install Meteorjs
curl https://install.meteor.com/ | sh
export PATH=/home/bas/.meteor:$PATH

# Install demeteorize
cd ~/ && npm install demeteorizer

# Go back to our project
cd "$currentPath"

# demeteorize the app
~/node_modules/.bin/demeteorizer -a "my_app" -o my_app/

# Go inside our demeteorized app to install modules
cd my_app/

# Install modules
npm install
