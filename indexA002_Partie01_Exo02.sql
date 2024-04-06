/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 2
*/

-- Quelle requête utiliser pour sélectionner uniquement les livres qui ont un prix strictement supérieur à 20 de la table lpecom_livres ?
SELECT 
    *
FROM
    lpecom_livres
WHERE
    prix > 20;