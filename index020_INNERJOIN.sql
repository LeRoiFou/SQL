/*
Cours : SQL pour Débutant(e)s Jour 4 -Jointures, Sous-Requêtes & Vues
Lien : https://www.youtube.com/watch?v=g9yC8pcdRFc&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=4

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour4

Date : 05-02-2024
Temps : 00:29:20

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
