CREATE OR REPLACE PROCEDURE OBJET_PREFERE
    (un_utilisateur UTILISATEUR.id_Utilisateur%TYPE)
IS
    MonTheme VARCHAR2(16);
    cursor objetliste_cur IS
        SELECT OBJET_UTILISATEUR.Nom_Objet, OBJET_UTILISATEUR.Note 
        FROM OBJET_UTILISATEUR 
        JOIN OBJET ON OBJET_UTILISATEUR.Nom_Objet = OBJET.Nom_Objet
        WHERE OBJET_UTILISATEUR.id_Utilisateur = un_utilisateur AND OBJET.Theme = MonTheme
        ORDER BY OBJET_UTILISATEUR.Note DESC
        FETCH FIRST 10 ROW ONLY;
    nom VARCHAR2(32);
    note int;
    nb_row int;
    i int;

BEGIN
    i := 0;
    WHILE i < 3
    LOOP
        IF i = 0 THEN
            DBMS_OUTPUT.PUT_LINE(' ---- Films Preferes ----- ');
            MonTheme := 'Film';
        ELSIF i = 1 THEN
            DBMS_OUTPUT.PUT_LINE(' ---- Livres Preferes ---- ');
            MonTheme := 'Livre';
        ELSE 
            DBMS_OUTPUT.PUT_LINE(' -- Jeux videos Preferes -- ');
            MonTheme := 'Jeu video';
        END IF;


        OPEN objetliste_cur;
        LOOP
            FETCH objetliste_cur into nom, note;
            EXIT WHEN objetliste_cur%NOTFOUND;
        END LOOP;
        nb_row := objetliste_cur%ROWCOUNT;
        CLOSE objetliste_cur;

        IF nb_row = 10 THEN
            OPEN objetliste_cur;
            LOOP
                FETCH objetliste_cur into nom, note;
                EXIT WHEN objetliste_cur%NOTFOUND;
                DBMS_OUTPUT.PUT_LINE('Oeuvre : ' || nom);
                DBMS_OUTPUT.PUT_LINE(chr(1) || ' -Note : '|| TO_CHAR(note));
            END LOOP;
            CLOSE objetliste_cur;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Pas assez d oeuvres de ce type.');
        END IF;

        DBMS_OUTPUT.PUT_LINE(' ------------------------ ');
        dbms_output.put_line(chr(10));

        i := i +1;
    END LOOP;
END;
/

--EXECUTE OBJET_PREFERE(100);
--EXECUTE OBJET_PREFERE(101);
