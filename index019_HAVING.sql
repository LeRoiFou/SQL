/*
Cours : SQL pour Débutant(e)s Jour 3 - Approfondissement des Requêtes SQL
Lien : https://www.youtube.com/watch?v=4Ro69oqZ20s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour3

Date : 03-02-2024

======================================== Fonctions d'agrégation : HAVING =====================================
Les fonctions d'agrégation récupèrent un ensemble de valeurs pour en restituer une seule

Syntaxe:
SELECT nom_colonne1, nom_colonneX
FROM nom_table
GROUP BY nom_colonne1, nom_colonneX
HAVING condition;

La fonction HAVING() remplace la fonction WHERE() quand on utilise GROUP BY() : l'ordre d'exécution SQL n'est pas le 
même que celui effectué par le programme
*/

-- Liste des employés qui réalisent chaque année une moyenne du CAHT > à 1 000 € 
SELECT 
    EmployeID,
    YEAR(DateVente) AS Annee,
    AVG(MontantTotal) AS MoyenneCA
FROM
    ventes
GROUP BY EmployeID , Annee
HAVING MoyenneCA > 1000
ORDER BY EmployeID ASC , MoyenneCA DESC;
