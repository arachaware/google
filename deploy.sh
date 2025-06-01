#!/bin/bash

# URL de ton dépôt public
PUBLIC_REPO_URL="https://github.com/TON_USERNAME/site-public.git"

# Supprimer dossier temporaire s’il existe
rm -rf temp-deploy
mkdir temp-deploy

# Copier le fichier index.html
cp index.html temp-deploy/

# Initialiser un mini dépôt Git
cd temp-deploy
git init
git remote add origin "$PUBLIC_REPO_URL"
git add index.html
git commit -m "Déploiement automatique"
git branch -M main
git push -f origin main

# Nettoyer
cd ..
rm -rf temp-deploy

echo "✅ Déployé sur GitHub Pages !"
