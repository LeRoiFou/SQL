/*
Lien : https://www.w3schools.com/sql/sql_having.asp
Cours : SQL HAVING Clause

SYNTAXE :
SELECT column_name(s) FROM table_name
    WHERE condition
    GROUP BY column_name(s)
    HAVING condition
    ORDER BY column_name(s);

La clé HAVING a été ajoutée à SQL parce que le mot clé WHERE ne peut pas être 
utilisé avec les fonctions d'agrégation (GROUP BY par ex)

Date : 27-12-23
*/

SELECT * FROM executions LIMIT 5;

SELECT LastName, AgeatExecution, County FROM executions
    GROUP BY County
    HAVING COUNT(AgeatExecution) > 60;
