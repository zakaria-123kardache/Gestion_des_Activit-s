CREATE TABLE BDE (
    id_bde INT PRIMARY KEY NOT NULL,
    nom VARCHAR (30),
    prenom VARCHAR (30),
    email VARCHAR (15),
    rôle  VARCHAR (15),
    date_ahesion DATE,
     
);
CREATE TABLE evenement (
    id_event INT PRIMARY KEY NOT NULL,
    nom VARCHAR (30),
    description_event VARCHAR (30),
    date_heurs DATE,
    lieu  VARCHAR (15),
    budget VARCHAR (15),
    BDE_responsables VARCHAR(20)
     
);
CREATE TABLE sponsors (
    id_sponsor INT PRIMARY KEY NOT NULL,
    nom_de_entreprise VARCHAR (30),
    entite VARCHAR (30),
    montant_sponsorise VARCHAR (15),
    telephone  VARCHAR (15),
    email VARCHAR(20),
     
);
CREATE TABLE participant (
    id_participant INT PRIMARY KEY NOT NULL,
    nom VARCHAR (30),
    prenom VARCHAR (30),
    email VARCHAR (15),
    statut VARCHAR(20),
     
);
