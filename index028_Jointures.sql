/*
Cours : SQL pour Débutant(e)s Jour 5 - Jointures, Sous-Requêtes, CASE
Lien : https://www.youtube.com/watch?v=kawRFZMQ-60

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour5

Date : 10-02-24
============================================ Jointures =========================================================
Jointures de plusieurs tables simultanément

*/
-- Lister les noms des employés avec le détail des prodduits et les informations sur les clients 
-- ayant réalisé la vente
SELECT *
FROM employes
	LEFT JOIN ventes USING (EmployeID)
	LEFT JOIN produits USING (ProduitID);

-- Donner la liste des noms des fournisseurs, des noms des produits et les noms des clients
-- pour tous les produits qui ont été achetés + de 2 fois
SELECT * 
FROM
	(SELECT ProduitID, COUNT(VenteID) AS NbProduit
	FROM ventes 
    GROUP BY ProduitID
	HAVING NbProduit > 2) as t
JOIN produits USING (ProduitID)
JOIN ventes USING(ProduitID)
JOIN clients USING(ClientID)
ORDER BY NbProduit DESC, MontantTotal DESC;
