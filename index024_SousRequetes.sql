/*
Cours : SQL pour Débutant(e)s Jour 4 -Jointures, Sous-Requêtes & Vues
Lien : https://www.youtube.com/watch?v=g9yC8pcdRFc&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=4

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour4

Date : 07-02-24

============================================ Sous-requêtes =========================================================
Une sous-requête est une requête effectuée à l'intérieure d'une requête
*/

-- Donner la liste des clients qui n'ont réalisé aucun achats
SELECT 
    *
FROM
    clients
WHERE
    ClientID NOT IN (SELECT 
            ClientID
        FROM
            ventes);
            
-- Donner la liste des employés qui ont réalisé au moins une vente
SELECT 
    *
FROM
    employes
WHERE
    EmployeID IN (SELECT 
            EmployeID
        FROM
            ventes);