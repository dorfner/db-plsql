-- -- nb de notes par objet
-- SELECT Nom_objet, count(Note) FROM OBJET_UTILISATEUR 
-- GROUP BY Nom_objet;

-- -- moyenne des notes de chaque objet
-- SELECT Nom_Objet, sum(Note)/count(Note) FROM OBJET_UTILISATEUR 
-- GROUP BY Nom_Objet;

-- -- objets avec note > 14 
-- SELECT Nom_Objet FROM OBJET_LISTE OL 
-- WHERE (SELECT sum(Note)/count(Note) FROM OBJET_UTILISATEUR 
-- WHERE Nom_Objet = OL.Nom_Objet) > 14 
-- GROUP BY Nom_Objet;

-- -- objets dans + de 20 listes
-- SELECT Nom_Objet FROM OBJET_LISTE OL 
-- GROUP BY Nom_Objet HAVING count(*) > 20;

-- -- Objets culturels appartenant dans + de 20 listes/collections et dont la 
-- -- moyenne des evaluations est superieure a 14 (avc requête imbriquee)
-- SELECT Nom_Objet FROM OBJET_LISTE OL 
-- WHERE (SELECT sum(Note)/count(Note) FROM OBJET_UTILISATEUR 
-- WHERE Nom_Objet = OL.Nom_Objet) > 14 
-- GROUP BY Nom_Objet HAVING count(*) > 20;

-- Bonne version : non imbriquee ; plus efficace
SELECT OL.Nom_Objet, avg(OU.Note)
FROM OBJET_LISTE OL 
INNER JOIN OBJET_UTILISATEUR OU
    ON OL.Nom_Objet = OU.Nom_Objet
GROUP BY OL.Nom_Objet 
HAVING count(DISTINCT OL.id_Liste) > 20
AND avg(OU.Note) > 14;

