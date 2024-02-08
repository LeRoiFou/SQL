/*
Cours : SQL pour Débutant(e)s Jour 5 - Jointures, Sous-Requêtes, CASE
Lien : https://www.youtube.com/watch?v=kawRFZMQ-60

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour5

Date : 08-02-24

============================================ CASE WHEN =========================================================
Syntaxe :
SELECT colonnes,
       CASE
           WHEN condition THEN resultat1
           ELSE resultat2
       END AS nom_colonne_resultat
FROM table;

Explication:
- SELECT colonnes : spécifie les colonnes à récupérer dans le résultat final, ainsi que la colonne conditionnelle.
- CASE WHEN condition THEN resultat1 ELSE resultat2 END : applique une logique conditionnelle sur les données récupérées. 
Si la condition est vraie, alors le 'resultat1' est retourné. Sinon, le 'resultat2' est utilisé.
- END AS nom_colonne_resultat : attribue un nom à la colonne résultante de l'expression CASE.

Cette instruction est utile pour transformer des données en fonction de conditions spécifiques directement 
dans la requête SQL, permettant de simplifier la logique de traitement des données et de réduire le besoin de logique 
conditionnelle dans l'application cliente.
*/

-- Écrire une requête SQL permettant de classifier pour chaque produit sa catégorie :
-- "Petit Budget" si le prixUnitaire est < 200 euros
-- "Moyen Budget" si le prixUnitaire est compris entre 200 et 500
-- "Grand Budget" si le prix unitaire est supérieur à 500 
SELECT 
    ProduitID,
    NomProduit,
    CASE
        WHEN PrixUnitaire < 200 THEN 'Petit Budget'
        WHEN
            PrixUnitaire >= 200
                AND PrixUnitaire < 500
        THEN
            'Moyen Budget'
        ELSE 'Grand Budget'
    END AS Categorie
FROM
    produits;

-- Écrire une requête permettant d'afficher pour chaque employe, son nom, son prénom, ainsi que 
-- le nombre de ventes réalisée et une variable qui indique si le nombre de vente est inférieur
-- à 50, ou compris entre 50 et 100, ou supérieur à 100
SELECT 
    EmployeID,
    Nom,
    Prenom,
    COUNT(VenteID) AS NbreVentes,
    CASE
        WHEN COUNT(VenteID) < 1 THEN 'Nullos'
        WHEN
            COUNT(VenteID) >= 1
                AND COUNT(VenteID) < 3
        THEN
            'Bon'
        ELSE 'Top'
    END AS 'Categorie'
FROM
    employes
        LEFT JOIN
    ventes USING (EmployeID)
GROUP BY EmployeID , Nom , Prenom
ORDER BY NbreVentes DESC , Nom ASC;

-- Créer une requête qui donne le nom du client, son prénom et sa catégorie :
-- Si le montant total des achats du client < 1 000 € : SILVER
-- Entre 1 000 € et 5 000 € : GOLD
-- Supérieur à 5 000 € : premium
SELECT 
    ClientID,
    Nom,
    Prenom,
    ROUND(COALESCE(SUM(MontantTotal), 0), 0) AS TotalAchats,
    CASE
        WHEN COALESCE(SUM(MontantTotal), 0) = 0 THEN 'Gros Bâtard'
        WHEN
            COALESCE(SUM(MontantTotal), 0) > 0
                AND SUM(MontantTotal) < 1000
        THEN
            'Silver'
        WHEN
            SUM(MontantTotal) BETWEEN 1000 AND 5000
        THEN
            'Gold'
        ELSE 'Premium'
    END AS Categorie
FROM
    clients
        LEFT JOIN
    ventes USING (ClientID)
GROUP BY ClientID , Nom , Prenom
ORDER BY TotalAchats DESC , Nom ASC;

