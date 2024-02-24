/*
Cours : SQL pour Débutant(e)s Jour 4 -Jointures, Sous-Requêtes & Vues
Lien : https://www.youtube.com/watch?v=g9yC8pcdRFc&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=4

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour4

Date : 07-02-24

============================================ VIEW =========================================================
Syntaxe :
CREATE VIEW nom_vue AS
SELECT colonnes
FROM table1
JOIN table2 USING (colonne_commune);

L'instruction VIEW permet de créer une "table" enregistrée en tant que "variable" qui prend moins de mémoire
que de générer une table et permet d'être récupérer pour effectuer d'autres requêtes SQL dessus.
La vue créée se trouve dans le menu à gauche "SCHEMAS" (rafraîchir la base de données)
*/

-- Créez une vue des ventes ventes_2021 de l'année 2021
CREATE VIEW ventes_2021 AS
    SELECT 
        *
    FROM
        ventes
    WHERE
        YEAR(DateVente) = 2021;

-- À partir de la vue créée : ventes_2021, donner la liste des clients qui ont réalisé plus d'un achat en 2021
SELECT 
    ClientID, Nom, Prenom, COUNT(VenteID) AS NombreAchats
FROM
    clients
        LEFT JOIN
    ventes_2021 USING (ClientID)
GROUP BY ClientID , Nom , Prenom
HAVING NombreAchats > 1;

--  À partir de la vue créée : ventes_2021, donner la liste des employés qui ont réalisé des ventes moyennes supérieures à 500 en 2021
SELECT 
    EmployeID,
    Nom,
    Prenom,
    ROUND(AVG(MontantTotal), 2) AS VentesMoyennes
FROM
    ventes_2021
        JOIN
    employes USING (EmployeID)
GROUP BY EmployeID , Nom , Prenom
HAVING VentesMoyennes > 500
ORDER BY VentesMoyennes DESC;

-- Créer une vue contenant les produits dont le prix est > à 500 €
CREATE VIEW ventes_500 AS
    SELECT 
        *
    FROM
        produits
    WHERE
        PrixUnitaire > 500;

    