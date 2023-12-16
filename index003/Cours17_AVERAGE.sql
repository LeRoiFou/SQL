/*
Lien : https://www.w3schools.com/sql/sql_avg.asp
Cours : SQL AVG() Function

SYNTAXE :
SELECT AVG(column_name) FROM table_name
WHERE condition;


Date : 16-12-23
*/

-- SELECT * FROM executions;

-- Age moyen lors de l'exécution
-- SELECT AVG(AgeAtExecution) FROM executions;

-- Niveau d'éduction moyen pour Dallas
-- SELECT AVG(HighestEducationLevel) AS [Niveau éducation moyen] 
-- FROM executions WHERE County = 'Dallas';

-- Afficher le nom, prénom et âge à l'exécution par odre décroissant des 
-- prisonniers qui ont été exécutés à un âge < à l'âge moyen à l'exécution 
SELECT LastName AS Nom, FirstName AS Prénom, AgeatExecution AS [Âge exécution]
    FROM executions
    WHERE AgeatExecution < (SELECT AVG(AgeAtExecution) FROM executions)
    ORDER BY AgeatExecution DESC, LastName;
