/*
Lien : https://www.w3schools.com/sql/sql_join_right.asp
Cours : SQL RIGHT JOIN Keyword

SYNTAXE :
SELECT column_name(s) FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name;

Le mot-clé RIGHT JOIN renvoie tous les enregistrements de la table de droite (table2)
et les enregistrements correspondants de la table de gauche (table1). 
Le résultat est 0 enregistrement du côté gauche, s'il n'y a pas de correspondance.

Cette instruction ne semblerait pas marcher avec SQLITE

Date : 24-12-23
*/

-- SELECT * FROM clients LIMIT 5;

-- SELECT * FROM commandes LIMIT 5;

-- SELECT * FROM produits LIMIT 5;

-- Afficher les n° commandes recoupées au nom / prénom client avec la clé
-- CLIENTID, et si le n° de commande n'est pas recoupé, alors remplir cette 
-- colonne par la valeur NULL
SELECT ProdID, Cde FROM Produits
    RIGHT JOIN Commandes ON Produits.ProdID = Commandes.ProduitID;
