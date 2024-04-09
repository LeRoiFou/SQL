/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 7 - Partie II
Tables utilisées :
lpecom_etudiants
lpecom_examens
*/

-- Quelle requête utiliser pour afficher les enregistrement de la table lpecom_examens avec le prenom et le nom de l'étudiant, 
-- uniquement quand les étudiants sont présents dans la table lpecom_etudiants ?
SELECT 
    *
FROM
    lpecom_etudiants
        JOIN
    lpecom_examens USING (id_etudiant);