/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Exercice 9 - Partie IV
Tables utilisées :
lpecom_cities
lpecom_departments
lpecom_regions
*/

-- Avec un seul WHERE et aucun OR, quelle est la requête permettant d'afficher les départements des régions ayant le code suivant : 
-- 75, 27, 53, 84 et 93 ? 
-- Le résultat doit afficher le nom du département ainsi que le nom et le slug de la région associée.
SELECT 
    d.name AS departement, r.name AS region, d.slug
FROM
    lpecom_departments d
        JOIN
    lpecom_regions r USING (code)
WHERE
    d.code IN (75 , 27, 53, 84, 93);