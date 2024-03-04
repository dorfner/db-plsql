-- Test de la requête no 4 et 5

-- Utilisateur d'id 150

insert into UTILISATEUR (Nom, Prenom, Adresse, Date_Naissance, Mdp) 
values ('J', 'Jean', 'jjean@imdb.com', '11-09-1985', 'my8rS0CJSa');

insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire) 
values (150, 'Tintin', sysdate - 8, 'oui');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire) 
values (150, 'Avenger Infinty War', sysdate - 7, '....');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire) 
values (150, 'Titanic', sysdate - 6, 'de la quoi?');

-- Utilisateur d'id 151 

insert into UTILISATEUR (Nom, Prenom, Adresse, Date_Naissance, Mdp) 
values ('J', 'Jean II', 'jjean2@imdb.com', '11-09-1987', 'my8rS0KJSa');

-- il a noté des objets culturels pendant 3 mois consecutifs au court de l'annee
-- precedente 
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Date_Ajout, Note) 
values (151, 'FilmLambda 1', '25-01-'||(extract(year from sysdate)-1), 17);
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Date_Ajout, Note)  
values (151, 'FilmLambda 2', '14-02-'||(extract(year from sysdate)-1), 5);
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Date_Ajout, Note) 
values (151, 'FilmLambda 3', '27-03-'||(extract(year from sysdate)-1), 1);

insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Achat, Note) 
values (151, 'FilmLambda 4', 1, 7);
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Achat, Note)  
values (151, 'FilmLambda 5', 1, 15);
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Achat, Note) 
values (151, 'FilmLambda 6', 1, 1);

-- il possede trois listes (plus ou moins remplies)

insert into LISTE (id_Utilisateur, Nom_Liste, Theme) 
values (151, 'Protocol Comedy', 'Film');

insert into OBJET_LISTE (Nom_Objet, id_Liste) values ('Thor 3', 228);
insert into OBJET_LISTE (Nom_Objet, id_Liste) values ('FilmLambda 1', 228);
insert into OBJET_LISTE (Nom_Objet, id_Liste) values ('FilmLambda 2', 228);
insert into OBJET_LISTE (Nom_Objet, id_Liste) values ('FilmLambda 3', 228);
insert into OBJET_LISTE (Nom_Objet, id_Liste) values ('FilmLambda 4', 228);

insert into LISTE (id_Utilisateur, Nom_Liste, Theme) 
values (151, 'bangerz', 'Livre');

insert into OBJET_LISTE (Nom_Objet, id_Liste) values ('Harry Potter Tome 3', 229);
insert into OBJET_LISTE (Nom_Objet, id_Liste) values ('Harry Potter Tome 1', 229);

insert into LISTE (id_Utilisateur, Nom_Liste, Theme) 
values (151, 'Good mangas', 'BD/Manga');


--------------------------------------------------------------------------------
--  Test de la requete no 2

