/*
Cours : SQL pour Débutant(e)s Jour 4 -Jointures, Sous-Requêtes & Vues
Lien : https://www.youtube.com/watch?v=g9yC8pcdRFc&list=PLyh35eYRez8cAEBfi1LWN70Cs77bBvCOp&index=4

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour4

Date :

================================== COALESCE =========================================================
*/

-- Donner le nom, le prénom et la moyenne des ventes par clients 
-- et conserver les clients pour lesquels aucune vente n'a été réalisée : remplacer les valeurs nulles par 0
SELECT 
    Nom, Prenom, AVG(MontantTotal) AS MoyenneVentes
FROM
    clients
        LEFT JOIN
    ventes USING (ClientID)
GROUP BY Nom , Prenom -- Colonnes d'une table de dimension avant agrégation de la colonne d'une table de faits
ORDER BY MoyenneVentes ASC;