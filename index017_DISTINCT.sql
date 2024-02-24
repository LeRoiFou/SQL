/*
Cours : SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== Fonctions d'agrégation : DISTINCT =====================================
Les fonctions d'agrégation récupèrent un ensemble de valeurs pour en restituer une seule

Syntaxe:
SELECT Aggregation(DISTINCT(Colonne)) FROM table;

L'instruction DISTINCT() permet de récupérer les valeurs uniques
*/

-- Montant total du CAHT en prenant les valeurs uniques
SELECT 
    SUM(DISTINCT (MontantTotal)) AS "CAHT Total"
FROM
    ventes;
    
-- Montant moyen du CAHT en prenant les valeurs uniques
SELECT 
    AVG(DISTINCT (MontantTotal)) AS "CAHT moyen"
FROM
    ventes;
    
-- Montant max du CAHT en prenant les valeurs uniques
SELECT 
    MAX(DISTINCT (MontantTotal)) AS "CAHT max"
FROM
    ventes;
    
-- Montant min CAHT en prenant les valeurs uniques
SELECT 
    MIN(DISTINCT (MontantTotal)) AS "CAHT min"
FROM
    ventes;
