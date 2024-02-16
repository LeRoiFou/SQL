/*
Cours : [DLC] SQL pour Débutant(e)s Jour 7 - Synthèse et Techniques Avancées
Lien : https://www.youtube.com/watch?v=9Aj9X-j1Yys&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=7

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour7

Date : 16-02-24
============================================ LAST_VALUE =======================================

*/

-- Pour chaque client, quel était le dernier produit qu'il a acheté
SELECT ClientID, DateVente,
LAST_VALUE(ProduitID)
OVER(PARTITION BY ClientID -- Création autant de table que d'ID clients
	ORDER BY DateVente 
	ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING -- Récupération de toutes les lignes
	) AS ProduitID_DernierAchat
FROM ventes;
