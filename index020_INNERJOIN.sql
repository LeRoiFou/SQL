/*
Cours : SQL pour Débutant(e)s Jour 4 -Jointures, Sous-Requêtes & Vues
Lien : https://www.youtube.com/watch?v=g9yC8pcdRFc&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=4

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour4

Date : 05-02-2024

======================================== JOIN ==============================================
Syntaxe :
SELECT nom_colonne
FROM table1
JOIN table2
USING(colonne_commune);

Avec l'instruction JOIN, les identifiants sont communs aux deux tables
L'instruction ON affiche la colonne commune des deux tables à deux reprises si on demande d'afficher toutes les
colonnes des tables à la différence de l'instruction USING() -> dans ce cas, la colonne commune des deux tables
n'apparaît qu'une seule fois.
*/

-- Donner pour chaque vente, le nom et le prénom de l'employé qui réalisé la vente :
-- Première approche : produit cartésien
SELECT 
    *
FROM
    ventes,
    employes
WHERE
    ventes.EmployeID = employes.EmployeID;

-- Deuxième approche :  instruction JOIN()
SELECT 
    VenteID, nom, prenom
FROM
    ventes
        JOIN
    employes ON ventes.EmployeID = employes.EmployeID;

-- Utilisation de la fonction USING()
SELECT 
    VenteID, nom, prenom
FROM
    ventes
        JOIN
    employes USING (EmployeID);
    
-- Donner pour chaque produit de la base de données le nom, l'adresse et le n° de téléphone de son fournisseur
SELECT 
    NomProduit AS Produit,
    NomFournisseur AS Nom,
    Adresse,
    NumeroTelephone AS Telephone
FROM
    produits
        JOIN
    fournisseurs USING (FournisseurID)
ORDER BY Produit ASC , Nom ASC;

-- Donner le nom et prénom des employés ayant réalisé la somme des ventes les plus élevées
SELECT 
    Nom, Prenom, SUM(MontantTotal) AS TotalVentes
FROM
    employes
        JOIN
    ventes USING (EmployeID)
GROUP BY Nom , Prenom -- Récupération des colonnes de tables de dimension avant la colonne agrégée d'une table de faits
ORDER BY TotalVentes DESC;

-- Donner pour chaque client, le nom, le prénom, l'adresse ainsi que le nombre d'achats réalisé
SELECT 
    Nom, Prenom, Adresse, COUNT(MontantTotal) AS NombreAchats
FROM
    clients
        JOIN
    ventes USING (ClientID)
GROUP BY Nom , Prenom , Adresse -- Récupération des colonnes de tables de dimension avant la colonne agrégée
ORDER BY NombreAchats DESC;
