/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Sujet d'actualité des années 2020 et 2021, la pandémie du COVID-19 va être au coeur de notre sujet pour cette nouvelle partie d'exercices.

La table lpecom_covid liste le nombre quotidien de personnes ayant reçu au moins une dose, par date d'injection, par région. 
Les colonnes n_cum_dose1 et n_cum_dose2 s'occupent de cumuler le nombre d'injection. 
Les colonnes couv_dose1 et couv_dose2 calculent la couverture vaccinale des régions chaque jour.

Dans les tableaux, seul un extrait des données est affiché, donc toutes les lignes des tables ne sont pas listées. 

Exercice 11 - Partie V
Tables utilisées :
lpecom_covid
lpecom_regions
*/

-- Quelle requête utiliser pour afficher les données de vaccination des régions (avec leur nom) qui possèdent 
-- une couveture vaccinale supérieure à 15 % pour la première dose et supérieure à 5 % pour la deuxième dose ?
SELECT 
    c.*, r.name
FROM
    lpecom_covid c
        JOIN
    lpecom_regions r ON (c.id_region = r.code)
WHERE
    c.couv_dose1 > 0.15
        AND c.couv_dose2 > 0.05;