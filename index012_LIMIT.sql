/*
Cours : SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== LIMIT =====================================
Syntaxe :
SELECT nom_colonne
FROM nom_table
WHERE nom_colonne 
LIMIT nombre_de_lignes;
*/

-- Donner la liste des 10 premiers clients par ordre alphabétique
SELECT 
    *
FROM
    clients
ORDER BY Nom ASC
LIMIT 10;

-- Donner la liste des 10 produits les plus chers
SELECT 
    *
FROM
    produits
ORDER BY PrixUnitaire DESC
LIMIT 10;