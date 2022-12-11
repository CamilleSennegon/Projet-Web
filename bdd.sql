-- ----------------------------------------------
-- Nom de la base de donnees : Omnes Market --
-- SGBD : MySql --
-- Destruction des tables
create database OmnesMarket;
use OmnesMarket;
DROP TABLE IF EXISTS Item ;
DROP TABLE IF EXISTS Vendeur ;
DROP TABLE IF EXISTS Administrateur ;
DROP TABLE IF EXISTS Acheteur ;
DROP TABLE IF EXISTS Panier ;
DROP TABLE IF EXISTS Livraison ;
DROP TABLE IF EXISTS Enchère ;
DROP TABLE IF EXISTS Paiement ;
DROP TABLE IF EXISTS Adresse ;

CREATE TABLE Item (
 Numero_id decimal(6,0) NOT NULL,
 Nom varchar(20),
 Description varchar(100),
 Prix decimal(4,0),
 PRIMARY KEY (Numero_id)
)Engine='InnoDB';

CREATE TABLE Vendeur (
 Email varchar(40),
 Login varchar(20),
 Mdp varchar(20),
 Nom varchar(20),
 Prenom varchar(20),
 Adresse varchar(50),
 PRIMARY KEY (Nom)
)Engine='InnoDB';

CREATE TABLE Administrateur (
 Nom varchar(20),
 Prenom varchar(20),
 Login varchar(20),
 Mdp varchar(20),
 PRIMARY KEY (Nom)
)Engine='InnoDB';

CREATE TABLE Acheteur (
 Login varchar(20),
 Mdp varchar(20),
 Nom varchar(20) DEFAULT '0' NOT NULL,
 Prenom varchar(20) NOT NULL,
 Adresse varchar(50),
 Email varchar(50),
 Infos_paiement decimal(8,0),
 PRIMARY KEY (Nom)
)Engine='InnoDB';

CREATE TABLE Panier (
 Item varchar(40),
 Description varchar(100),
 Prix decimal(10,0),
 Sous_total decimal(20,0),
 PRIMARY KEY (Item)
)Engine='InnoDB';

CREATE TABLE Livraison (
 Livraison_id decimal(10,0) NOT NULL,
 Nom varchar(20) DEFAULT '0' NOT NULL,
 Prenom varchar(10),
 Adresse_ligne1 varchar(40),
 Adresse_ligne2 varchar(40),
 Ville varchar(20),
 Code_postal decimal(5,0),
 Pays varchar(40),
 Téléphone decimal(10,0),
 PRIMARY KEY (Livraison_id)
)Engine='InnoDB';

CREATE TABLE Enchère (
 Ancien_prix decimal(10,0) NOT NULL,
 Nouveau_prix decimal(3,0) DEFAULT '0' NOT NULL,
 PRIMARY KEY (Ancien_prix)
)Engine='InnoDB';


INSERT INTO Item VALUES( '123456', 'Pull', 'couleur verte', '13');
INSERT INTO Item VALUES( '6745362', 'Robe', 'très bon état', '20');
INSERT INTO Item VALUES( '908763', 'Baskets', 'neuves jamais portées', '70');
INSERT INTO Item VALUES( '278654', 'Pull', 'à pois collection 2021', '33');

INSERT INTO Acheteur VALUES( 'acheteur1', 'acheteur1', 'Dupont', 'Camille', '14 rue des plantes', 'dupont.camille@edu.ece.fr', 'carte enregistrée');
INSERT INTO Acheteur VALUES( 'acheteur2', 'acheteur2', 'Tessier', 'Arthur', '35 avenue Felix', 'tessier.arthur@edu.ece.fr', 'carte enregistrée');;

INSERT INTO Administrateur VALUES('Sennegon', 'Camille', 'cam.senne', 'mdp');
INSERT INTO Administrateur VALUES('Battistuta', 'Dorine', 'dodo_batt', 'motdepasse');
INSERT INTO Administrateur VALUES('Bettayeb', 'Chirine', 'chirine.bett', 'Omnesmarket2022');
INSERT INTO Administrateur VALUES('Goulamhoussen', 'Ines', 'ines-goulam', 'ECEprojet');
INSERT INTO Administrateur VALUES('Eutamene', 'Noreddine', 'eutamene.norenddine', 'meilleursite');


INSERT INTO Vendeur VALUES( 'pierre.jacques@edu.ece.fr', 'vendeur1', 'vendeur1', 'Jacques', 'Pierre', '19 rue tiphaine');

INSERT INTO Panier VALUES( 'Robe', 'rouge', '10', '20');

INSERT INTO Livraison VALUES( '765768', 'NOM', 'Pren', 'jshfjd', 'firhfr', 'paris', '75000', 'France', '08897656');

INSERT INTO Enchère VALUES('1', '3');
COMMIT;
