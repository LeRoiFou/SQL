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

Exercice 07 - Partie VI
Tables utilisées :
lpecom_covid_vaccin
lpecom_covid_vaccin_type
lpecom_departments
*/

-- Quelle requête permet de savoir quel département possède le plus grand nombre d'injections première dose 
-- (doses cumulées) pour le vaccin AstraZeneka ?
-- Avec une deuxième requête, afficher uniquement les colonnes suivantes :
-- le nom du vaccin ;
-- le jour ;
-- le nom et le code du département ;
-- le nombre cumulé d'injections.
SELECT 
    dep_code, jour, MAX(n_cum_dose1) AS Max
FROM
    lpecom_covid_vaccin
WHERE
    vaccin = 3
GROUP BY dep_code , jour
ORDER BY Max DESC;

SELECT 
    t.nom, v.jour, d.name, d.code, v.n_cum_dose1
FROM
    lpecom_covid_vaccin_type t
        JOIN
    lpecom_covid_vaccin v ON t.id = v.vaccin
        JOIN
    lpecom_departments d ON v.dep_code = d.code
WHERE
    v.vaccin = 3 AND v.n_cum_dose1 >= 122709;