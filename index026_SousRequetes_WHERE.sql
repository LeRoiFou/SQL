/*
Cours : SQL pour Débutant(e)s Jour 5 - Jointures, Sous-Requêtes, CASE
Lien : https://www.youtube.com/watch?v=kawRFZMQ-60

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour5

Date : 09-02-24

============================================ Sous-requête WHERE =========================================================
Utilisation de sous-requêtes dans la clause WHERE pour des filtres avancés.

Syntaxe :
SELECT colonne1, colonne2, ...
FROM table1
WHERE colonneX [NOT] IN (SELECT colonneY FROM table2 WHERE condition);

Explication:
- La clause WHERE avec sous-requête permet de filtrer les enregistrements de la requête principale 
en fonction des résultats de la sous-requête.
- L'opérateur [NOT] IN est utilisé pour inclure ou exclure les enregistrements correspondant aux valeurs retournées 
par la sous-requête.

Conseil :
- Utilisez des sous-requêtes dans WHERE pour des comparaisons qui nécessitent des ensembles de valeurs 
ou des conditions complexes.
- Assurez-vous que les sous-requêtes sont bien indexées pour éviter les performances lentes sur de grandes bases de données.
*/

-- Donner la liste des produits qui n'ont pas été vendus en 2023
SELECT 
    ProduitID, NomProduit
FROM
    produits
WHERE
    ProduitID NOT IN (SELECT 
            ProduitID
        FROM
            ventes
        WHERE
            YEAR(DateVente) = 2023);
            
-- Quels clients ont un historique d'achat supérieur à la moyenne des achats ?
SELECT 
    ClientID, Nom, Prenom, MontantTotal
FROM
    clients
        LEFT JOIN
    ventes USING (ClientID)
WHERE
    MontantTotal > (SELECT 
            AVG(MontantTotal)
        FROM
            ventes)
ORDER BY MontantTotal DESC;

-- Quels sont les noms des produits qui ont prix unitaire > à la moyenne de tous les produits ?
SELECT 
    ProduitID, NomProduit, PrixUnitaire
FROM
    produits
WHERE
    PrixUnitaire > (SELECT 
            AVG(PrixUnitaire)
        FROM
            Produits)
ORDER BY PrixUnitaire DESC;

-- Donner la liste des employés qui n'ont réalisé aucune vente durant le mois de décembre 2022
SELECT 
    EmployeID, Nom, Prenom
FROM
    employes
        LEFT JOIN
    ventes USING (EmployeID)
WHERE
    EmployeID NOT IN (SELECT 
            EmployeID
        FROM
            ventes
        WHERE
            YEAR(DateVente) = 2022
                AND MONTH(DateVente) = 12);
                
-- Liste des clients qui n'ont jamais réalisé d'achats
SELECT 
    ClientID,
    Nom,
    Prenom,
    COALESCE(SUM(MontantTotal), 0) AS TotalVentes
FROM
    clients
        LEFT JOIN
    ventes USING (ClientID)
WHERE
    ClientID NOT IN (SELECT 
            ClientID
        FROM
            ventes)
GROUP BY ClientID , Nom , Prenom
ORDER BY Nom ASC;