/*
Lien : https://www.w3schools.com/sql/sql_like.asp
Cours : SQL LIKE Operator

SYNTAXE :
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

Date : 16-12-23
*/

-- SELECT * FROM executions;

-- Sélectionner par odre croissant les noms commençant par A
-- SELECT LastName AS Nom, FirstName AS Prénom FROM executions
--     WHERE LastName LIKE 'A%' ORDER BY LastName;

-- Sélectionner les condamnés ressortissant des villes commençant par Be_ 
-- (_ -> un caractère supplémentaire)
-- SELECT LastName, FirstName, County FROM executions
--     WHERE County LIKE 'Be_';

-- Sélectionner les condamnés ressortissant des villes comprenant les 
-- lettres 'da'
-- SELECT LastName, FirstName, County FROM executions
--     WHERE County LIKE '%da%';

-- Sélectionner les condamnés avec les prénoms se terminant par 'el'
-- SELECT LastName AS Nom, FirstName AS Prénom FROM executions
--     WHERE FirstName LIKE '%el' ORDER BY LastName;

-- Sélectionner les condamnés avec les prénoms ne se terminant pas par 'l'
SELECT LastName AS Nom, FirstName as Prénom FROM executions
    WHERE FirstName NOT LIKE '%l' ORDER BY LastName;
