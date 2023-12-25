/*
Lien : https://www.w3schools.com/sql/sql_join_full.asp
Cours : SQL FULL OUTER JOIN Keyword

SYNTAXE :
SELECT column_name(s) FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name
WHERE condition;

Le mot-clé FULL OUTER JOIN renvoie tous les enregistrements lorsqu'il existe 
une correspondance dans les enregistrements des tables de gauche (table1) 
ou de droite (table2).

Astuce : FULL OUTER JOIN et FULL JOIN sont identiques.

Cette instruction ne semblerait pas marcher avec SQLITE

Date : 25-12-23
*/

-- SELECT * FROM clients LIMIT 5;

-- SELECT * FROM commandes LIMIT 5;

-- SELECT * FROM produits LIMIT 5;

SELECT Nom, Prénom, ModeLivraison FROM Clients
    FULL JOIN Produits ON clients.ClientID = Produits.ProdID
    WHERE Nom LIKE "G%" ORDER BY Nom;
