/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 3 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Sans jointure, quelle requête utiliser pour calculer le nombre de villes en Île-de-France se terminant par "-le-Roi" ?
SELECT DISTINCT
    (COUNT(name)) AS NombreVilles
FROM
    lpecom_cities
WHERE
    department_code IN (75 , 77, 78, 91, 92, 93, 94, 95)
        AND name LIKE '%-le-Roi';