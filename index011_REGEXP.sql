/*
Cours : SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== REGEXP =====================================
Syntaxe :
SELECT nom_colonne
FROM nom_table
WHERE nom_colonne REGEXP 'patter';

Même fonctionnalité que LIKE mais l'instruction est plus simple et les expressions
régulières sont également utilisées en pandas / polars
*/

-- Liste des produits qui contiennent 'TV' avec LIKE
SELECT 
    *
FROM
    produits
WHERE
    NomProduit LIKE '%TV%';
    
-- Liste des produits qui contiennent 'TV' avec REGEXP
SELECT 
    *
FROM
    produits
WHERE
    NomProduit REGEXP 'TV';

-- Liste des produits dont le nom commence par la lettre D avec LIKE
SELECT 
    *
FROM
    produits
WHERE
    NomProduit LIKE 'D%';
    
-- Liste des produits dont le nom commence par la lettre D avec REGEXP
SELECT 
    *
FROM
    produits
WHERE
    NomProduit REGEXP '^D';

-- Liste des produits qui se termine par la lettre M avec LIKE
SELECT 
    *
FROM
    produits
WHERE
    NomProduit LIKE '%M';

-- Liste des produits qui se termine par la lettre M avec REGEXP
SELECT 
    *
FROM
    produits
WHERE
    NomProduit REGEXP 'M$';

-- Liste des clients dont le numéro du téléphone commence par '05' ou '04' avec LIKE
SELECT 
    *
FROM
    clients
WHERE
    NumeroTelephone LIKE '05%' OR NumeroTelephone LIKE '04%';
    
-- Liste des clients dont le numéro de téléphone commence par '05' ou '04' avec REGEXP
SELECT 
    *
FROM
    clients
WHERE
    NumeroTelephone REGEXP '^04|^05';
    
-- Donner la liste des clients dont le numéro de téléphone commence par 05 ou se termine par 94
SELECT 
    *
FROM
    clients
WHERE
    NumeroTelephone REGEXP '^05|94$';

/* Donner la liste des clients dont le nom contient la lettre 'R' 
suivi de n'importe quelle autre lettre et suivi de la lettre 'A'  avec LIKE */
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE '%R_A%';

/* Donner la liste des clients dont le nom contient la lettre 'R' 
suivi de n'importe quelle autre lettre et suivi de la lettre 'A'  avec REGEXP */

SELECT 
    *
FROM
    clients
WHERE
    Nom REGEXP 'R.A';

-- Liste des clients dont le nom commence par 'R' et se termine par 'A' avec LIKE
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE 'R%A';
    
-- Liste des clients dont le nom commence par 'R' et se termine par 'A' avec REGEXP
SELECT 
    *
FROM
    clients
WHERE
    Nom REGEXP '^R.*A$';

-- Liste des clients dont le nom contient 'it' ou 'ie' ou 'il' ou 'is' avec REGEXP
SELECT 
    *
FROM
    clients
WHERE
    Nom REGEXP 'i[tels]';

-- Liste des clients dont le nom contient la lettre 'i' suivi d'une lettre comprise entre 'f' et 't'
SELECT 
    *
FROM
    clients
WHERE
    Nom REGEXP 'i[f-t]';
