-- -- OBJET_UTILISATEUR ajoutes dans la derniere semaine
-- SELECT id_Utilisateur, Nom_Objet, Date_Ajout FROM OBJET_UTILISATEUR
-- WHERE Date_Ajout BETWEEN sysdate-7 AND sysdate;
-- -- Les autres
-- SELECT id_Utilisateur, Nom_Objet, Date_Ajout FROM OBJET_UTILISATEUR
-- WHERE Date_Ajout NOT BETWEEN sysdate-7 AND sysdate;

-- -- les objets culturel commentes au cours de la derniere semaine.
-- SELECT id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire 
-- FROM OBJET_UTILISATEUR
-- GROUP BY (id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire)
-- HAVING Date_Ajout BETWEEN sysdate-7 AND sysdate
-- AND Commentaire IS NOT NULL;
-- -- Pour tester : les objets culturel commentes avant la derniere semaine.
-- SELECT id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire 
-- FROM OBJET_UTILISATEUR
-- GROUP BY (id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire)
-- HAVING Date_Ajout NOT BETWEEN sysdate-7 AND sysdate
-- AND Commentaire IS NOT NULL;

-- -- Le nombre de commentaires de chaque objet culturel de la semaine derniere
-- SELECT Nom_Objet, count(Commentaire) 
-- FROM OBJET_UTILISATEUR
-- WHERE Date_Ajout BETWEEN sysdate-7 AND sysdate
-- GROUP BY (Nom_Objet);
-- -- pour verifier :
-- SELECT Nom_Objet, Commentaire FROM OBJET_UTILISATEUR 
-- WHERE Nom_Objet = 'Asterix le gaulois';

-- -- Ne sera pas compte :
-- insert into OBJET_UTILISATEUR (id_Utilisateur, Nom_Objet, Date_Ajout, Commentaire) 
-- values (150, 'Dandadan', sysdate - 7, 'gnrr');
-- -- pour verifier :
-- SELECT Nom_Objet, Commentaire, Date_Ajout FROM OBJET_UTILISATEUR 
-- WHERE Nom_Objet = 'Dandadan'
-- AND Commentaire IS NOT NULL;

-- Objet culturel le plus commente au cours de la derniere semaine.
SELECT Nom_Objet, count(Commentaire) 
FROM OBJET_UTILISATEUR
WHERE Date_Ajout BETWEEN sysdate-7 AND sysdate
GROUP BY (Nom_Objet)
ORDER BY count(Commentaire) DESC
FETCH FIRST 1 ROW ONLY;

