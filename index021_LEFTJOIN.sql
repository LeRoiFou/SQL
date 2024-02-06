/*
Cours : SQL pour Débutant(e)s Jour 4 -Jointures, Sous-Requêtes & Vues
Lien : https://www.youtube.com/watch?v=g9yC8pcdRFc&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=4

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour4

Date : 06-02-2024

======================================== LEFT JOIN / RIGHT JOIN ==============================================
Syntaxe :
SELECT nom_colonne
FROM table1_ciblee
LEFT JOIN / RIGHT JOIN table2
USING(colonne_commune);

Les différentes jointures : https://sql.sh/2401-sql-join-infographie
*/

-- Donner pour chaque employé, le nom, le prénom et le nombre de ventes réalisées
-- et il faut conserver les employés qui n'ont réalisé aucune vente
SELECT 
    EmployeID, Nom, Prenom, COUNT(VenteID) AS NombreVentes
FROM
    employes
        LEFT JOIN
    ventes USING (EmployeID)
GROUP BY EmployeID , Nom , Prenom
ORDER BY NombreVentes ASC , Nom ASC;

-- Donner pour chaque fournisseur, son nom, son email et le nombre de produits fournis
-- et conserver les fournisseurs qui ne fournisseurs aucun produit
SELECT 
    FournisseurID,
    NomFournisseur AS Nom,
    Email,
    COUNT(ProduitID) AS NombreProduits
FROM
    fournisseurs
        LEFT JOIN
    produits USING (FournisseurID)
GROUP BY FournisseurID , Nom , Email
ORDER BY NombreProduits ASC , Nom ASC;
