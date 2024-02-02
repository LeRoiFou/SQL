/*
Cours : SQL pour Débutant(e)s Jour 2 - Fondamentaux des Requêtes SQL
Lien : https://www.youtube.com/watch?v=bpRirgAiyhw&t=108s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/blob/main/Bien_Debuter_SQL/Jour1/CreationTable

Date : 31-01-2024

======================================== ET / OU ============================================
Syntaxe :
SELECT nom_colonne
FROM Nom_table
WHERE condition1 AND/OR condition2;
*/

-- Donner les produits dont le prix est compris entre 50 € et 100 €
SELECT 
    NomProduit, PrixUnitaire
FROM
    produits
WHERE
    PrixUnitaire >= 50
        AND PrixUnitaire <= 100;

-- Donner les produits vendus par le frs n° 12 ou le frs n° 13
SELECT 
    FournisseurID, NomProduit
FROM
    produits
WHERE
    FournisseurID = 12 OR FournisseurID = 13;