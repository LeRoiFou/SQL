/*
Lien : https://www.w3schools.com/sql/sql_alias.asp
Cours : SQL Aliases

SYNTAXE pour intervenir sur la table :
SELECT column_name AS alias_name
FROM table_name;

SYNTAXE pour intervenir sur les colonnes :
SELECT column_name(s)
FROM table_name AS alias_name;

Les alias SQL sont utilisés pour donner un nom temporaire à une table ou 
à une colonne d'une table.
Les alias sont souvent utilisés pour rendre les noms de colonnes plus lisibles.
Un alias n'existe que pour la durée de la requête.
Un alias est créé avec le mot-clé AS.

En fait, dans la plupart des langages de base de données, 
vous pouvez ignorer le mot-clé AS

Date : 19-12-2023
*/

-- SELECT * FROM executions;

-- Liste des prisonniers dont on a aucune information sur le niveau d'études
SELECT LastName, FirstName, HighestEducationLevel AS ["Niveau d'études"]
    FROM executions WHERE HighestEducationLevel IS NULL
    ORDER BY HighestEducationLevel;
