-- Tous les utilisateurs qui ont cree des listes de chaque categorie
SELECT L.id_Utilisateur 
FROM Liste L
GROUP BY L.id_Utilisateur
HAVING count(DISTINCT L.Theme) = (
    SELECT count(DISTINCT Theme) FROM OBJET );


-- Version testées moins efficaces/cohérentes

-- SELECT L.id_Utilisateur
-- FROM LISTE L
--     JOIN LISTE L2 ON L.id_Utilisateur = L2.id_Utilisateur
--     JOIN LISTE L3 ON L.id_Utilisateur = L3.id_Utilisateur
--     JOIN LISTE L4 ON L.id_Utilisateur = L4.id_Utilisateur
-- WHERE
--     L.Theme = 'Film'
--     AND L2.Theme = 'BD/Manga'
--     AND L3.Theme = 'Jeu video'
--     AND L4.Theme = 'Livre'
-- GROUP BY L.id_Utilisateur;

-- SELECT L.id_Utilisateur 
-- FROM Liste L
-- CROSS join Objet O
-- GROUP BY L.id_Utilisateur
-- HAVING count(DISTINCT L.Theme) = count(DISTINCT O.Theme);

