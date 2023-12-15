/*
Lien : https://www.w3schools.com/sql/sql_count.asp
Cours : SQL COUNT() Function

SYNTAXE :
SELECT COUNT(column_name) FROM table_name
    WHERE condition;

SYNTAXE pour supprimer les doublons
SELECT COUNT(DISTINCT column_name) FROM table_name
    WHERE condition;

La fonction COUNT() renvoie le nombre de lignes correspondant 
à un critère spécifié.

Date : 15-12-23
*/

-- SELECT * FROM executions ORDER BY FirstName;

-- Nombre total de lignes de la table
-- SELECT COUNT(*) AS Total_lignes FROM executions;

-- Nombre de personnes exécutés avec un âge <= à 30 ans : 81
-- SELECT COUNT(FirstName) AS [Nombre de condamnés] FROM executions
--     WHERE AgeatExecution <= 30;

-- Nombre de personnes exécutés avec un âge <= à 30 ans sans doublons : 63
SELECT COUNT(DISTINCT FirstName) AS [Nombre de condamnés bis] FROM executions
    WHERE AgeatExecution <= 30;
