/*
Lien : https://www.w3schools.com/sql/sql_between.asp
Cours : SQL BETWEEN Operator

SYNTAXE :
SELECT column_name(s) FROM table_name
    WHERE column_name BETWEEN value1 AND value2;

L'opérateur ENTRE sélectionne des valeurs dans une plage donnée. 
Les valeurs peuvent être des nombres, du texte ou des dates.

L'opérateur BETWEEN est inclusif : 
les valeurs de début et de fin sont incluses.

Date : 19-12-23
*/

-- SELECT * FROM executions;

-- Prisonniers nés entre le 01-01-1980 et le 31-12-1983
-- SELECT LastName, FirstName, DateofBirth FROM executions
--     WHERE DateofBirth BETWEEN '1980-01-01' AND '1983-12-31'
--     ORDER BY DateofBirth;

-- Prisonniers pour un poids non compris entre 120 et 280
-- SELECT LastName, FirstName, Weight FROM executions
--     WHERE Weight NOT BETWEEN '120' AND '280' ORDER BY Weight;

-- Prisonniers nés entre le 01-01-1980 et le 31-12-1983 et nés dans l'État
-- de la Californie
SELECT LastName, FirstName, DateofBirth, NativeState FROM executions
    WHERE DateofBirth BETWEEN '1980-01-01' AND '1983-12-31' AND
    NativeState IN('California') ORDER BY DateofBirth;
