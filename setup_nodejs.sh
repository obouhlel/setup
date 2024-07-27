#!/bin/bash

# Mise à jour de la liste des paquets
sudo apt update

# Installation de Node.js et npm
sudo apt install -y nodejs npm

# Affichage des versions installées
echo "Node.js version:"
node -v

echo "npm version:"
npm -v

npm install --global yarn

echo "yarn version:"
yarn -v

