#!/bin/bash

# Étape 1 : Extraire les lignes contenant "scan report" pour récupérer les IP
grep "scan rep" scan-result_1.csv > out2

# Étape 2 : Extraire uniquement les IP (5e colonne) avec awk
awk '{print $5}' out2 | grep -v "_gateway" | grep -v "prof-HP-Compaq-Pro-6300-MT;1" > out3

# Étape 3 : Lire chaque IP et scanner les ports ouverts avec Nmap
> out4  # création du fichier out 4, si le fichier existe déjà il sera vide après le lancement du script

while read ip; do
    # Afficher l'IP
    echo "Scan de l'IP : $ip"
    
    # Scanner les ports TCP ouverts et compter combien sont ouverts
    ports=$(nmap -F --open $ip | grep "open" | wc -l)

    # Ajouter l'IP et le nombre de ports ouverts au fichier final
    echo "$ip;$ports" >> out4
done < out3

# Étape 4 : Afficher le résultat final
echo "Résultat final :"
cat out4
