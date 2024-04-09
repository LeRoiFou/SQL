/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 8 - Partie II
Tables utilisées :
lpecom_etudiants
lpecom_examens
*/

-- Quelle requête utiliser pour afficher uniquement le nom et le prenom de l'étudiant avec l'id : 30 
-- avec la moyenne de ses deux examens dans une colonne moyenne ?
SELECT 
    nom, prenom, AVG(note) AS moyenne
FROM
    lpecom_etudiants
        JOIN
    lpecom_examens USING (id_etudiant)
WHERE
    id_etudiant = 30;