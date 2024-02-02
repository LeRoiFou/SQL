/*
Cours : SQL pour Débutant(e)s Jour 2 - Fondamentaux des Requêtes SQL
Lien : https://www.youtube.com/watch?v=bpRirgAiyhw&t=108s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/blob/main/Bien_Debuter_SQL/Jour1/CreationTable

Date : 02-02-2024

======================================== LIKE ============================================
Syntaxe :
SELECT nom_colonne
FROM nom_table
WHERE nom_colonne LIKE 'motif'
*/

-- Ensemble des clients dont le nom commence par la lettre 'C'
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE 'C%';

-- Ensemble des clients dont le nom commence par la lettre 'C' et qui finit par la lettre 'A'
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE 'C%A';

-- Ensemble des clients dont le nom commence par la lettre 'C' et que le prénom se finit par 'Y'
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE 'C%' AND Prenom LIKE '%Y';
    
-- Donner les noms des clients qui contiennent la lettre 'N'
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE '%N%';
    
-- Donner les prénoms de clients qui contiennent les lettres 'ATH'
SELECT 
    *
FROM
    clients
WHERE
    Prenom LIKE '%ATH%';