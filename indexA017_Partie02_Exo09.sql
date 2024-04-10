/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 9 - Partie II
Tables utilisées :
lpecom_etudiants
lpecom_examens
*/

-- Quelle requête utiliser pour afficher les 3 meilleures examens, du meilleur au moins bon, 
-- avec le prenom et le nom de l'étudiant associé ?
SELECT 
    *
FROM
    lpecom_etudiants
        JOIN
    lpecom_examens USING (id_etudiant)
ORDER BY note DESC
LIMIT 3;