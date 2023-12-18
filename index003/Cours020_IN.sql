/*
Lien : https://www.w3schools.com/sql/sql_in.asp
Cours : SQL IN Operator

SYNTAXE :
SELECT column_name(s) FROM table_name
    WHERE column_name IN (value1, value2, ...);

L'opérateur IN permet de spécifier plusieurs valeurs dans une clause WHERE.
L'opérateur IN est une abréviation pour plusieurs conditions OR

Date : 18-12-23
*/

-- SELECT * FROM executions;

-- Nom, prénom et ville des condamnés ayant résidé à Bexar ou Dallas
-- SELECT LastName AS Nom, FirstName AS Prénom, County AS Ville FROM executions
--     WHERE County IN ('Dallas', 'Bexar') ORDER BY County, LastName;

-- Nom, prénom et ville des condamnés n'ayant pas résidé à Bexar ou Dallas
SELECT LastName AS Nom, FirstName AS Prénom, County AS Ville FROM executions
    WHERE County NOT IN ('Dallas', 'Bexar') ORDER BY County, LastName;
