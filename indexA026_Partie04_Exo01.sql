/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 1 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Quelle requête utiliser pour retrouver la ville qui possède les coordonnées GPS suivantes : 48.66913724637683, 1.87586057971015 ?
SELECT 
    name
FROM
    lpecom_cities
WHERE
    gps_lat = 48.66913724637683
        AND gps_lng = 1.87586057971015;