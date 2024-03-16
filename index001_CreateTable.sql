/*
Cours : SQL pour Débutant(e)s Jour 2 - Fondamentaux des Requêtes SQL
Lien : https://www.youtube.com/watch?v=bpRirgAiyhw&t=108s

Github le coin stat : https://github.com/LeCoinStat/LeCoinStat/tree/main/Bien_Debuter_SQL
Fichiers Github récupérés : https://github.com/LeCoinStat/LeCoinStat/blob/main/Bien_Debuter_SQL/Jour1/CreationTable

Date : 31-01-2024

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

-- Création de la table "Employe"
CREATE TABLE Employes (
	EmployeID int primary key,
	Nom varchar(255),
    Prenom varchar(255),
    Email varchar(255),
    NumeroTelephone varchar(255)
);

-- Création de la table "Fournisseurs"
create table Fournisseurs(
	FournisseurID int primary key,
    NomFournisseur varchar(255),
    Adresse varchar(255),
    Email varchar(255),
    NumeroTelephone varchar(255)
);

-- Création de la table "Clients"
CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(255),
    Prenom VARCHAR(255),
    Adresse VARCHAR(255),
    Email VARCHAR(255),
    NumeroTelephone VARCHAR(255)
);

-- Création de la table "Produits"
CREATE TABLE Produits (
    ProduitID INT PRIMARY KEY,
    NomProduit VARCHAR(255),
    DescProduit varchar(255),
    PrixUnitaire DECIMAL(10, 2),
    FournisseurID int,
    foreign key(FournisseurID) references Fournisseurs(FournisseurID)
);

-- Création de la table "Ventes"
CREATE TABLE Ventes (
    VenteID INT PRIMARY KEY,
    DateVente DATE,
    ClientID INT REFERENCES Clients(ClientID),
    ProduitID INT REFERENCES Produits(ProduitID),
    EmployeID int,
    foreign key(EmployeID) references Employes(EmployeID),
    foreign key(ClientID) references Clients(ClientID),
    foreign key(ProduitID) references Produits(ProduitID),
    QuantiteVendue INT,
    MontantTotal DECIMAL(10, 2)
);
