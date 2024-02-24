/*
Cours : SQL pour Débutant(e)s Jour 2 - Fondamentaux des Requêtes SQL
Lien : https://www.youtube.com/watch?v=bpRirgAiyhw&t=108s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/blob/main/Bien_Debuter_SQL/Jour1/CreationTable

Date : 02-02-2024

======================================== ORDER BY ============================================
Syntaxe :
SELECT nom_colonne
FROM nom_table
WHERE condition
ORDER BY nom_colonne ASC/DESC, autre_nom_colonne ASC/DESC...;

ASC : ascendant (valeur par défaut)
DES : descendant
*/

-- Donner la liste des produits du plus chère au moins chère
SELECT 
    NomProduit, PrixUnitaire
FROM
    produits
ORDER BY PrixUnitaire DESC;

-- Donner les noms des employés par ordre croissant et les prénoms par ordre décroissant
SELECT 
    *
FROM
    employes
ORDER BY Nom ASC , Prenom DESC;

-- Donner la liste des produits qui ont un prix > à 200 € avec affichage des noms des produits par ordre croissant
SELECT 
    NomProduit, PrixUnitaire
FROM
    produits
WHERE
    PrixUnitaire > 200
ORDER BY NomProduit ASC;
