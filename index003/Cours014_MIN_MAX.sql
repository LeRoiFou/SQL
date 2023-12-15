/*
Lien : https://www.w3schools.com/sql/sql_min_max.asp
Cours : SQL MIN() and MAX() Functions

SYNTAXE pour MIN :
SELECT MIN(column_name) FROM table_name
    WHERE condition;

SYNTAXE pour MAX :
SELECT MAX(column_name) FROM table_name
    WHERE condition;

La fonction MIN() renvoie la plus petite valeur de la colonne sélectionnée.
La fonction MAX() renvoie la plus grande valeur de la colonne sélectionnée.

Date : 15-12-23
*/

-- SELECT * FROM executions;

-- Dernier nom
-- SELECT MAX(FirstName) AS Nom FROM executions;

-- Première ville
SELECT MIN(County) AS Ville FROM executions;
