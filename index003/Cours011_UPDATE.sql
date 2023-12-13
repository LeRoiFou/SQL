/*
Lien : https://www.w3schools.com/sql/sql_update.asp
Cours : SQL UPDATE Statement

SYNTAXE :
UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;

L'instruction UPDATE est utilisée pour modifier les enregistrements 
existants dans une table.
ATTENTION : Si vous omettez la clause WHERE, tous les enregistrements 
de la table seront mis à jour !

Date : 13-12-2023
*/

-- SELECT * FROM executions;

-- UPDATE executions
--     SET LastStatement = "Pitié ! Je ne veux pas mourir ! Je ne suis qu'une merde !"
--     WHERE LastName = "Green" AND FirstName = "Norman";

SELECT LastName, FirstName, LastStatement FROM executions
    WHERE LastName = "Green" AND FirstName = "Norman";
