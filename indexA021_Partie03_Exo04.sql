/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 4 - Partie III
Tables utilisées :
lpecom_realisateurs
lpecom_films
lpecom_films_notes
*/

-- Quel est le résultat de la requête ci-dessous ?
SELECT 
    f.id, f.nom AS film, r.prenom, r.nom
FROM
    lpecom_films f
        LEFT JOIN
    lpecom_realisateurs r ON f.id_realisateur = r.id
ORDER BY f.id ASC;