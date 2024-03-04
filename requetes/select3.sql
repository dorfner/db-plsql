-- -- Tous les objets possedes par un utilisateur et leur note
-- SELECT id_Utilisateur, Nom, Prenom, Nom_Objet, Note 
-- FROM UTILISATEUR NATURAL JOIN OBJET_UTILISATEUR;

-- -- Pareil avc note > 8
-- SELECT id_Utilisateur, Nom, Prenom, Nom_Objet, Note 
-- FROM UTILISATEUR NATURAL JOIN OBJET_UTILISATEUR
-- WHERE Note > 8;

-- -- pas de note en dessous de 8
-- SELECT id_Utilisateur, Nom, Prenom, Nom_Objet, Note 
-- FROM UTILISATEUR NATURAL JOIN OBJET_UTILISATEUR 
-- WHERE id_Utilisateur = 123;
-- -- 2 notes en dessous de 8
-- SELECT id_Utilisateur, Nom, Prenom, Nom_Objet, Note 
-- FROM UTILISATEUR NATURAL JOIN OBJET_UTILISATEUR 
-- WHERE id_Utilisateur = 119;
-- -- 1 note en dessous de 8
-- SELECT id_Utilisateur, Nom, Prenom, Nom_Objet, Note 
-- FROM UTILISATEUR NATURAL JOIN OBJET_UTILISATEUR 
-- WHERE id_Utilisateur = 105;

-- Utilisateurs n'ayant jamais mis une note inferieure a 8 a un objet culturel
SELECT id_Utilisateur, min(Note), Nom, Prenom, Adresse, LoginUser, Date_Inscription
FROM UTILISATEUR NATURAL JOIN OBJET_UTILISATEUR
GROUP BY (id_Utilisateur, Nom, Prenom, Adresse, LoginUser, Date_Inscription)
HAVING min(Note) >= 8;

