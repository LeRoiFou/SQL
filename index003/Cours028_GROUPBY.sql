/*
Lien : https://www.w3schools.com/sql/sql_groupby.asp
Cours : The SQL GROUP BY Statement

SYNTAXE :
SELECT column_name(s) FROM table_name
    WHERE condition
    GROUP BY column_name(s)
    ORDER BY column_name(s);

L'instruction GROUP BY regroupe les lignes qui ont les mêmes valeurs dans des lignes
récapitulatives, comme "trouver le nombre de clients dans chaque pays".

L'instruction GROUP BY est souvent utilisée avec les fonctions d'agrégation (COUNT(),
 MAX(), MIN(), SUM(), AVG()) pour regrouper l'ensemble des résultats 
 en fonction d'une ou de plusieurs colonnes.

Date : 26-12-2023
*/

SELECT * FROM executions LIMIT 5;

-- Liste des communes trié par ordre décroissant
SELECT County FROM executions 
    GROUP BY County ORDER BY County DESC LIMIT 5;

--  Nombre de prisonniers par communes triées par le plus gd nbre de prisonniers
SELECT County, COUNT(LastName) FROM executions
    GROUP BY County ORDER BY COUNT(LastName) DESC LIMIT 5;
