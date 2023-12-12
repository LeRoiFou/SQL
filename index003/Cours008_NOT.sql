/*
Lien : https://www.w3schools.com/sql/sql_not.asp
Cours : SQL NOT Operator

SYNTAXE :
SELECT column1, column2, ... FROM table_name
WHERE NOT condition;

Instructions utilisées :
NOT LIKE
NOT BETWEEN
NOT IN
NOT Greater Than
NOT Less Than

Date : 12-12-2023
*/

-- SELECT * FROM executions;

-- Filtre sur les condamnés n'ayant pas résidé à Dallas
-- SELECT FirstName, LastName, County FROM executions
--     WHERE NOT County = 'Dallas';

-- NOT LIKE
-- Liste des condamnés excepté ceux commençant par le nom avec la lettre A
-- SELECT LastName, FirstName FROM executions
--     WHERE LastName NOT LIKE 'A%';

-- NOT BETWEEN
-- Condamnés n'ayant pas un âge compris entre 30 et 50 ans lors de leurs
-- exécutions
-- SELECT LastName, FirstName , AgeatExecution FROM executions
--     WHERE AgeatExecution NOT BETWEEN 30 AND 50;

-- NOT IN
-- Condamnés qui ne sont ni 'black' ni 'hispanic'
-- SELECT LastName, FirstName, Race FROM executions
--     WHERE Race NOT IN ('Black', 'Hispanic');

-- NOT Greater Than
-- Condamnés n'ayant pas plus de 29 ans lors de leurs exécutions
-- SELECT LastName, FirstName, AgeatExecution FROM executions
--     WHERE NOT AgeatExecution > 29;

-- NOT Less Than
-- Condamnés n'ayant pas moins de 60 ans lors de leurs exécutions
SELECT LastName, FirstName, AgeatExecution FROM executions
    WHERE NOT AgeatExecution < 60 
    ORDER BY AgeatExecution DESC, LastName;
