/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 2 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes que compte le département de l'Essonne ?
SELECT DISTINCT
    (COUNT(name)) AS NombreVilles
FROM
    lpecom_cities
WHERE
    department_code = 91;