/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 10 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Quelle requête utiliser pour obtenir en résultat, les noms de la région, du département et de chaque ville du département 
-- ayant pour code 77 ?
SELECT 
    c.name AS commune, d.name AS departement, r.name AS region
FROM
    lpecom_cities c
        JOIN
    lpecom_departments d ON (c.department_code = d.code)
        JOIN
    lpecom_regions r ON (r.code = d.region_code)
WHERE
    department_code = 77;