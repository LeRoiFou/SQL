/*
Cours : SQL pour Débutant(e)s Jour 2 - Fondamentaux des Requêtes SQL
Lien : https://www.youtube.com/watch?v=bpRirgAiyhw&t=108s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/blob/main/Bien_Debuter_SQL/Jour1/CreationTable

Date : 02-02-2024

======================================== BETWEEN ============================================
Syntaxe :
SELECT nom_colonne
FROM nom_table
WHERE nom_colonne BETWEEN valeur1 AND valeur2;
*/

-- Ensemble des ventes du 1er trimestre 2021
SELECT 
    *
FROM
    ventes
WHERE
    DateVente BETWEEN "2021-01-01" AND "2021-03-31";
