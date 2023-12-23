/*
Lien : https://www.w3schools.com/sql/sql_join_inner.asp
Cours : SQL INNER JOIN

SYNTAXE :
SELECT column_name(s) FROM table1
    INNER JOIN table2 ON table1.column_name = table2.column_name;

Le mot-clé INNER JOIN sélectionne les enregistrements dont les valeurs 
correspondent dans les deux tables.

Date : 23-12-2023   
*/

-- SELECT * FROM clients LIMIT 5;

-- SELECT * FROM commandes LIMIT 5;

-- SELECT * FROM produits LIMIT 5;

-- Fusion entre les tables clients et commandes : recoupement avec la clé ClientID :
-- Affichage du nom, prénom, référence client et n° de commande du client
-- SELECT Nom, Prénom, commandes.ClientID, Commandes.Cde FROM Clients
--     INNER JOIN Commandes ON Clients.ClientID = Commandes.ClientID;

-- Fusion entre 3 tables :
-- Affichage du nom et du prénom client de la table clients
-- Affichage du n° de commande de la table commandes
-- Affichage du produit de la table produits
SELECT Nom, Prénom, Commandes.Cde, Produits.Produit FROM Clients
    INNER JOIN Commandes ON clients.ClientID = Commandes.ClientID
    INNER JOIN Produits ON Commandes.ProduitID = Produits.ProdID;
