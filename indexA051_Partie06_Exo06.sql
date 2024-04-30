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

Exercice 06 - Partie VI
Tables utilisées :
lpecom_covid_vaccin
lpecom_covid_vaccin_type
lpecom_departments
*/

-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination deuxième dose avec un type de vaccin
-- en une seule journée (code 0 : tous vaccins non admis) ? 
-- Avec une deuxième requête qui exploitera deux jointures, afficher toutes les informations possibles 
-- pour cette journée record, sur le type de vaccin et sur le département.

SELECT 
    MAX(n_dose2)
FROM
    lpecom_covid_vaccin
WHERE
    vaccin != 0;

SELECT 
    *
FROM
    lpecom_covid_vaccin v
        JOIN
    lpecom_covid_vaccin_type t ON v.vaccin = t.id
        JOIN
    lpecom_departments d ON v.dep_code = d.code
WHERE
    v.n_dose2 >= 5046 AND v.vaccin != 0;