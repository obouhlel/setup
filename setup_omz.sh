#!/bin/bash

# Installer Zsh
sudo apt update
sudo apt install -y zsh

# Changer le shell par défaut
chsh -s $(which zsh)

# Installer Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Zsh et Oh My Zsh ont été installés avec succès. Déconnectez-vous et reconnectez-vous pour utiliser Zsh."

