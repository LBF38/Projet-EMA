# Projet EMA

Projet final du cours Sécurité des composants à l'ENSTA Bretagne, spécialité Conception de Systèmes Numériques (CSN).

> **Warning**: Le projet utilise Matlab pour la partie d'analyse. Il est donc nécessaire d'avoir Matlab installé sur votre ordinateur pour pouvoir lancer le notebook `analyse`. De plus, des prérequis d'installation pour le jupyter notebook sont nécessaires pour le bon fonctionnement de `analyse`.
> Plus d'informations sont fournies dans le notebook `analyse`.

## Description

Ce projet consiste à répliquer une attaque EMA sur un composant utilisant l'algorithme AES 128. Pour cela, nous avons reçu des données appelées traces, qui contiennent les informations nécessaires pour l'étude de l'algorithme de chiffrement.

Ainsi, le notebook `data_extraction` permet d'extraire les données utiles des fichiers `.csv` fournis et de les transformer pour les utiliser dans l'analyse.

Le notebook `analyse` contient l'analyse des données, qui permet de déterminer la clé secrète utilisée pour chiffrer les données.

Ces notebooks nous permettent notamment d'expliquer le code en même temps que de l'écrire. Vous trouverez donc des explications au fur et à mesure du notebook.

## Conclusion

Ce projet fut l'occasion de découvrir le fonctionnement d'une attaque par analyse des ondes électromagnétiques d'un composant. Cela permet de mieux comprendre les risques potentiels liés à la sécurité des composants que nous utilisons au quotidien.

## Auteur

- [@LBF38](https://github.com/LBF38)
