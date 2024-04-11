/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 5 - Partie III
Tables utilisées :
lpecom_realisateurs
lpecom_films
lpecom_films_notes
*/

-- Quel est le résultat de la requête ci-dessous ?
SELECT 
    f.id, f.nom, fn.note
FROM
    lpecom_films f
        LEFT JOIN
    lpecom_films_notes fn ON f.id = fn.id_film
ORDER BY f.id ASC;