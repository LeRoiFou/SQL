/*
Cours : SQL pour Débutant(e)s Jour 5 - Jointures, Sous-Requêtes, CASE
Lien : https://www.youtube.com/watch?v=kawRFZMQ-60

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour5

Date : 10-02-24
============================================ Sous-requête FROM =========================================================
Utilisation de sous-requêtes dans la clause FROM pour créer des tables temporaires

Syntaxe :
SELECT colonne1, colonne2, ...
FROM (SELECT colonneA, colonneB FROM table2 WHERE condition) AS sub_table
WHERE sub_table.colonneA = condition;

Explication:
- La clause FROM avec sous-requête crée une vue temporaire 'sub_table' qui peut être utilisée 
comme n'importe quelle autre table dans la requête principale.
- La sous-requête dans FROM est souvent utilisée pour simplifier des requêtes complexes ou pour effectuer des pré-filtrages.

Conseil :
- Donnez des alias clairs aux sous-tables pour améliorer la lisibilité de vos requêtes.
- Préfiltrez autant que possible dans la sous-requête pour réduire la charge de traitement dans la requête principale.
*/

-- Donner pour chaque employé, le nom, le prénom et la moyenne des ventes annuelles
SELECT 
    EmployeID, ROUND(AVG(TotalVentes), 0) AS MeanCA
FROM
    (SELECT 
        EmployeID,
            YEAR(DateVente) AS Annee,
            SUM(MontantTotal) AS TotalVentes
    FROM
        ventes
    GROUP BY EmployeID , Annee) AS temp
GROUP BY EmployeID;

-- Quel est le taux de croissance du CA entre 2021 et 20222
SELECT 
    (CA2022 - CA2021) / CA2021 AS TxCroissance
FROM
    (SELECT 
        SUM(MontantTotal) AS CA2022
    FROM
        ventes
    WHERE
        YEAR(DateVente) = 2022) AS temp,
    (SELECT 
        SUM(MontantTotal) AS CA2021
    FROM
        ventes
    WHERE
        YEAR(DateVente) = 2021) AS temp2;
        
-- Donner la liste des 10 clients dont la moyenne du nombre d'achats annuels est la plus élevée
SELECT 
    ClientID,
    Nom,
    Prenom,
    ROUND(AVG(NbAchats), 0) AS Moyenne
FROM
    (SELECT 
        ClientID,
		YEAR(DateVente) AS Annee,
		COUNT(VenteID) AS NbAchats
    FROM
        ventes
    GROUP BY ClientID , Annee) AS temp
LEFT JOIN
    clients USING (ClientID)
GROUP BY ClientID, Nom, Prenom
ORDER BY Moyenne DESC
LIMIT 10;