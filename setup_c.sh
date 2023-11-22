#!/bin/bash

# Mise à jour de la liste des paquets
sudo apt update

# Installation des dépendances pour le développement en C
sudo apt install -y build-essential

# Installation de Make
sudo apt install -y make

# Installation de CMake
sudo apt install -y cmake

# Affichage des versions installées
echo "Make version:"
make --version

echo "CMake version:"
cmake --version

