/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 6
*/

-- Quelle requête utiliser pour récupérer tous les livres de la table lpecom_livres à l'exception de celui portant 
-- la valeur pour la colonne isbn_10 : 2092589547 ?
SELECT 
    *
FROM
    lpecom_livres
WHERE
    isbn_10 NOT LIKE '2092589547';