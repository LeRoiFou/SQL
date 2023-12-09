/*
SYNTAXE :
SELECT column1, column2, ... FROM table_name
    ORDER BY column1, column2, ... ASC|DESC;

L'instruction ORDER BY est utilisé pour trier l'ensemble des résultats 
par ordre croissant ou décroissant. 
Le trie est croissant par défaut.

Date : 09-12-23
*/

-- SELECT * FROM executions

--  Liste par ordre croissant des condamnés
-- SELECT FirstName, LastName FROM executions
--     ORDER BY LastName;

-- Affichage de certains champs de l'age des prisonniers lors de l'exécution par
-- trie décroissant
-- SELECT FirstName, LastName, AgeatExecution FROM executions
--     ORDER BY AgeatExecution DESC;

-- Multi trie : trie des États par ordre croissant et des noms par ordre décroissant
SELECT County, LastName, FirstName FROM executions
    ORDER BY County, LastName DESC;
