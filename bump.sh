#!/bin/sh
# Met à jour l'identifiant de version pour forcer le rechargement chez les visiteurs
V=$(date +%s); printf %s "$V" > version.txt
sed -i "s/window.CV_BUILD='[0-9]*'/window.CV_BUILD='$V'/" index.html
