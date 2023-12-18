/*
Lien : https://www.w3schools.com/sql/sql_wildcards.asp
Cours : SQL Wildcard Characters

Un caractère générique est utilisé pour remplacer un ou plusieurs 
caractères dans une chaîne.
Les caractères génériques sont utilisés avec l'opérateur LIKE. 
L'opérateur LIKE est utilisé dans une clause WHERE pour rechercher 
un motif spécifique dans une colonne.

% : Représente zéro ou plusieurs caractères
_ : Représente un seul caractère
[] : Représente n'importe quel caractère à l'intérieur des crochets *
^ : Représente tout caractère qui n'est pas entre crochets *
- : Représente tout caractère unique dans la plage spécifiée *
{} : Représente tout caractère échappé **


Date : 18-12-23
*/

-- SELECT * FROM executions ORDER BY LastName;

-- WILDCARD % :
-- Afficher tous les noms commençant par 'Bi'
-- SELECT LastName AS Nom FROM executions
--     WHERE LastName LIKE 'Bi%' ORDER BY LastName;

-- WILDCARD _ :
-- Noms avec 2 caractères puis contenant les lettres 'ss' et
-- éventuellement d'autres caractères
-- SELECT LastName AS Nom FROM executions
--     WHERE LastName LIKE '__ss%' ORDER BY LastName;

-- WILDCARD [] : ne marche pas...
SELECT LastName AS Nom FROM executions
    WHERE LastName LIKE '[a]%' ORDER BY LastName;
