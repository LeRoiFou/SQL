/*
Cours : SQL pour Débutant(e)s Jour 5 - Jointures, Sous-Requêtes, CASE
Lien : https://www.youtube.com/watch?v=kawRFZMQ-60

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL/Jour5

Date : 
00:52:40
============================================ Sous-requête FROM =========================================================
Utilisation de sous-requêtes dans la clause FROM pour créer des tables temporaires

Syntaxe :
SELECT colonne1, colonne2, ...
FROM (SELECT colonneA, colonneB FROM table2 WHERE condition) AS sub_table
WHERE sub_table.colonneA = condition;

Explication:
- La clause FROM avec sous-requête crée une vue temporaire 'sub_table' qui peut être utilisée 
comme n'importe quelle autre table dans la requête principale.
- La sous-requête dans FROM est souvent utilisée pour simplifier des requêtes complexes ou pour effectuer des pré-filtrages.

Conseil :
- Donnez des alias clairs aux sous-tables pour améliorer la lisibilité de vos requêtes.
- Préfiltrez autant que possible dans la sous-requête pour réduire la charge de traitement dans la requête principale.
/*