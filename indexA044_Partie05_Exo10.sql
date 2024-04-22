/*
Lien : https://aymeric-auberton.fr/academie/mysql/exercices

Sujet d'actualité des années 2020 et 2021, la pandémie du COVID-19 va être au coeur de notre sujet pour cette nouvelle partie d'exercices.

La table lpecom_covid liste le nombre quotidien de personnes ayant reçu au moins une dose, par date d'injection, par région. 
Les colonnes n_cum_dose1 et n_cum_dose2 s'occupent de cumuler le nombre d'injection. 
Les colonnes couv_dose1 et couv_dose2 calculent la couverture vaccinale des régions chaque jour.

Dans les tableaux, seul un extrait des données est affiché, donc toutes les lignes des tables ne sont pas listées. 

Exercice 10 - Partie V
Tables utilisées :
lpecom_covid
lpecom_regions
*/

-- Quelle requête utiliser pour calculer la couverture moyenne entre les différentes régions à la date la plus récente, 
-- pour les vaccinations une et deux doses ? Vous renommez les colonnes de résultats : 
-- couverture_dose1_avg et couverture_dose2_avg.

SELECT 
    r.name,
    AVG(c.couv_dose1) AS couverture_dose1_avg,
    AVG(c.couv_dose2) AS couverture_dose2_avg
FROM
    lpecom_covid c
        JOIN
    lpecom_regions r ON (c.id_region = r.code)
GROUP BY r.name;