-- Ces films ont de bonnes notes
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (104, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (102, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (129, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (128, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (112, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (135, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (149, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (136, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (103, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (144, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (132, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (105, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (125, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (116, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (148, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (103, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (123, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (136, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (134, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (105, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (108, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (149, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (107, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (136, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (110, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (131, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (125, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (109, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (117, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (121, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (133, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (123, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (104, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (105, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (112, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (127, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (117, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (128, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (143, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (119, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (114, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (110, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (114, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (146, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (130, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (116, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (130, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (109, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (134, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (132, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (121, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (135, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (133, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (106, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (128, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (146, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (134, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (121, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (126, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (129, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (141, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (133, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (123, 'Titanic');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (129, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (146, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (111, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (127, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (112, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (108, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (120, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (141, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (109, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (142, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (116, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (124, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (138, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (124, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (140, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (135, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (104, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (106, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (119, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (104, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (108, 'Avenger Infinty War');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (144, 'FilmLambda 1');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (120, 'Thor 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (140, 'Iron Man');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (102, 'Iron Man');

update objet_utilisateur set note = 13
where id_utilisateur = 109 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 15
where id_utilisateur = 116 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 20
where id_utilisateur = 138 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 20
where id_utilisateur = 117 and nom_objet = 'Titanic';
update objet_utilisateur set note = 16
where id_utilisateur = 148 and nom_objet = 'Titanic';
update objet_utilisateur set note = 19
where id_utilisateur = 113 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 12
where id_utilisateur = 142 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 10
where id_utilisateur = 125 and nom_objet = 'Titanic';
update objet_utilisateur set note = 11
where id_utilisateur = 133 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 14
where id_utilisateur = 146 and nom_objet = 'Titanic';
update objet_utilisateur set note = 18
where id_utilisateur = 130 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 9
where id_utilisateur = 149 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 12
where id_utilisateur = 120 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 14
where id_utilisateur = 135 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 110 and nom_objet = 'Titanic';
update objet_utilisateur set note = 18
where id_utilisateur = 134 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 18
where id_utilisateur = 102 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 15
where id_utilisateur = 127 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 10
where id_utilisateur = 124 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 15
where id_utilisateur = 129 and nom_objet = 'Titanic';
update objet_utilisateur set note = 16
where id_utilisateur = 122 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 20
where id_utilisateur = 132 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 9
where id_utilisateur = 105 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 18
where id_utilisateur = 140 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 16
where id_utilisateur = 109 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 19
where id_utilisateur = 106 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 17
where id_utilisateur = 141 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 15
where id_utilisateur = 103 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 10
where id_utilisateur = 121 and nom_objet = 'Titanic';
update objet_utilisateur set note = 14
where id_utilisateur = 102 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 20
where id_utilisateur = 135 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 20
where id_utilisateur = 112 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 19
where id_utilisateur = 113 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 15
where id_utilisateur = 108 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 12
where id_utilisateur = 135 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 17
where id_utilisateur = 104 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 20
where id_utilisateur = 128 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 20
where id_utilisateur = 104 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 20
where id_utilisateur = 144 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 16
where id_utilisateur = 133 and nom_objet = 'Titanic';
update objet_utilisateur set note = 15
where id_utilisateur = 129 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 109 and nom_objet = 'Titanic';
update objet_utilisateur set note = 20
where id_utilisateur = 134 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 19
where id_utilisateur = 141 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 10
where id_utilisateur = 104 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 119 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 20
where id_utilisateur = 110 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 12
where id_utilisateur = 122 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 18
where id_utilisateur = 116 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 103 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 17
where id_utilisateur = 123 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 136 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 18
where id_utilisateur = 146 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 14
where id_utilisateur = 136 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 111 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 9
where id_utilisateur = 106 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 16
where id_utilisateur = 129 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 9
where id_utilisateur = 146 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 13
where id_utilisateur = 122 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 18
where id_utilisateur = 105 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 14
where id_utilisateur = 112 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 14
where id_utilisateur = 108 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 5
where id_utilisateur = 112 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 9
where id_utilisateur = 108 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 14
where id_utilisateur = 114 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 19
where id_utilisateur = 105 and nom_objet = 'Titanic';
update objet_utilisateur set note = 14
where id_utilisateur = 128 and nom_objet = 'Titanic';
update objet_utilisateur set note = 17
where id_utilisateur = 127 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 20
where id_utilisateur = 121 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 20
where id_utilisateur = 114 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 10
where id_utilisateur = 124 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 18
where id_utilisateur = 134 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 20
where id_utilisateur = 122 and nom_objet = 'Titanic';
update objet_utilisateur set note = 20
where id_utilisateur = 132 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 12
where id_utilisateur = 113 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 9
where id_utilisateur = 136 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 17
where id_utilisateur = 125 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 18
where id_utilisateur = 131 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 17
where id_utilisateur = 144 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 11
where id_utilisateur = 117 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 19
where id_utilisateur = 130 and nom_objet = 'Titanic';
update objet_utilisateur set note = 20
where id_utilisateur = 116 and nom_objet = 'Titanic';
update objet_utilisateur set note = 20
where id_utilisateur = 123 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 14
where id_utilisateur = 143 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 16
where id_utilisateur = 121 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 19
where id_utilisateur = 126 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 12
where id_utilisateur = 113 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 17
where id_utilisateur = 140 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 13
where id_utilisateur = 122 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 149 and nom_objet = 'FilmLambda 1';
update objet_utilisateur set note = 20
where id_utilisateur = 119 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 11
where id_utilisateur = 133 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 13
where id_utilisateur = 104 and nom_objet = 'Avenger Infinty War';
update objet_utilisateur set note = 19
where id_utilisateur = 120 and nom_objet = 'Iron Man';
update objet_utilisateur set note = 20
where id_utilisateur = 123 and nom_objet = 'Titanic';
update objet_utilisateur set note = 10
where id_utilisateur = 128 and nom_objet = 'Thor 3';
update objet_utilisateur set note = 20
where id_utilisateur = 107 and nom_objet = 'Titanic';


-- Ces films ont de mauvaises notes
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (143, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (106, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (130, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (149, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (110, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (133, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (115, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (108, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (138, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (129, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (129, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (114, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (118, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (141, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (121, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (123, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (134, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (107, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (107, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (139, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (136, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (145, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (112, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (111, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (133, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (115, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (145, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (104, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (134, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (101, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (121, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (114, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (103, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (117, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (130, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (139, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (106, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (133, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (134, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (124, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (127, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (111, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (128, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (111, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (102, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (146, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (146, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (118, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (131, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (132, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (136, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (136, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (116, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (123, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (117, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (127, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (140, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (132, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (125, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (137, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (112, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (128, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (137, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (101, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (101, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (113, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (129, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (107, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (119, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (143, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (109, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (147, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (122, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (147, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (148, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (118, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (126, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (144, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (142, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (126, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (132, 'FilmLambda 3');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (131, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (139, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (110, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (147, 'FilmLambda 4');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (108, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (116, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (123, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (117, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (104, 'FilmLambda 5');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (119, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (144, 'Fast and Furious 37');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (143, 'FilmLambda 2');
insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet) values (145, 'FilmLambda 3');

update objet_utilisateur set note = 2
where id_utilisateur = 143 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 9
where id_utilisateur = 106 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 7
where id_utilisateur = 130 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 3
where id_utilisateur = 149 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 7
where id_utilisateur = 110 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 9
where id_utilisateur = 133 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 4
where id_utilisateur = 115 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 11
where id_utilisateur = 108 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 12
where id_utilisateur = 138 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 11
where id_utilisateur = 129 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 5
where id_utilisateur = 129 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 13
where id_utilisateur = 114 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 10
where id_utilisateur = 118 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 10
where id_utilisateur = 141 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 2
where id_utilisateur = 121 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 10
where id_utilisateur = 123 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 7
where id_utilisateur = 134 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 6
where id_utilisateur = 107 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 10
where id_utilisateur = 107 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 5
where id_utilisateur = 139 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 9
where id_utilisateur = 136 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 11
where id_utilisateur = 145 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 9
where id_utilisateur = 112 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 8
where id_utilisateur = 111 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 11
where id_utilisateur = 133 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 8
where id_utilisateur = 115 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 8
where id_utilisateur = 145 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 9
where id_utilisateur = 104 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 11
where id_utilisateur = 134 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 7
where id_utilisateur = 101 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 10
where id_utilisateur = 121 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 6
where id_utilisateur = 114 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 5
where id_utilisateur = 103 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 12
where id_utilisateur = 117 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 8
where id_utilisateur = 130 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 3
where id_utilisateur = 139 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 14
where id_utilisateur = 106 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 6
where id_utilisateur = 133 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 12
where id_utilisateur = 134 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 5
where id_utilisateur = 113 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 16
where id_utilisateur = 124 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 7
where id_utilisateur = 127 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 4
where id_utilisateur = 111 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 15
where id_utilisateur = 128 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 18
where id_utilisateur = 111 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 11
where id_utilisateur = 102 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 11
where id_utilisateur = 122 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 9
where id_utilisateur = 146 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 9
where id_utilisateur = 146 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 4
where id_utilisateur = 118 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 4
where id_utilisateur = 131 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 9
where id_utilisateur = 132 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 7
where id_utilisateur = 136 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 6
where id_utilisateur = 136 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 6
where id_utilisateur = 116 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 8
where id_utilisateur = 123 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 7
where id_utilisateur = 113 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 17
where id_utilisateur = 117 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 4
where id_utilisateur = 127 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 9
where id_utilisateur = 140 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 16
where id_utilisateur = 132 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 5
where id_utilisateur = 122 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 5
where id_utilisateur = 125 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 10
where id_utilisateur = 113 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 8
where id_utilisateur = 137 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 4
where id_utilisateur = 112 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 10
where id_utilisateur = 122 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 2
where id_utilisateur = 128 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 6
where id_utilisateur = 137 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 11
where id_utilisateur = 101 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 4
where id_utilisateur = 101 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 6
where id_utilisateur = 113 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 9
where id_utilisateur = 129 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 9
where id_utilisateur = 107 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 16
where id_utilisateur = 119 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 10
where id_utilisateur = 143 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 3
where id_utilisateur = 109 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 3
where id_utilisateur = 147 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 6
where id_utilisateur = 122 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 2
where id_utilisateur = 147 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 4
where id_utilisateur = 148 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 2
where id_utilisateur = 118 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 10
where id_utilisateur = 126 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 5
where id_utilisateur = 144 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 11
where id_utilisateur = 142 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 10
where id_utilisateur = 126 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 4
where id_utilisateur = 132 and nom_objet = 'FilmLambda 3';
update objet_utilisateur set note = 8
where id_utilisateur = 131 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 7
where id_utilisateur = 139 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 8
where id_utilisateur = 110 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 2
where id_utilisateur = 147 and nom_objet = 'FilmLambda 4';
update objet_utilisateur set note = 4
where id_utilisateur = 108 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 5
where id_utilisateur = 116 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 19
where id_utilisateur = 123 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 4
where id_utilisateur = 117 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 6
where id_utilisateur = 104 and nom_objet = 'FilmLambda 5';
update objet_utilisateur set note = 3
where id_utilisateur = 119 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 19
where id_utilisateur = 144 and nom_objet = 'Fast and Furious 37';
update objet_utilisateur set note = 10
where id_utilisateur = 143 and nom_objet = 'FilmLambda 2';
update objet_utilisateur set note = 7
where id_utilisateur = 145 and nom_objet = 'FilmLambda 3';
