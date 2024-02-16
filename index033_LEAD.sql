/*
Cours : [DLC] SQL pour Débutant(e)s Jour 7 - Synthèse et Techniques Avancées
Lien : https://www.youtube.com/watch?v=9Aj9X-j1Yys&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=7

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour7

Date : 16-02-24
============================================ LAG =======================================
À la différence de la fonction LAG, la fonction LEAD permet d'avoir la donnée suivante
*/

-- Ajouter pour chaque année, une colonne avec le CA de l'année précédente et une colonne avec le CA de l'année suivante
SELECT 
    YEAR(DateVente) AS Annee, SUM(MontantTotal) AS CA,
    LAG(SUM(MontantTotal), 1, 0) -- CA de l'année précédente
    OVER(ORDER BY YEAR(DateVente)) AS CA_Precedent,
    LEAD(SUM(MontantTotal), 1, 0) -- CA de l'année suivante
    OVER(ORDER BY YEAR(DateVente)) AS CA_Suivant
FROM
    ventes
GROUP BY Annee;
