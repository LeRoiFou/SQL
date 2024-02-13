/*
Cours : [DLC] SQL pour Débutant(e)s Jour 6 - Les Outils Avancés 
Lien : https://www.youtube.com/watch?v=mc4zOX1j7_A&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=6

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour6

Date : 13-02-24
============================================ FONCTION DE FENETRAGE =======================================
Syntaxe :
SELECT colonnes
	FONCTION_DE_FENETRAGE() OVER (
		PARTITION BY colonne_de_partitionnement
        ORDER BY colonne_de_tr
        RANGE | ROWS BETWEEN debut AND fin
        ) AS nom_colonne_resultat
	FROM table;

Explication:
- SELECT colonnes: Spécifie les colonnes à récupérer dans le résultat final, incluant la colonne résultante 
de la fonction de fenêtrage.
- FONCTION_DE_FENETRAGE() OVER (...): Applique une fonction de fenêtrage à un ensemble de lignes.
- PARTITION BY colonne_de_partitionnement: Divise les données en partitions pour le traitement par la fonction de fenêtrage.
- ORDER BY colonne_de_tri: Détermine l'ordre des lignes dans chaque partition.
- RANGE | ROWS BETWEEN debut AND fin: Définit le cadre de lignes pour l'application de la fonction.
*/

-- Donner le classement des produits en fonction de la somme des quantités vendues
SELECT ProduitID, SUM(QuantiteVendue) AS NbVentes,
	RANK() -- Fonction de fenêtrage
    OVER(	
		ORDER BY SUM(QuantiteVendue) DESC) AS Classement
FROM ventes
GROUP BY ProduitID;

-- Donner le classement des employés qui ont réalisé le plus grand chiffre d'affaires
SELECT EmployeID, Nom, Prenom, ROUND(SUM(MontantTotal), 0) AS CAHT,
DENSE_RANK()
OVER(
	ORDER BY SUM(MontantTotal) DESC) AS Classement
FROM ventes
LEFT JOIN employes
USING(EmployeID)
GROUP BY EmployeID
ORDER BY CAHT DESC;
