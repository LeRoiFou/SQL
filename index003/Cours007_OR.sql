/*
Lien : https://www.w3schools.com/sql/sql_or.asp
Cours : SQL OR Operator

SYNTAXE :
SELECT column1, column2, ... FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

Date : 11-12-23
*/

-- SELECT * FROM executions;

-- Filtrer les prisonniers selon qu'ils sont nés dans l'État commençant par
-- 'T' ou par 'M'
SELECT LastName, FirstName, NativeState FROM executions
    WHERE NativeState LIKE 'T%' OR NativeState LIKE 'M%';
