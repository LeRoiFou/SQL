/*
Cours : [DLC] SQL pour Débutant(e)s Jour 7 - Synthèse et Techniques Avancées
Lien : https://www.youtube.com/watch?v=9Aj9X-j1Yys&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=7

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour7

Date : 16-02-24
============================================ ROW_NUMBER =======================================
Rownumber : créer une requête qui permet d'afficher la table en ajouter le numéro de la ligne (index)
*/

-- Classer les ventes de la plus ancienne à la plus récente en ajoutant le numéro de ligne
SELECT *,
	ROW_NUMBER()
	OVER(ORDER BY DateVente) AS NumeroLigne
FROM ventes;

-- Classer les 3 ventes les plus importantes en ajoutant le numéro de ligne
SELECT *,
	ROW_NUMBER()
    OVER(ORDER BY MontantTotal DESC) AS NumLigne
FROM ventes
LIMIT 3;
