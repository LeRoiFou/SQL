/*
Lien : https://www.w3schools.com/sql/sql_delete.asp
Cours : 

SYNTAXE pour supprimer certaines données de la table :
DELETE FROM table_name 
    WHERE condition;

Attention : Si vous omettez la clause WHERE, 
tous les enregistrements de la table seront supprimés !

SYNTAXE pour supprimer toutes les données de la table :
DELETE FROM table_name;

Date : 14-12-23
*/

-- SELECT * FROM executions;

-- Suppression de la ligne de la table ayant pour condamné Ruben Cardenas
-- DELETE FROM executions WHERE LastName = "Cardenas" AND FirstName = "Ruben";

SELECT LastName, FirstName FROM executions
    WHERE LastName = "Cardenas" AND FirstName = "Ruben";
