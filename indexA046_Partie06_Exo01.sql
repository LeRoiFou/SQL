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

Exercice 01 - Partie VI
Tables utilisées :
lpecom_covid_vaccin
lpecom_covid_vaccin_type
lpecom_departments
*/

-- Sans jointure, quelle requête SQL utiliser pour afficher toutes les données de vaccination du 14 février 2021 uniquement, 
-- pour le département de Seine-et-Marne (77) ?
SELECT 
    *
FROM
    lpecom_covid_vaccin
WHERE
    dep_code = 77 AND jour = '2021-02-14';