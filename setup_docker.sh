#!/bin/bash

# Ajout de l'utilisateur au groupe docker
sudo usermod -aG docker $USER

# Mise à jour de la liste des paquets
sudo apt update

# Installation des dépendances de Docker
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Ajout de la clé GPG officielle de Docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Configuration du référentiel stable de Docker
echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Mise à jour de la liste des paquets après l'ajout du référentiel Docker
sudo apt update

# Installation de Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Ajout de l'utilisateur actuel au groupe docker (pour éviter de se déconnecter et reconnecter)
sudo usermod -aG docker $USER

# Démarrage du service Docker
sudo systemctl start docker

# Activation du démarrage automatique de Docker
sudo systemctl enable docker

# Affichage de la version installée de Docker
echo "Docker version:"
docker --version

