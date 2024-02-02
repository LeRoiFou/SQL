/*
Cours : SQL pour Débutant(e)s Jour 2 - Fondamentaux des Requêtes SQL
Lien : https://www.youtube.com/watch?v=bpRirgAiyhw&t=108s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/blob/main/Bien_Debuter_SQL/Jour1/CreationTable

Date : 31-01-2024

======================================== FILTRER ============================================
Syntaxe :
SELECT nom_colonne
FROM nom_table
WHERE condition;

*/

-- Liste des produits vendus > à 200 €
SELECT 
    *
FROM
    produits
WHERE
    PrixUnitaire > 200;

-- Information sur le produit "Nike Air Max"
SELECT 
    *
FROM
    produits
WHERE
    NomProduit = 'Nike Air Max';
    
-- Information sur les produits du fournisseur n° 13
SELECT 
    DescProduit
FROM
    produits
WHERE
    FournisseurID = 13;
