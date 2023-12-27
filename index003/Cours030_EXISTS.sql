/*
Lien : https://www.w3schools.com/sql/sql_exists.asp
Cours : SQL EXISTS Operator

SYNTAXE :
SELECT column_name(s) FROM table_name
    WHERE EXISTS
    (SELECT column_name FROM table_name WHERE condition);

L'opérateur EXISTS est utilisé pour vérifier l'existence d'un enregistrement 
dans une sous-requête.
L'opérateur EXISTS renvoie VRAI si la sous-requête renvoie un ou plusieurs 
enregistrements.

Date : 27-12-23
*/

-- ... bof, pas terrible...
SELECT Produit, PrixUnitaire FROM Produits
    WHERE EXISTS
    (SELECT Produit FROM Produits
        WHERE Produit LIKE 'Xerox%');
