/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 6 - Partie II
Tables utilisées :
lpecom_etudiants
lpecom_examens
*/

-- Quelle requête utiliser pour afficher tous les enregistrement de la table lpecom_examens avec en plus, 
-- si c'est possible, le prenom et le nom de l'étudiant ?
SELECT 
    *
FROM
    lpecom_examens
        LEFT JOIN
    lpecom_etudiants USING (id_etudiant);
    