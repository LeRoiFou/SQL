/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 1 - Partie III
Tables utilisées :
lpecom_realisateurs
lpecom_films
lpecom_films_notes
*/

-- Quel est le résultat de la requête ci-dessous ?
SELECT 
    id, prenom, nom
FROM
    lpecom_realisateurs
WHERE
    nation = 'us' AND sexe = 1;