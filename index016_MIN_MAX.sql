/*
Cours : SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== Fonctions d'agrégation : MIN et MAX =====================================
Les fonctions d'agrégation récupèrent un ensemble de valeurs pour en restituer une seule

Syntaxe :
SELECT MIN / MAX(nom_colonne)
FROM nom_table;
*/

-- Montant des ventes le plus faible
SELECT 
    MIN(MontantTotal) AS "CAHT le plus bas"
FROM
    ventes;

-- Montant des ventes le plus important
SELECT 
    MAX(MontantTotal) AS "CAHT le plus haut"
FROM
    ventes;
    
-- Le produit le plus chère et le produit le moins chère de la table produits
SELECT 
    MAX(PrixUnitaire) AS 'Maximum',
    MIN(PrixUnitaire) AS 'Minimum'
FROM
    produits;
    