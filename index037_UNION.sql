/*
Cours : [DLC] SQL pour Débutant(e)s Jour 7 - Synthèse et Techniques Avancées
Lien : https://www.youtube.com/watch?v=9Aj9X-j1Yys&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=7

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour7

Date : 17-02-24
============================================ UNION =======================================
La fonction UNION combine les résultats de deux requêtes en éliminant les doublons (fonction ensembliste)
Fonction similaire à une concaténation : on rajoute des lignes <-> rajout de colonnes avec les fusions (JOIN...)

Syntaxe :
SELECT colonne FROM table1
UNION
SELECT colonne FROM table2;

Explication:
- L'opérateur UNION est utilisé pour combiner les résultats de deux requêtes distinctes.
- Il élimine les lignes en double pour ne retourner que des lignes distinctes.
- Les deux requêtes doivent avoir le même nombre de colonnes dans le résultat, avec des types de données compatibles.

ATTENTION : cette instruction ne marche que lorsque les fichiers à "concaténer" sont différents !!!

UNION ALL à la différence d'UNION, n'élimine pas les doublons
*/

-- Donner une liste combinant tous les noms et prénoms des employés et des clients
SELECT Nom, Prenom
FROM employes 
UNION 
SELECT Nom, Prenom
FROM cients;

-- Même situation mais avec un CTE cette fois-ci :
WITH NomClients AS (
		SELECT Nom, Prenom
		FROM clients),
	NomEmployes AS(
		SELECT Nom, Prenom
		FROM employes)
    
SELECT * FROM NomClients
UNION
SELECT * FROM NomEmployes;

-- Donner une liste combinant tous les noms des employés, des clients et des fournisseurs
SELECT Nom
FROM employes
UNION
SELECT Nom
FROM clients
UNION
SELECT NomFournisseur AS Nom
FROM fournisseurs;
