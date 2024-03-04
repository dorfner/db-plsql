-- TRIGGER login +id uTILISATEUR

CREATE OR REPLACE TRIGGER UTILISATEUR_INSERT
BEFORE INSERT
ON UTILISATEUR
FOR EACH ROW
DECLARE
    prenom CHAR(1);
    nom CHAR(7);
    logchar VARCHAR2(8);
BEGIN
    prenom := SUBSTR(:new.prenom, 1, 1);
    nom := SUBSTR(:new.nom, 1, 7);
    logchar := prenom || nom;
    --DBMS_OUTPUT.PUT_LINE(logchar);
    
    if (:new.id_Utilisateur is null) then
        :new.id_Utilisateur := seq_id_Utilisateur.nextval;
    end if;
    :new.LoginUser := logchar;
END;
/

----------------------------------------------------------------------
-- TRIGGER id LISTE

CREATE OR REPLACE TRIGGER LISTE_INSERT
BEFORE INSERT
ON LISTE
FOR EACH ROW
BEGIN
    if (:new.id_Liste is null) then
        :new.id_Liste := seq_id_Liste.nextval;
    end if;
END;
/

----------------------------------------------------------------------
-- TRIGGER verification du theme de l'objet et de la liste

CREATE OR REPLACE TRIGGER CHECK_THEME
BEFORE INSERT
ON OBJET_LISTE
FOR EACH ROW
DECLARE
    v_idutilisateur INTEGER;
    ThemeObj VARCHAR2(32);
    ThemeList VARCHAR2(32);
BEGIN
    --  Nécessaire pour ne pas avoir d'erreur ORA-04091 'table en mutation' lors
    -- des insertions des nouveaux objets dans les liste 'Nouveautes' 
    -- (voir TRIGGER_NOUVEAUTE)
    SELECT id_Utilisateur INTO v_idutilisateur FROM LISTE WHERE id_Liste = :new.id_Liste;
    IF v_idutilisateur >= 100 THEN

        SELECT Theme INTO ThemeList FROM LISTE WHERE :new.id_Liste = id_Liste;
        --DBMS_OUTPUT.PUT_LINE(ThemeList);

        SELECT Theme INTO ThemeObj FROM OBJET WHERE :new.Nom_Objet = Nom_Objet;
        --DBMS_OUTPUT.PUT_LINE(ThemeObj);

        IF ThemeList != ThemeObj THEN
            RAISE_APPLICATION_ERROR(-20000, 'Exception : Pas le meme theme');
        END IF;

    END IF;
END;
/

