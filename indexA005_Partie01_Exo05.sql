/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 5
*/

-- Quelle requête utiliser pour récupérer les livres de la table lpecom_livres qui ont un prix compris entre 20 et 22 ?
SELECT 
    *
FROM
    lpecom_livres
WHERE
    prix BETWEEN 20 AND 22;