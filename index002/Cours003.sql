/*
Cours : https://selectstarsql.com/longtail.html
Date : 06-12-2023
*/

/*
SELECT * FROM executions
*/

-- Dresser la liste de tous les comtés distincts de l'ensemble de données
-- SELECT
--     County
-- FROM executions
-- GROUP BY County

-- Cette requête permet de connaître le nombre d'exécutions par comté
-- SELECT
--   County,
--   COUNT(*) AS county_executions
-- FROM executions
-- GROUP BY County

-- Comptez le nombre de détenus âgés de 50 ans ou plus 
-- qui ont été exécutés dans chaque comté.
-- SELECT 
--     County, COUNT(*)
-- FROM executions
-- WHERE AgeatExecution >= 50
-- GROUP BY County

-- Liste des comtés dans lesquels plus de 2 détenus âgés de 50 ans 
-- ou plus ont été exécutés
-- SELECT
--     County, COUNT(*)
-- FROM executions
-- WHERE AgeatExecution >= 50
-- GROUP BY County
-- HAVING COUNT(*) > 2
