/* 
https://selectstarsql.com/
Cours : https://selectstarsql.com/beazley.html
Date : 03-12-23 
*/

-- Affichage des 3 premières lignes
-- SELECT * FROM executions LIMIT 3

-- Affichage du nom et du prénom des 3 premières lignes
-- SELECT FirstName, LastName FROM executions LIMIT 3

-- Calculs sans recourir à la table
-- SELECT 50 + 2, 51 * 2

-- Recherchez le prénom, le nom et l'âge des détenus âgés de 25 ans 
-- ou moins au moment de l'exécution.
-- SELECT FirstName, LastName, AgeatExecution
-- FROM executions
-- WHERE AgeatExecution <= 25

-- Rechercher le condamné Raymond Landry : pb avec l'instruction WHERE
-- le résultat ne sera pas trouvé, car LastName comprend 'Landry'
-- SELECT FirstName, LastName, Execution
-- FROM executions
-- WHERE FirstName = 'Raymond'
-- AND LastName = 'Landry'

-- Recherche le condamné Raymond Landry avec l'instruction LIKE
-- SELECT FirstName, LastName, Execution
-- FROM executions
-- WHERE FirstName = 'Raymond'
-- AND LastName LIKE '%Landry%'

-- Retrouvez la dernière déclaration de Napoléon Beazley
SELECT LastStatement
FROM executions
WHERE FirstName = 'Napoleon'