/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 7 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Sans jointure, quelles sont les deux villes de Seine-et-Marne à avoir le code postal (zip_code) le plus grand ?
SELECT 
    name, zip_code
FROM
    lpecom_cities
WHERE
    department_code = 77
ORDER BY zip_code DESC
LIMIT 2;