#!/bin/bash

# Mise à jour des paquets
sudo apt update

# Installation de Python et pip
sudo apt install -y python3 python3-pip

# Installation de venv
sudo apt install -y python3-venv

# Création d'un environnement virtuel
python3 -m venv mon_environnement

# Activation de l'environnement virtuel
source mon_environnement/bin/activate

# Installation de Django
pip install Django

# Création du fichier requirements.txt
echo "Django==3.2.10" > requirements.txt

# Installation des dépendances
pip install -r requirements.txt

# Vérification de l'installation de Django
python -m django --version

# Création d'un projet Django
django-admin startproject mon_projet

# Déplacement dans le répertoire du projet
cd mon_projet

# Application des migrations initiales
python manage.py migrate

# Lancement du serveur de développement
python manage.py runserver

