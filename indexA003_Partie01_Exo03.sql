/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 3
*/

-- Quelle requête utiliser pour trier les enregistrements de la table lpecom_livres du prix le plus élevé aux prix le plus bas ?
SELECT 
    *
FROM
    lpecom_livres
ORDER BY prix DESC;