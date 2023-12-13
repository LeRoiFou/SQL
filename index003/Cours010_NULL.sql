/*
Lien : https://www.w3schools.com/sql/sql_null_values.asp
Cours : SQL NULL Values

SYNTAXE IS NULL :
SELECT column_names FROM table_name
    WHERE column_name IS NULL;

SYNTAXE IS NOT NULL :
SELECT column_names FROM table_name
    WHERE column_name IS NOT NULL

Qu'est-ce qu'une valeur NULL ?
Un champ avec une valeur NULL est un champ sans valeur, c'est un champ qui
est vide à sa création, et qu'il ne contient aucun caractère, ni même un
espace

Date : 13-12-23
*/

-- SELECT * FROM executions;

-- Filtre sur les condamnés qui n'ont fait aucune déclaration lors de leurs
-- exécutions
-- SELECT LastName, FirstName FROM executions
--     WHERE LastStatement IS NULL ORDER BY LastName;

-- Filtre sur les condamnés qui ont fait une déclaration lors de leurs
-- exécutions
SELECT LastName, FirstName FROM executions
    WHERE LastStatement IS NOT NULL ORDER BY LastName;
