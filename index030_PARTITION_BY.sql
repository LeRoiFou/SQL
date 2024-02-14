/*
Cours : [DLC] SQL pour Débutant(e)s Jour 6 - Les Outils Avancés 
Lien : https://www.youtube.com/watch?v=mc4zOX1j7_A&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=6

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour6

Date : 14-02-24
============================================ PARTITION BY =======================================
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

-- Donner le top 3 des meilleurs vendeurs en terme de CA par année (DENSE_RANK)

-- 1ère étape : CA par année et par employe
SELECT EmployeID, YEAR(DateVente) AS Annee, ROUND(SUM(MontantTotal), 0) AS CA
FROM ventes
GROUP BY EmployeID , Annee
ORDER BY CA DESC;

-- 2ème étape : répartition par année avec l'instruction PARTITION
SELECT EmployeID, YEAR(DateVente) AS Annee, ROUND(SUM(MontantTotal), 0) AS CA,
	DENSE_RANK() -- classement avec doublons évités avec DENSE_RANK()
    OVER (PARTITION BY YEAR(DateVente) -- Répartition par année
			ORDER BY SUM(MontantTotal) DESC) AS Classement -- Classement par trie décroissant du CA
FROM ventes
GROUP BY EmployeID , Annee;

-- 3ème étape - hypothèse 1 : récupération de la requête ci-avant en tant que sous requête
SELECT EmployeID, Nom, Prenom, Annee, CA, Classement
FROM
	(SELECT EmployeID, YEAR(DateVente) AS Annee, ROUND(SUM(MontantTotal), 0) AS CA,
	DENSE_RANK() -- classement avec doublons évités avec DENSE_RANK()
	OVER (PARTITION BY YEAR(DateVente) -- Répartition par année
			ORDER BY SUM(MontantTotal) DESC) AS Classement -- Classement par trie décroissant du CA
	FROM ventes
	GROUP BY EmployeID , Annee) AS temp -- requête de l'étape ci-avant transformée en sous-requête
JOIN employes
USING(EmployeID)
WHERE Classement BETWEEN 1 AND 3;

-- 3ème étape - hypothèse 2 : récupération de la requête ci-avant créée en tant que vue
CREATE VIEW classement AS -- Création de la vue
SELECT EmployeID, YEAR(DateVente) AS Annee, ROUND(SUM(MontantTotal), 0) AS CA,
DENSE_RANK() -- classement avec doublons évités avec DENSE_RANK()
OVER (PARTITION BY YEAR(DateVente) -- Répartition par année
		ORDER BY SUM(MontantTotal) DESC) AS Classement -- Classement par trie décroissant du CA
FROM ventes
GROUP BY EmployeID , Annee;

SELECT EmployeID, Nom, Prenom, Annee, CA, Classement
FROM Classement -- Récupération de la vue
JOIN employes
USING(EmployeID)
WHERE Classement BETWEEN 1 AND 3;


-- Donner le top 3 des meilleurs clients en terme de chiffre d'affaires par année et par trimestre

-- Étape 1 : CA par trimestre par client
SELECT 
	ClientID, 
    YEAR(DateVente) AS Annee, 
    QUARTER(DateVente) AS Trimestre, 
    ROUND(COALESCE(AVG(MontantTotal), 0), 0) AS CA
FROM ventes
GROUP BY ClientID, Annee, Trimestre;

-- Étape 2 : classement
SELECT 
	ClientID, 
    YEAR(DateVente) AS Annee, 
    QUARTER(DateVente) AS Trimestre, 
    ROUND(COALESCE(AVG(MontantTotal), 0), 0) AS CA,
	DENSE_RANK()
	OVER(PARTITION BY 
		YEAR(DateVente), 
		QUARTER(DateVente)
	ORDER BY ROUND(COALESCE(AVG(MontantTotal), 0), 0) DESC) AS Classement
FROM ventes
GROUP BY ClientID, Annee, Trimestre;

-- Étape 3 : sous-requête
SELECT 
	ClientID, 
    Nom, 
    Prenom, 
    Annee, 
    Trimestre,
    CA
FROM (
	SELECT 
		ClientID, 
		YEAR(DateVente) AS Annee, 
		QUARTER(DateVente) AS Trimestre, 
		ROUND(COALESCE(AVG(MontantTotal), 0), 0) AS CA,
		DENSE_RANK()
		OVER(PARTITION BY 
			YEAR(DateVente), 
            QUARTER(DateVente)
		ORDER BY ROUND(COALESCE(AVG(MontantTotal), 0), 0) DESC) AS Classement
		FROM ventes
		GROUP BY ClientID, Annee, Trimestre) AS temp
JOIN clients
USING(ClientID)
WHERE Classement BETWEEN 1 AND 3;