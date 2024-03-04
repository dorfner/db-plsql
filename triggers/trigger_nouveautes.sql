CREATE OR REPLACE TRIGGER TRIGGER_NOUVEAUTES
AFTER INSERT
ON OBJET
FOR EACH ROW
DECLARE
	v_mois VARCHAR2(2);
	v_annee VARCHAR2(2);
	v_nomliste VARCHAR2(32);
	v_themeliste VARCHAR2(32);
	v_count INTEGER;
	v_idliste INTEGER;
BEGIN
	-- Construction du nom de la liste de la forme : "Nouveaux
	-- (Films / Livres / BD/Mangas / Jeux videos) du XX/XX"
	SELECT to_char(sysdate, 'MM') INTO v_mois FROM dual;
	SELECT to_char(sysdate, 'YY') INTO v_annee FROM dual;
	--   Theme au pluriel :
	IF (:new.Theme = 'Jeu video') then
		v_themeliste := 'Jeux videos';
	ELSE
		v_themeliste := :new.Theme || 's';
	END IF;
	v_nomliste := 'Nouveaux ' || v_themeliste || ' du ' || v_mois || '/' || v_annee;

	-- Si l'utilisateur special "Nouveautes" n'existe pas, on le cree
	SELECT count(*) INTO v_count FROM utilisateur WHERE id_Utilisateur = 1;
	IF (v_count = 0) THEN
		INSERT INTO utilisateur (id_Utilisateur, Nom, Prenom, Adresse, Date_Naissance, Date_Inscription, Mdp) VALUES (1, 'Nouveautes', 'Nouveautes', 'dorfner@etu.unistra.fr', sysdate, sysdate, 'admin');
		DBMS_OUTPUT.PUT_LINE('Utilisateur "Nouveautes" cree (id = 1)');
	END IF;

	-- On essaye de recuperer l'id de la liste
	BEGIN
		SELECT id_Liste INTO v_idliste FROM liste WHERE Nom_Liste = v_nomListe;
	EXCEPTION
		-- Si la liste n'existe pas, on la cree, puis on recupere l'id
		WHEN no_data_found THEN
			INSERT INTO liste (id_Utilisateur, Nom_Liste, Theme) VALUES (1, v_nomliste, :new.theme);
			SELECT id_Liste INTO v_idliste FROM liste WHERE Nom_Liste = v_nomListe;
			DBMS_OUTPUT.PUT_LINE('Liste ' || v_nomliste || ' cree');
	END;

	-- On insere l'objet dans la liste correspondante
    INSERT INTO objet_liste (Nom_Objet, id_Liste) VALUES (:new.Nom_Objet, v_idliste);
END;
/

