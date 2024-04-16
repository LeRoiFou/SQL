/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 8 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Quel est le code postal (zip_code) le plus grand de la table lpecom_cities ?
SELECT 
    MAX(zip_code)
FROM
    lpecom_cities;