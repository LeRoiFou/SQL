/*
Cours : [DLC] SQL pour Débutant(e)s Jour 6 - Les Outils Avancés 
Lien : https://www.youtube.com/watch?v=mc4zOX1j7_A&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=6

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour6

Date : 15-02-24
============================================ LAG =======================================
Syntaxe :
LAG(expression, differentiel, index_reference)
*/

-- Créer une colonne sur l'évolution du CA année par année par taux de croissance

-- 1ère étape : calculer le CA par année
SELECT 
    YEAR(DateVente) AS Annee, ROUND(SUM(MontantTotal), 0) AS CA
FROM
    ventes
GROUP BY Annee
ORDER BY Annee;

-- 2ème étape : évolution du CA par année
SELECT 
    YEAR(DateVente) AS Annee, 
    ROUND(SUM(MontantTotal), 0) AS CA,
    ROUND(SUM(MontantTotal), 0) - LAG(ROUND(SUM(MontantTotal), 0), 1, 0)
    OVER(ORDER BY YEAR(DateVente)) AS Diff
FROM ventes
GROUP BY Annee;

-- 3ème étape : détermination du taux de croissance
SELECT 
    YEAR(DateVente) AS Annee, 
    ROUND(SUM(MontantTotal), 0) AS CA,
    (ROUND(SUM(MontantTotal), 0) - LAG(ROUND(SUM(MontantTotal), 0), 1, 0)
    OVER(ORDER BY YEAR(DateVente))) / LAG(ROUND(SUM(MontantTotal), 0), 1, 0) OVER(ORDER BY YEAR(DateVente)) AS TxCroissance
FROM ventes
GROUP BY Annee;


-- Quel est le montant total des ventes par trimestre et par année et comment le CA évolue d'un trimestre à l'autre

-- 1ère étape : détermination du CA par trimestre et par année
SELECT YEAR(DateVente) AS Annee, QUARTER(DateVente) AS Trimestre, SUM(MontantTotal) AS CA
FROM ventes
GROUP BY Annee, Trimestre
ORDER BY Annee, Trimestre;

-- 2ème étape : évolution du CA par trimestre et par année
SELECT 
	YEAR(DateVente) AS Annee, 
    QUARTER(DateVente) AS Trimestre, 
    SUM(MontantTotal) AS CA,
    SUM(MontantTotal) - LAG(SUM(MontantTotal), 1, 0) 
    OVER (ORDER BY YEAR(DateVente), QUARTER(DateVente)) AS Diff
FROM ventes
GROUP BY Annee, Trimestre
ORDER BY Annee, Trimestre;

-- 3ème étape : détermination du taux de croissance du CA
SELECT 
	YEAR(DateVente) AS Annee, 
    QUARTER(DateVente) AS Trimestre, 
    SUM(MontantTotal) AS CA,
    (SUM(MontantTotal) - LAG(SUM(MontantTotal), 1, 0) 
    OVER (ORDER BY YEAR(DateVente), QUARTER(DateVente))) / LAG(SUM(MontantTotal), 1, 0) 
    OVER(ORDER BY YEAR(DateVente), QUARTER(DateVente)) AS TxCroissance
FROM ventes
GROUP BY Annee, Trimestre
ORDER BY Annee, Trimestre;
