/*
Cours : [DLC] SQL pour Débutant(e)s Jour 7 - Synthèse et Techniques Avancées
Lien : https://www.youtube.com/watch?v=9Aj9X-j1Yys&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=7

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour7

Date : 16-02-24
============================================ CTE =======================================
Une autre manière de faite des sous-requêtes sous SQL mais de manière plus lisible
L'avantage des CTE est que rien n'est stocké

Syntaxe:
WITH Nom_CTE AS (
	-- Requête de la CTE ici
)
SELECT * FROM Nom_Cte;
*/

-- Écrire une requête qui permet d'obtenir le top 3 des meilleurs clients (en terme de CA) par année

-- Étape 1 : CA annuel par client
SELECT 
    ClientID, Nom, Prenom, YEAR(DateVente) AS Annee, SUM(MontantTotal) CA
FROM
    ventes
JOIN
    clients USING (ClientID)
GROUP BY ClientID , Nom , Prenom , Annee;

-- Étape 2 : classement par année
SELECT 
    ClientID, Nom, Prenom, YEAR(DateVente) AS Annee, SUM(MontantTotal) CA,
RANK()
OVER(PARTITION BY YEAR(DateVente) ORDER BY SUM(MontantTotal)) AS Classement
FROM
    ventes
JOIN
    clients USING (ClientID)
GROUP BY ClientID , Nom , Prenom , Annee;

-- Étape 3 : les 3 meilleurs clients par année -> hypothèse 1 : création d'une vue
CREATE VIEW Temp AS (
SELECT 
    ClientID, Nom, Prenom, YEAR(DateVente) AS Annee, SUM(MontantTotal) CA,
RANK()
OVER(PARTITION BY YEAR(DateVente) ORDER BY SUM(MontantTotal)) AS Classement
FROM
    ventes
JOIN
    clients USING (ClientID)
GROUP BY ClientID , Nom , Prenom , Annee) ;

SELECT * 
FROM Temp
WHERE Classement BETWEEN 1 AND 3;

-- Étape 3 : les 3 meilleurs clients par année -> hypothèse 2 : création d'une sous-requête
SELECT *
FROM (SELECT 
    ClientID, Nom, Prenom, YEAR(DateVente) AS Annee, SUM(MontantTotal) CA,
RANK()
OVER(PARTITION BY YEAR(DateVente) ORDER BY SUM(MontantTotal)) AS Classement
FROM
    ventes
JOIN
    clients USING (ClientID)
GROUP BY ClientID , Nom , Prenom , Annee) AS Temp
WHERE Classement BETWEEN 1 AND 3;

-- Étape 3 : les 3 meilleurs clients par année -> hypothèse 3 : les CTE
WITH TempCA AS(
SELECT 
    ClientID, Nom, Prenom, YEAR(DateVente) AS Annee, SUM(MontantTotal) CA,
RANK()
OVER(PARTITION BY YEAR(DateVente) ORDER BY SUM(MontantTotal)) AS Classement
FROM
    ventes
JOIN
    clients USING (ClientID)
GROUP BY ClientID , Nom , Prenom , Annee
)
SELECT * 
FROM TempCA
WHERE Classement BETWEEN 1 AND 3;

-- Liste des clients qui ont dépensé plus que la moyenne des dépenses de tous les clients

-- Étape 1 : Moyenne des achats de tous les clients
SELECT 
    AVG(MontantTotal) AS Moyenne
FROM
    ventes;
    
-- Étape 2 : Liste des clients qui ont dépensé plus que la moyenne des achats
WITH Temp_avg AS(
	SELECT ClientID, SUM(MontantTotal) AS CA
	FROM ventes
	GROUP BY ClientID)
SELECT *
FROM Temp_avg
WHERE CA > (
	SELECT AVG(MontantTotal) AS Moyenne
	FROM ventes)
ORDER BY CA DESC;