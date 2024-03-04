
prompt;
prompt -------------------------------------------------------------------;
prompt -------------------------- DEBUT DU TEST --------------------------;
prompt -------------------------------------------------------------------;
prompt;

prompt;
prompt -------------------------------------------------------------------;
prompt ------------------ Procedures et fonctions PL/SQL -----------------;
prompt -------------------------------------------------------------------;
prompt;

prompt ---------------------------------------------;
prompt --------- 1. Fonction SCORE_OBJET() ---------;
prompt ---------------------------------------------;
prompt;

prompt Score de Iron Man sera superieur a 0 car il a plus de 20 notes;
SELECT Nom_Objet, SCORE_OBJET(Nom_Objet) FROM OBJET_UTILISATEUR 
WHERE Nom_Objet = 'Iron Man'
GROUP BY Nom_Objet ORDER BY SCORE_OBJET(Nom_Objet) DESC ;

prompt Score de Naruto sera egale a 0 car il a moins de 20 notes;
SELECT Nom_Objet, SCORE_OBJET(Nom_Objet) FROM OBJET_UTILISATEUR 
WHERE Nom_Objet = 'Naruto'
GROUP BY Nom_Objet ORDER BY SCORE_OBJET(Nom_Objet) DESC ;


prompt ---------------------------------------------;
prompt ------- 2. Procedures OBJET_PREFERE() -------;
prompt ---------------------------------------------;
prompt;

prompt Pour l utilisateur 100;
prompt;
EXECUTE objet_prefere(100);

prompt;
prompt Pour l utilisateur 102, il n y aura pas d objet, car il n a pas assez ;
prompt d objet par categorie;
prompt;
EXECUTE objet_prefere(102);


prompt ---------------------------------------------;
prompt -------- 3. Procedures SUGGESTIONS() --------;
prompt ---------------------------------------------;
prompt;

prompt Voici les suggestions pour l utilisateur 100 :;
prompt Les 10 objets dont le score moyen est le plus eleve pour les objets ;
prompt communs a au moins 2 utilisateurs, ces utilisateurs ayant mis la meme ;
prompt note que l utilisateur courant pour au moins 2 objets.;
prompt;
EXECUTE SUGGESTIONS(100, 10, 2, 2);


prompt;
prompt -------------------------------------------------------------------;
prompt ----------------------- Trigger/Declencheur -----------------------;
prompt -------------------------------------------------------------------;
prompt;

prompt --------------------------------------;
prompt -------- 1. Trigger Archivage --------;
prompt --------------------------------------;
prompt;

prompt Voici la liste "ListeSpe";
SELECT * FROM LISTE WHERE Nom_Liste = 'ListeSpe';

SELECT * FROM OBJET_LISTE WHERE id_Liste = 
(SELECT id_Liste FROM LISTE WHERE Nom_Liste = 'ListeSpe');

prompt La liste "ListeSpe" n est pas encore archivee :;

prompt SELECT * FROM ARCHIVE_LISTE WHERE Nom_Liste = 'ListeSpe';
SELECT * FROM ARCHIVE_LISTE WHERE Nom_Liste = 'ListeSpe';

prompt On la supprime;

prompt DELETE FROM LISTE WHERE Nom_Liste = 'ListeSpe';
DELETE FROM LISTE WHERE Nom_Liste = 'ListeSpe';

prompt Maintenant la liste est presente dans la table ARCHIVE_LISTE :;

SELECT * FROM ARCHIVE_LISTE WHERE Nom_Liste = 'ListeSpe';
SELECT * FROM OBJET_LISTE_ARCHIVE WHERE id_Liste = 
(SELECT id_Liste FROM ARCHIVE_LISTE WHERE Nom_Liste = 'ListeSpe');

prompt;

prompt ---------------------------------------;
prompt -------- 2. Trigger Nouveautes --------;
prompt ---------------------------------------;
prompt;
prompt L utilisateur special Nouveautes a comme id 1;

SELECT * FROM LISTE WHERE id_Utilisateur = 1;

prompt Ce sont toutes les listes creees grace au trigger TRIGGER_NOUVEAUTES;

prompt Si on select les objets de la liste 101 :;
prompt Ce sont tous les jeux videos ajoutes ce mois-ci;

SELECT * FROM OBJET_LISTE WHERE id_Liste = 101;

prompt Si on ajoute un objet de type jeu video et de nom 'Jeu Test';
prompt;

INSERT INTO OBJET (Nom_Objet, Theme, Descriptif) VALUES ('Jeu Test', 'Jeu video', '');

prompt Puis on reselectionne notre liste 101;

SELECT * FROM OBJET_LISTE WHERE id_Liste = 101;

prompt On voit qu un nouveau jeu est apparu dans la liste des objets ajoutes ce mois-ci;
prompt;



prompt;
prompt -------------------------------------------------------------------;
prompt --------------------------- FIN DU TEST ---------------------------;
prompt -------------------------------------------------------------------;
prompt;



