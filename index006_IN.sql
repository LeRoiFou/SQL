/*
Cours : SQL pour Débutant(e)s Jour 2 - Fondamentaux des Requêtes SQL
Lien : https://www.youtube.com/watch?v=bpRirgAiyhw&t=108s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/blob/main/Bien_Debuter_SQL/Jour1/CreationTable

Date : 31-01-2024

======================================== IN ============================================
Syntaxe :
SELECT nom_colonne
FROM Nom_table
WHERE nom_colonne IN (condition1, condition2);
*/

--
SELECT 
    *
FROM
    produits
WHERE
    FournisseurID IN (13 , 15, 55, 45, 89);