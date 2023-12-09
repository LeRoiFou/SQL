/*
https://www.w3schools.com/sql/sql_where.asp

SYNTAXE :
SELECT column1, column2, ... FROM table_name
    WHERE condition;

L'instruction WHERE est utilisée pour filtrer les enregistrements : elle permet 
d'extraire uniquement les enregistrements qui remplissent une condition donnée

L'instruction WHERE ne s'utilise pas uniquement avec l'instruction SELECT

Les opérateurs utilisés avec WHERE :
=	Equal
>	Greater than	
<	Less than	
>=	Greater than or equal	
<=	Less than or equal	
<>	Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN	Between a certain range	
LIKE	Search for a pattern	
IN	To specify multiple possible values for a column

Date : 09-12-23
*/

-- SELECT * FROM executions

-- Afficher toute la table avec le filtre County = 'Dallas'
-- SELECT * FROM executions 
--     WHERE County = 'Dallas'; 

-- Afficher certains champs de la table avec les condamnés ayant au moins de 60 ans
-- lors de leurs exécutions
-- SELECT FirstName, LastName, AgeatExecution FROM executions
--     WHERE AgeatExecution >= 60;

-- Afficher certaines champs de la table avec les condamnés qui ne sont pas nés
-- dans l'État du Texas
-- SELECT FirstName, LastName, NativeState FROM executions
--     WHERE NOT NativeState = 'Texas';

-- Afficher certaines champs de la table avec les condamnés qui ne sont pas nés
-- dans l'État du Texas et ayant exécutés avec un âge de moins de 60 ans
SELECT FirstName, LastName, AgeatExecution, NativeState FROM executions
    WHERE NOT NativeState = 'Texas'
    AND AgeatExecution < 60;