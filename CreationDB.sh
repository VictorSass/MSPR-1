
### Création de la base de donnée
mysql -u root -p -e  "DROP DATABASE IF EXISTS VenteLicences;
CREATE DATABASE VenteLicences;
USE VenteLicences;

### Création des tables
CREATE TABLE clients (
id INT NOT NULL,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
adresse VARCHAR(100) NOT NULL,
ville VARCHAR(50) NOT NULL,
cp VARCHAR(5) NOT NULL,
CONSTRAINT PK_CLIENTS PRIMARY KEY(id)
);

CREATE TABLE logiciels (
id INT NOT NULL,
nom VARCHAR (50) NOT NULL,
prix INT(10) NOT NULL, 
CONSTRAINT PK_LOGICIELS PRIMARY KEY(id)
);

CREATE TABLE licences (
id INT NOT NULL,
cle VARCHAR(100) NOT NULL,
achete BOOLEAN NOT NULL default 0, 
id_logiciel INT NOT NULL,
CONSTRAINT PK_LICENCES PRIMARY KEY (id),
CONSTRAINT FK_LICENCES_LOGICIELS FOREIGN KEY (id_logiciel) REFERENCES logiciels (id)
);

CREATE TABLE commandes (
id INT NOT NULL,
id_client INT NOT NULL,
id_licence INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_client) references clients (id),
FOREIGN KEY (id_licence) references licences (id)
);"

