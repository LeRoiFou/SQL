/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 4 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Combien de villes possèdent le code postal (zip_code) 77320 ? Renommez la colonne de résultat n_cities.
SELECT 
    COUNT(zip_code) AS n_cities
FROM
    lpecom_cities
WHERE
    zip_code = 77320;