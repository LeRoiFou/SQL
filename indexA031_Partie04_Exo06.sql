/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 6 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Quelles villes possèdent un code postal (zip_code) compris entre 77210 et 77810 ?
SELECT 
    name, zip_code
FROM
    lpecom_cities
WHERE
    zip_code BETWEEN 77210 AND 77810;