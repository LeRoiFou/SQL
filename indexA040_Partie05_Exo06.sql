/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Sujet d'actualité des années 2020 et 2021, la pandémie du COVID-19 va être au coeur de notre sujet pour cette nouvelle partie d'exercices.

La table lpecom_covid liste le nombre quotidien de personnes ayant reçu au moins une dose, par date d'injection, par région. 
Les colonnes n_cum_dose1 et n_cum_dose2 s'occupent de cumuler le nombre d'injection. 
Les colonnes couv_dose1 et couv_dose2 calculent la couverture vaccinale des régions chaque jour.

Dans les tableaux, seul un extrait des données est affiché, donc toutes les lignes des tables ne sont pas listées. 

Exercice 06 - Partie V
Tables utilisées :
lpecom_covid
lpecom_regions
*/

-- Quelle requête SQL utiliser pour afficher le record de vaccination première dose en une seule journée ? 
-- Avec une deuxième requête, afficher les informations de la région concernée, dont son nom, ainsi que le jour du record.
SELECT 
    MAX(n_dose1)
FROM
    lpecom_covid;
    
SELECT 
    r.id, r.name, c.jour, c.n_dose1
FROM
    lpecom_covid c
        JOIN
    lpecom_regions r ON (c.id_region = r.code)
WHERE
    c.n_dose1 >= 56661;
