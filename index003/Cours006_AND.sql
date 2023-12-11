/*
Lien : https://www.w3schools.com/sql/sql_and_or.asp
Cours : SQL AND Operator

SYNTAXE :
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

Date : 11-12-2023
*/

-- SELECT * FROM executions;

-- Filtrer par nom commençant par 'C' ET County = 'Dallas'
-- SELECT LastName, LastName, County FROM executions
--     WHERE County = 'Dallas' AND LastName LIKE 'C%';

-- Filtrer les prisonniers âgés de moins de 25 ans lors de leurs exécutions
-- et que leurs races commencent par B ou par H
SELECT LastName, FirstName, AgeatExecution, Race FROM executions
    WHERE AgeatExecution < 25 AND (Race LIKE 'B%' OR Race LIKE 'H%');

