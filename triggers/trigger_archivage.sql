CREATE OR REPLACE TRIGGER TRIGGER_ARCHIVAGE
BEFORE DELETE
ON LISTE
FOR EACH ROW
DECLARE
    CURSOR objetListe_cur IS
        SELECT * FROM OBJET_LISTE WHERE id_Liste = :Old.id_Liste;
    objetListe OBJET_LISTE%ROWTYPE;
BEGIN
    INSERT INTO ARCHIVE_LISTE (id_Liste, id_Utilisateur, Nom_Liste, Theme, Descriptif, Date_Archivage) values (seq_id_ListeArchive.nextval, :Old.id_Utilisateur, :Old.Nom_Liste, :Old.Theme, :Old.Descriptif, SYSDATE);

    OPEN objetListe_cur;
    LOOP
        FETCH objetListe_cur INTO objetListe;
        EXIT WHEN objetListe_cur%NOTFOUND;
        INSERT INTO OBJET_LISTE_ARCHIVE (Nom_Objet, id_Liste, Justification) VALUES (objetListe.Nom_Objet, seq_id_ListeArchive.currval, objetListe.Justification);
        DELETE FROM OBJET_LISTE WHERE id_Liste = objetListe.id_Liste;
    END LOOP;
    CLOSE objetListe_cur;
END;
/