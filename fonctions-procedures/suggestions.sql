CREATE OR REPLACE PROCEDURE SUGGESTIONS
    (id_ut UTILISATEUR.id_Utilisateur%TYPE, X INTEGER, Y INTEGER, Z INTEGER)
IS
    v_obj_possede OBJET.Nom_Objet%TYPE; -- ne sert qu'a tester l'existence de données dans des tables
    v_nom_obj OBJET.Nom_Objet%TYPE;
    v_score_obj FLOAT;
    i INT;

    -- Curseur sur un select de tous les objets communs a au moins Y
    -- utilisateurs 'proches' à l'utilisateur courant (on select aussi les
    -- objets possédés par l'utilisateur courant)
    CURSOR objet_suggeres_cur IS
        -- vue sur les utilisateurs ayant mis la meme note que l’utilisateur
        -- courant pour au moins Z objets
        WITH utilisateurs_proches AS (
            SELECT T2.id_Utilisateur AS id_ut
            FROM OBJET_UTILISATEUR T1, OBJET_UTILISATEUR T2
            WHERE T1.id_Utilisateur = id_ut
            AND T1.id_Utilisateur <> T2.id_Utilisateur
            AND T1.Note = T2.Note AND T1.Nom_Objet = T2.Nom_Objet
            GROUP BY (T2.id_Utilisateur)
            HAVING count(T1.Nom_Objet) >= Z
        )
        SELECT Nom_Objet, SCORE_OBJET(Nom_Objet)
        FROM OBJET_UTILISATEUR
        INNER JOIN utilisateurs_proches ON id_Utilisateur = id_ut
        GROUP BY Nom_Objet
        HAVING count(id_Utilisateur) >= Y
        -- objets triés : score moyen le plus élevé d'abord
        ORDER BY SCORE_OBJET(Nom_Objet) DESC;
BEGIN
    i := 1;

    -- Verification : si l'utilisateur n'existe pas ou n'a jamais note d'objet : 
    BEGIN
        SELECT Nom_Objet INTO v_obj_possede FROM OBJET_UTILISATEUR 
        WHERE id_Utilisateur = id_ut AND Note IS NOT NULL
        FETCH first 1 ROW ONLY;
    EXCEPTION
        WHEN no_data_found THEN
            DBMS_OUTPUT.PUT_LINE(' ! L' || chr(39) || 'utilisateur n'
            || chr(39) || 'existe pas ou n' || chr(39) || 'a pas note d'
            || chr(39) ||  'objet.');
        RETURN;
    END;

    -- Verification : si les valeurs X, Y, Z sont invalides : 
    IF (X < 1 OR Y < 0 OR Z < 0) THEN
        DBMS_OUTPUT.PUT_LINE(
            ' ! Parametre(s) invalide(s) : X < 1 OR Y < 0 OR Z < 0');
        RETURN;
    END IF;

    -- Affichage des résultats
    DBMS_OUTPUT.PUT_LINE('Objet suggere' || chr(9) || chr(9) || 'Score');

    OPEN objet_suggeres_cur;
    LOOP
        FETCH objet_suggeres_cur INTO v_nom_obj, v_score_obj;
        -- On s'arrete lorsque l'on ne trouve plus d'objet correspondants à la
        -- spécification ou quand on a affiché X objets
        EXIT WHEN objet_suggeres_cur%NOTFOUND OR i > X;

        -- On n'utilise toujours pas la variable v_obj_possede : elle ne sert
        -- qu'à faire un select pour vérifier que l'utilisateur ne possède pas
        -- l'objet qu'on veut lui recommander
        BEGIN
            SELECT Nom_Objet INTO v_obj_possede FROM OBJET_UTILISATEUR 
            WHERE id_Utilisateur = id_ut AND Nom_Objet = v_nom_obj;
        EXCEPTION
            -- Si l'utilisateur courant ne possède pas l'objet, ce n'est pas une
            -- erreur; on affiche la suggestion
            WHEN no_data_found THEN
                DBMS_OUTPUT.PUT_LINE(i || '. ' 
                || v_nom_obj || chr(9) || chr(9) || v_score_obj);
                i := i+1;
        END;
    END LOOP;
    CLOSE objet_suggeres_cur;

    -- Si rien n'a été affiché, on annonce qu'aucun objet n'a été trouvé avec
    -- les paramètres donnés
    IF (i = 1) THEN
        DBMS_OUTPUT.PUT_LINE('');
        DBMS_OUTPUT.PUT_LINE('Aucun objet a suggerer');
    END IF;
END;
/

