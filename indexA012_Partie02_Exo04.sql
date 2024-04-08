/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 4 - Partie II
Tables utilisées :
lpecom_etudiants
lpecom_examens
*/

-- Quelle requête utiliser pour récupérer la meilleure note de l'examen portant l'id : 87 ?
SELECT 
    MAX(note)
FROM
    lpecom_examens
WHERE
    id_examen = 87;