/* Datenbank zu meinem Portfolio */

/* Datenbank löschen, falls vorhanden */
DROP DATABASE IF EXISTS portfolio_db;

/* Datenbank erstellen */
CREATE DATABASE portfolio_db;

/*Datenbank erstellen, falls nicht vorhanden */
CREATE DATABASE IF NOT EXISTS portfolio_db;

/* Wechseln zur neuen Datenbank */
USE portfolio_db;


/* Tabelle Projekte erstellen */
CREATE TABLE projekte (
	projekt_id INT PRIMARY KEY,
    titel VARCHAR(100),
    beschreibung TEXT,
    technologien VARCHAR(255),
    github_link VARCHAR(255),
    demo_link VARCHAR(255)
);


/* Tabelle Fähigkeiten erstellen */
CREATE TABLE fähigkeiten (
	fähigkeit_id INT PRIMARY KEY,
    name VARCHAR(50),
    level VARCHAR(50)
);


/* Tabelle Kontaktdaten erstellen */
CREATE TABLE kontaktdaten (
	kontaktdaten_id INT PRIMARY KEY,
    email VARCHAR(100),
    telefonnummer VARCHAR(20),
    adresse VARCHAR(50)
);


/* Daten in Tabelle Projekte einfügen */
INSERT INTO projekte (projekt_id, titel, beschreibung, technologien, github_link, demo_link)
VALUES ('1', 'Webseiten Portfolio erstellen', 'Erstellung eines Portfolios', 'HTML, CSS', 'https://github.com/beispiel-portfolio', 'https://beispiel-portfolio.com');


/* Daten in Tabelle Fähigkeiten einfügen */
INSERT INTO fähigkeiten (fähigkeit_id, name, level)
VALUES ('10', 'HTML', 'Amateur');


/* Daten in Tabelle Kontaktdaten einfügen */
INSERT INTO kontaktdaten (kontaktdaten_id, email, telefonnummer, adresse)
VALUES ('100', 'beispiel@mail.com', '07X XXX XX XX', 'Musterstrasse 1, XXXX Muster');


/* Daten aus Tabelle Projekte anfragen */
SELECT * FROM projekte;


/* Daten aus Tabelle Fähigkeiten anfragen */
SELECT * FROM fähigkeiten;


/* Daten aus Tabelle Kontaktdaten anfragen */
SELECT * FROM kontaktdaten;
