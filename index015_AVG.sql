/*
Cours : SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== Fonctions d'agrégation : AVG =====================================
Les fonctions d'agrégation récupèrent un ensemble de valeurs pour en restituer une seule

Syntaxe :
SELECT AVG(nom_colonne)
FROM nom_table;
*/

-- CAHT moyen de toutes les ventes réalisées
SELECT 
    AVG(MontantTotal) AS 'CAHT moyen'
FROM
    ventes;
