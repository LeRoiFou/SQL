/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 7 - Partie III
Tables utilisées :
lpecom_realisateurs
lpecom_films
lpecom_films_notes
*/

-- Quel est le résultat de la requête ci-dessous ?
SELECT 
    r.nation, AVG(fn.note) AS moyenne_note
FROM
    lpecom_films f
        INNER JOIN
    lpecom_realisateurs r ON f.id_realisateur = r.id
        INNER JOIN
    lpecom_films_notes fn ON f.id = fn.id_film
WHERE
    r.nation = 'us';