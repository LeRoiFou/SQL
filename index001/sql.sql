-- Lien : https://www.youtube.com/watch?v=IBgWKTaG_Bs - 00:15:30
-- Cours : SQLite beginner crash course in Visual Studio Code - 2022
-- Date : 28/11/2023

-- Pour lancer l'instruction : CTRL + MAJ + P -> "SQLite : Run Query"
-- (raccourci pour run query : CTRL + MAJ + Q)

-- Pour afficher la base de données la 1ère fois : 
-- CTRL + MAJ + P -> "SQLite : Open Database"

-- Date : 28-11-2023

-- Création de la base de données
-- CREATE TABLE USERS (
-- username TEXT NOT NULL PRIMARY KEY, password NOT NULL, email NOT NULL);

-- Insertion d'une 1ère ligne dans la base de données
-- INSERT INTO USERS (username, password, email)
-- VALUES ("mike", "mypassword", "mike@yahoo.com");

-- Afficher tous les données de la base de données
-- SELECT * FROM USERS; 

-- Insertion d'une 2ème ligne dans la base de données
-- INSERT INTO USERS (username, password, email)
-- VALUES ("Joe", "joespassword", "joe@yahoo.com");

-- Affichage d'une colonne
-- SELECT password FROM USERS;

-- Affichage d'une donnée de la BD
-- SELECT password FROM USERS WHERE username = 'Joe';

-- Insertion d'une nouvelle ligne dans la base de données :
-- donnée insérée mais message d'erreur car données déjà existantes (sauf clé primaire)
-- INSERT INTO USERS (username, password, email)
-- VALUES ("Jack", "joespassword", "joe@yahoo.com");

-- Insertion d'une nouvelle ligne dans la BD : erreur car il ne peut y avoir
-- qu'une seule clé primaire par donnée ("Joe" déjà présent dans la BD)
-- INSERT INTO USERS (username, password, email)
-- VALUES ("Joe", "joespassword", "joe@yahoo.com");

-- Affichage selon certaines conditions
-- SELECT email FROM USERS
-- WHERE username IN ("Joe", "mike");

-- Affichage selon certaines conditions
-- SELECT email FROM USERS
-- WHERE username LIKE "m%";

-- Modification des données avec UPDATE
-- UPDATE USERS SET email="notmike@gmail.com"
-- WHERE username = "mike";

-- Suppression d'une données avec DELETE
-- DELETE FROM USERS 
-- WHERE username = "mike";
