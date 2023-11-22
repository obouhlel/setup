#!/bin/bash

# Mettre à jour les packages existants
sudo apt update

# Installer les outils de compilation
sudo apt install -y build-essential

# Installer les dépendances de Meson et Ninja
sudo apt install -y python3-pip python3-setuptools python3-wheel

# Installer Meson
pip3 install --user meson

# Installer Ninja
pip3 install --user ninja

# Installer les dépendances d'IRSSI
sudo apt install -y libncurses5-dev libssl-dev libperl-dev pkg-config cmake libglib2.0-dev

# Cloner le référentiel IRSSI depuis GitHub
git clone https://github.com/irssi/irssi.git

# Accéder au répertoire IRSSI
cd irssi

# Configurer le projet avec Meson
meson build

# Accéder au répertoire de construction
cd build

# Compiler le projet avec Ninja
ninja

# Installer IRSSI
sudo ninja install

# Revenir au répertoire initial
cd -

echo "IRSSI a été installé avec succès."
