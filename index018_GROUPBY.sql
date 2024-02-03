/*
Cours : SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== Fonctions d'agrégation : GROUP BY =====================================
Les fonctions d'agrégation récupèrent un ensemble de valeurs pour en restituer une seule

Syntaxe:
SELECT nom_colonne1, nom_colonneX
FROM nom_table
GROUP BY nom_colonne1, nom_colonneX;
*/

-- Le n° ID des 10 employés qui réalisent le CAHT le plus élevé
SELECT 
    EmployeID, SUM(MontantTotal) AS CAHT
FROM
    ventes
GROUP BY EmployeID, MontantTotal
ORDER BY MontantTotal DESC
LIMIT 10;

-- Nombre de ventes réalisé par employé par ordre décroissant
SELECT 
    EmployeID, COUNT(VenteID) AS NombreVentes
FROM
    ventes
GROUP BY EmployeID , VenteID
ORDER BY VenteID DESC;

-- Somme des ventes journalières par trie croissant
SELECT 
    DateVente, SUM(MontantTotal) AS CAJournalier
FROM
    ventes
GROUP BY DateVente , MontantTotal
ORDER BY DateVente ASC;

-- Somme des ventes par année par trie croissant
SELECT 
    YEAR(DateVente) AS Annee, SUM(MontantTotal) AS MoyenneCA
FROM
    ventes
GROUP BY Annee
ORDER BY Annee ASC;

-- Moyenne des ventes par année et par employé
SELECT 
    EmployeID,
    YEAR(DateVente) AS Annee,
    AVG(MontantTotal) AS MoyenneCA
FROM
    ventes
GROUP BY EmployeID , Annee
ORDER BY EmployeID ASC , Annee ASC;