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

Exercice 05 - Partie VI
Tables utilisées :
lpecom_covid_vaccin
lpecom_covid_vaccin_type
lpecom_departments
*/

-- Sans jointure, quelle requête utiliser pour afficher le record de vaccination première dose avec un type de vaccin 
-- en une seule journée ? 
-- Avec une deuxième requête qui exploitera une jointure, afficher toutes les informations possibles pour cette journée record 
-- et sur le type de vaccin.
SELECT 
    MAX(n_dose1)
FROM
    lpecom_covid_vaccin
WHERE vaccin != 0;
    
SELECT 
    c.*, v.*
FROM
    lpecom_covid_vaccin c
        JOIN
    lpecom_covid_vaccin v ON c.vaccin = v.id
WHERE
    c.n_dose1 = 7494;
