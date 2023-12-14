/*
Lien : https://www.w3schools.com/sql/sql_top.asp
Cours : SQL LIMIT

SYNTAXE MySQL Syntax:
SELECT column_name(s) FROM table_name
    LIMIT number;

SYNTAXE SQL Server / MS Access Syntax:
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

SYNTAXE Oracle 12 Syntax:
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;

SYNTAXE Older Oracle Syntax:
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

SYNTAXE Older Oracle Syntax (with ORDER BY):
SELECT *
FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
WHERE ROWNUM <= number;

L'instruction SELECT TOP est utilisée pour spécifier le nombre 
d'enregistrements à renvoyer.
L'instruction SELECT TOP est utile pour les grandes tables 
contenant des milliers d'enregistrements.

Date : 14-12-2023
*/

-- SELECT * FROM executions;

-- Affichage des 3 premières lignes
-- SELECT LastName, FirstName FROM executions LIMIT 3;

-- Affichage des 5 premières lignes  par trie des décroissant 
-- avec County = 'Dallas'
SELECT LastName, Firstname, County FROM executions
    WHERE County = 'Dallas' ORDER BY LastName DESC LIMIT 5;
