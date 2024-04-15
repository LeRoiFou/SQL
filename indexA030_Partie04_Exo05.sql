/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 5 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes commençant par "Saint-" en Seine-et-Marne ?
SELECT 
    DISTINCT(COUNT(name)) AS nb_cities
FROM
    lpecom_cities
WHERE
    department_code = 77
        AND name LIKE 'Saint-%';