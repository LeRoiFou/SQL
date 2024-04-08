/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 5 - Partie II
Tables utilisées :
lpecom_etudiants
lpecom_examens
*/

-- Quelle requête utiliser pour afficher l'id des étudiants qui ont eu plus de 11 à l'examen 45 ou plus de 12 à l'examen 87 ?
SELECT 
    id_etudiant, id_examen, note
FROM
    indexa.lpecom_examens
WHERE
    (id_examen = 45 AND note > 11)
        OR (id_examen = 87 AND note > 12);