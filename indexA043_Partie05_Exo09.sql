/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Sujet d'actualité des années 2020 et 2021, la pandémie du COVID-19 va être au coeur de notre sujet pour cette nouvelle partie d'exercices.

La table lpecom_covid liste le nombre quotidien de personnes ayant reçu au moins une dose, par date d'injection, par région. 
Les colonnes n_cum_dose1 et n_cum_dose2 s'occupent de cumuler le nombre d'injection. 
Les colonnes couv_dose1 et couv_dose2 calculent la couverture vaccinale des régions chaque jour.

Dans les tableaux, seul un extrait des données est affiché, donc toutes les lignes des tables ne sont pas listées. 

Exercice 09 - Partie V
Tables utilisées :
lpecom_covid
lpecom_regions
*/

-- Quelle requête utiliser pour afficher le nom de la région qui a le plus faible taux de couverture de vaccination 
-- avec une dose le 06-04-2021 ?
-- Vous aurez besoin de 2 requêtes pour répondre à la question.
SELECT 
    MIN(couv_dose1)
FROM
    lpecom_covid
WHERE jour = "2021-04-06";

SELECT 
    c.*, r.name
FROM
    lpecom_covid c
        JOIN
    lpecom_regions r ON (c.id_region = r.code)
WHERE
    c.couv_dose1 <= 2.80
        AND c.jour = '2021-04-06';