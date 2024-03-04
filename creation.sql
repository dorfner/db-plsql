CREATE TABLE UTILISATEUR(
    id_Utilisateur INT PRIMARY KEY,
    Nom VARCHAR2(25) NOT NULL,
    Prenom VARCHAR2(15) NOT NULL,
    Adresse VARCHAR2(40) NOT NULL,
    Date_Naissance DATE NOT NULL,
    Date_Inscription DATE DEFAULT SYSDATE NOT NULL,
    LoginUser VARCHAR2(8),
    Mdp VARCHAR2(15) NOT NULL,
    CONSTRAINT CHK_Mdp CHECK (regexp_like(Mdp, '^[<a-zA-Z0-9_]{1,15}$'))
);

CREATE TABLE LISTE(
    id_Liste INT PRIMARY KEY,
	id_Utilisateur INT NOT NULL REFERENCES UTILISATEUR,
    Nom_Liste VARCHAR2(32) NOT NULL,
    Theme VARCHAR2(16) NOT NULL,
    Descriptif VARCHAR2(128),
    CONSTRAINT CHK_ThemeListe CHECK (Theme IN('Film', 'Livre','Jeu video', 'BD/Manga'))
);

CREATE TABLE OBJET(
    Nom_Objet VARCHAR2(32) PRIMARY KEY,
    Theme VARCHAR2(16) NOT NULL,
    Descriptif VARCHAR2(128),
    CONSTRAINT CHK_ThemeObjet CHECK (Theme IN('Film', 'Livre','Jeu video', 'BD/Manga'))
);


-- Association -----------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE OBJET_UTILISATEUR(
	id_Utilisateur INT NOT NULL REFERENCES UTILISATEUR,
	Nom_Objet VARCHAR2(32) NOT NULL REFERENCES OBJET,
    PRIMARY KEY (id_Utilisateur, Nom_Objet),
    Note INT CHECK (Note >= 1 AND Note <= 20),
    Commentaire VARCHAR2(128),
    -- Achat = Souhaite acheter (à 1 si il souhaite l'acheter, à 0 si il le possede)
    Achat INT DEFAULT 0 CHECK (Achat IN (0,1)),
    Date_Ajout DATE DEFAULT SYSDATE NOT NULL
);

CREATE TABLE OBJET_LISTE(
	Nom_Objet VARCHAR2(32) NOT NULL REFERENCES OBJET,
    id_Liste INT NOT NULL REFERENCES LISTE,
    PRIMARY KEY (id_Liste, Nom_Objet),
    Justification VARCHAR2(128)
);


-- Archivage -------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE TABLE ARCHIVE_LISTE(
    id_Liste INT PRIMARY KEY,
	id_Utilisateur INT NOT NULL REFERENCES UTILISATEUR,
    Nom_Liste VARCHAR2(32) NOT NULL,
    Theme VARCHAR2(16) NOT NULL,
    Descriptif VARCHAR2(128),
    Date_Archivage DATE,
    CONSTRAINT CHK_ThemeListeArchive CHECK (Theme IN('Film', 'Livre','Jeu video', 'BD/Manga'))
);

CREATE TABLE OBJET_LISTE_ARCHIVE(
	Nom_Objet VARCHAR2(32) NOT NULL REFERENCES OBJET,
    id_Liste INT NOT NULL REFERENCES LISTE,
    PRIMARY KEY (id_Liste, Nom_Objet),
    Justification VARCHAR2(128)
);


-- Sequences -------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE SEQUENCE seq_id_Utilisateur START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE seq_id_Liste START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE seq_id_ListeArchive START WITH 100 INCREMENT BY 1;

-- Index -----------------------------------------------------------------------
--------------------------------------------------------------------------------

CREATE INDEX IND_DATE_AJOUT ON OBJET_UTILISATEUR(Date_Ajout);

