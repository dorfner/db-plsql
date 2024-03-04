CREATE OR REPLACE FUNCTION SCORE_OBJET
    (Objet OBJET_UTILISATEUR.Nom_Objet%TYPE)
RETURN FLOAT
IS
    somme_note FLOAT;
    nb_note INT;
BEGIN
    somme_note := 0;
    SELECT count(*) INTO nb_note FROM OBJET_UTILISATEUR 
        WHERE Objet = Nom_Objet and Note is not null;

    IF nb_note >= 20 THEN
        SELECT sum(Note) INTO somme_note FROM OBJET_UTILISATEUR 
            WHERE Objet = Nom_Objet;
        somme_note := somme_note/nb_note;
    END IF;

    RETURN round(somme_note, 2);
END;
/

