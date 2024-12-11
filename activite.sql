CREATE DATABASE GestionBDE;

USE GestionBDE;


CREATE TABLE BDE (
    id_bde INT PRIMARY KEY NOT NULL,
    nom VARCHAR (30),
    prenom VARCHAR (30),
    email VARCHAR (15),
    rank  ENUM ('president', 'tresorier','secretaire','membre_actif')DEFAULT 'membre_actif',
    date_ahesion DATE,
     
);
CREATE TABLE evenement (
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR (30),
    description_event VARCHAR (30),
    date_heurs DATE,
    lieu  VARCHAR (15),
    budget VARCHAR (15),
    BDE_responsables VARCHAR(20)
     
);
CREATE TABLE sponsors (
    id INT PRIMARY KEY NOT NULL,
    nom_de_entreprise VARCHAR (30),
    entite VARCHAR (30),
    montant VARCHAR (15),
    telephone  VARCHAR (15),
    email VARCHAR(20),
     
);
CREATE TABLE participant (
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR (30),
    prenom VARCHAR (30),
    email VARCHAR (15),
    rank  ENUM ('etudiant actif', 'etudiant diplome','etudiant invite')DEFAULT 'etudiant actif',
    statut VARCHAR(20),
     
);
CREATE TABLE financement (
    PRIMARY KEY id,
    PRIMARY KEY id,
   FOREIGN KEY (id_event) REFERENCES evenement (id), 
   FOREIGN KEY (id_sponsor) REFERENCES sponsors (id), 
     
);
CREATE TABLE animation (
    PRIMARY KEY id,
    PRIMARY KEY id,
   FOREIGN KEY (id_event) REFERENCES evenement (id), 
   FOREIGN KEY (id_bde) REFERENCES BDE (id),  
     
);
CREATE TABLE inscrire (
    PRIMARY KEY id,
    PRIMARY KEY id,
    PRIMARY KEY id,
   FOREIGN KEY (id_participant) REFERENCES participant (id), 
   FOREIGN KEY (id_event) REFERENCES événement (id), 
   FOREIGN KEY (id_bde) REFERENCES BDE (id), 
     
);
