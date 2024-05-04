/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Dans cette sixième partie d'exercices, nous nous intéresserons toujours au même sujet qui nous tient tous en haleine : le COVID-19. 
Dans cette nouvelle partie, nous travaillerons sur les différents types de vaccins. 

La table lpecom_covid_vaccin liste le nombre quotidien de personnes ayant reçu au moins une dose, par date d'injection, par département.
Il y a uniquement les données pour les différents départements de la région Ile-de-France. 
Les colonnes n_cum_dose1 et n_cum_dose2 s'occupent de cumuler le nombre d'injection.

La table lpecom_covid_vaccin_type liste les différents types de vaccins utilisés pour les injections.

Dans les tableaux, seul un extrait des données est affiché, donc toutes les lignes des tables ne sont pas listées. 
Pour rappel, il y a uniquement les données pour les différents départements de la région Ile-de-France.

Exercice 10 - Partie VI
Tables utilisées :
lpecom_covid_vaccin
lpecom_covid_vaccin_type
lpecom_departments
*/

-- Quelle requête utiliser pour afficher les départements (avec leur nom) qui possèdent un nombre d'injections deuxième dose 
-- avec le vaccin Moderna supérieur à 9000 (doses cumulées)
-- ou un nombre d'injections première dose (doses cumulées) avec le vaccin COMIRNATY Pfizer/BioNTech supérieur à 120000 
-- en date du 06-04-2021 ? 
-- Vous aurez besoin de deux jointures.
SELECT 
    v.dep_code, d.name, t.nom, v.n_cum_dose1, v.n_cum_dose2
FROM
    lpecom_covid_vaccin v
        JOIN
    lpecom_departments d ON v.dep_code = d.code
        JOIN
    lpecom_covid_vaccin_type t ON v.vaccin = t.id
WHERE
    ((v.vaccin = 2 AND v.n_cum_dose2 > 9000)
        OR (v.vaccin = 1 AND v.n_cum_dose1 > 120000))
        AND v.jour = '2021-04-06';
