/*
Cours :SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== ASTUCE POUR LIKE ===========================================

*/

-- Donner la liste des clients dont le nom contient une seule fois la lettre A
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE '%A%' AND Nom NOT LIKE '%A%A%';

-- Contient deux occurrences de la lettre A
SELECT 
    *
FROM
    clients
WHERE
    Nom LIKE '%A%A%';
