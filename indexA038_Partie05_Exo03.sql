/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Sujet d'actualité des années 2020 et 2021, la pandémie du COVID-19 va être au coeur de notre sujet pour cette nouvelle partie d'exercices.

La table lpecom_covid liste le nombre quotidien de personnes ayant reçu au moins une dose, par date d'injection, par région. 
Les colonnes n_cum_dose1 et n_cum_dose2 s'occupent de cumuler le nombre d'injection. 
Les colonnes couv_dose1 et couv_dose2 calculent la couverture vaccinale des régions chaque jour.

Dans les tableaux, seul un extrait des données est affiché, donc toutes les lignes des tables ne sont pas listées. 

Exercice 03 - Partie V
Tables utilisées :
lpecom_covid
lpecom_regions
*/

-- Quelle requête utiliser pour afficher le nombre au cumulé de vaccination première dose toutes régions en 2020 ? 
-- Proposez également une solution pour les vaccination deuxième dose.
SELECT 
    SUM(n_dose1)
FROM
    lpecom_covid c
WHERE
    jour <= '2020-12-31';
    
SELECT 
    SUM(n_dose2)
FROM
    lpecom_covid c
WHERE
    jour <= '2020-12-31';
