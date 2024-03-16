/*
Cours : SQL Tutorial
Lien : https://www.w3schools.com/sql/default.asp

Date : 16-03-24

======================================== SELECTION DE LA BASE DE DONNÉES ============================================
Pour sélectionner la BD sur laquelle on travaille :
Sur la fenêtre de gauche "SCHEMAS" clique droit sur la BD concernée : "Set as Default Schema" et la BD est en gras

======================================== RAFFRAICHISSEMENT ==========================================================
Pour rafraîchir la création des tables : 
Sur la fenêtre de gauche "SCHEMAS" clique droit sur "Tables" : "Refresh All"

======================================== AFFICHAGE DU MCD ============================================================
Pour afficher le MCD :
Menu "Database" puis "Reverse Engineer" puis Next... tout en sélectionnant la BD ciblée

======================================== IMPORTATION D'UN FICHIER .CSV (TABLE) ========================================
Pour importer un fichier .csv avec les tables déjà créées :
DE PREFERENCE IMPORTER TOUJOURS LA TABLE EN LIEN AVEC LES AUTRES TABLES EN DERNIER
Sur la fenêtre de gauche "SCHEMAS" clique droit sur la table ciblée : "Table Data Import Wizard" puis sélectionner 
le fichier .csv ciblé puis Next... tout en vérifier que les colonnes créées se recoupent avec les colonnes du fichier .csv

*/

-- Création de la table "clients"
CREATE TABLE clients (
    ClientID VARCHAR(8) PRIMARY KEY,
    Segment VARCHAR(255),
    Prenom VARCHAR(255),
    Nom VARCHAR(255)
);

-- Création de la table "produits"
CREATE TABLE produits (
    ProduitID VARCHAR(15) PRIMARY KEY,
    Produit VARCHAR(255),
    PrixUnitaire DOUBLE,
    Cout DOUBLE,
    Cat VARCHAR(255),
    SousCat VARCHAR(255)
);

-- Création de la table "commandes"
CREATE TABLE commandes (
    Cde VARCHAR(14) PRIMARY KEY,
    Dt DATE,
    Livraison DATE,
    ClientID VARCHAR(8),
    ProduitID VARCHAR(15),
    FOREIGN KEY (ClientID)
        REFERENCES clients (ClientID),
    FOREIGN KEY (ProduitID)
        REFERENCES produits (ProduitID),
    Qty INT,
    Rabais VARCHAR(255),
    ModeLivraison VARCHAR(255)
);
