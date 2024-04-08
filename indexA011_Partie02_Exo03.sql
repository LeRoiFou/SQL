/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 3 - Partie II
Tables utilisées :
lpecom_etudiants
lpecom_examens
*/

-- Quelle requête utiliser pour calculer la moyenne de l'examen portant l'id : 45 ?
SELECT 
    AVG(note)
FROM
    lpecom_examens
WHERE
    id_examen = 45;