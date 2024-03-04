-- select id_Utilisateur,Nom_Objet,Date_Ajout from OBJET_UTILISATEUR where id_Utilisateur = 151;
-- -- les rows avec la date 'floored' au mois
-- select id_Utilisateur,Nom_Objet, Date_Ajout, (Date_Ajout - extract(day from Date_Ajout) +1) 
-- from OBJET_UTILISATEUR where id_Utilisateur = 151;

-- -- Affiche le nb de mois qui sépare chaque date_ajout de 151 (3 x 3 -> 9 valeurs)
-- SELECT months_between(
--     (T1.Date_Ajout - extract(day from T1.Date_Ajout) +1),
--     (T2.Date_Ajout - extract(day from T2.Date_Ajout) +1) )
-- FROM OBJET_UTILISATEUR T1
-- CROSS JOIN OBJET_UTILISATEUR T2
-- WHERE T1.id_Utilisateur = 151 AND T2.id_Utilisateur = 151
-- AND T1.Note IS NOT NULL AND T2.Note IS NOT NULL;

-- -- id des utilisateurs ayant au moins noté des objets sur 3 mois consécutifs au
-- -- cours de l'année précédente
-- SELECT T1.id_Utilisateur
-- FROM OBJET_UTILISATEUR T1
-- CROSS JOIN OBJET_UTILISATEUR T2
-- CROSS JOIN OBJET_UTILISATEUR T3
-- WHERE T1.Note IS NOT NULL AND T2.Note IS NOT NULL AND T3.Note IS NOT NULL
-- AND extract(year from T1.Date_Ajout) = extract(year from sysdate) -1
-- AND extract(year from T3.Date_Ajout) = extract(year from sysdate) -1
-- AND months_between(
--     (T1.Date_Ajout - extract(day from T1.Date_Ajout) +1),
--     (T2.Date_Ajout - extract(day from T2.Date_Ajout) +1) ) = 1
-- AND months_between(
--     (T2.Date_Ajout - extract(day from T2.Date_Ajout) +1),
--     (T3.Date_Ajout - extract(day from T3.Date_Ajout) +1) ) = 1
-- GROUP BY (T1.id_Utilisateur, T1.Date_Ajout, T2.Date_Ajout, T3.Date_Ajout);

-- ----------------------------------------------------------------------

-- -- notre utilisateur test
-- select id_Utilisateur,Nom_Objet,Date_Ajout, Achat from OBJET_UTILISATEUR 
-- where id_Utilisateur = 151;

-- -- nb d'objets que les utilisateurs possèdent
-- SELECT id_Utilisateur, count(Nom_Objet), count(case when Achat = 0 then 1 end)
-- FROM OBJET_UTILISATEUR
-- GROUP BY id_Utilisateur ORDER BY id_Utilisateur;

-- -- nb d'objets que les utilisateurs souhaitent  acheter
-- SELECT id_Utilisateur, count(Nom_Objet), count(case when Achat = 1 then 1 end)
-- FROM OBJET_UTILISATEUR
-- GROUP BY id_Utilisateur ORDER BY id_Utilisateur;

-- ----------------------------------------------------------------------

-- -- Tous les objets dans toutes les listes de 151
-- SELECT Nom_Objet, id_Liste
-- FROM LISTE
-- NATURAL JOIN OBJET_LISTE
-- WHERE id_Utilisateur = 151;

-- -- longueur des collections de 151
-- SELECT LL.id_Liste, count(Nom_Objet)
-- FROM OBJET_LISTE OL
-- FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
-- WHERE id_Utilisateur = 151
-- GROUP BY LL.id_Liste;

-- -- longueur des collections de tt le monde
-- SELECT id_Utilisateur, LL.id_Liste, count(Nom_Objet)
-- FROM OBJET_LISTE OL
-- FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
-- GROUP BY (id_Utilisateur, LL.id_Liste)
-- ORDER BY id_Utilisateur;

-- -- Liste de longueur maximale de 151
-- SELECT LL.id_Liste, count(Nom_Objet)
-- FROM OBJET_LISTE OL
-- FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
-- WHERE id_Utilisateur = 151
-- GROUP BY LL.id_Liste
-- ORDER BY count(Nom_Objet) DESC
-- FETCH FIRST 1 ROW ONLY;

-- -- Liste de longueur minimale de 151
-- SELECT LL.id_Liste, count(Nom_Objet)
-- FROM OBJET_LISTE OL
-- FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
-- WHERE id_Utilisateur = 151
-- GROUP BY LL.id_Liste
-- ORDER BY count(Nom_Objet)
-- FETCH FIRST 1 ROW ONLY;

-- -- Liste de longueur maximale de tt le monde
-- SELECT L1.id_Utilisateur, L1.id_Liste, count(OL1.Nom_Objet)
-- FROM Liste L1
-- FULL OUTER JOIN OBJET_LISTE OL1 ON L1.id_Liste = OL1.id_Liste
-- WHERE L1.id_Liste = (
--     SELECT L2.id_Liste
--     FROM OBJET_LISTE OL2
--     FULL OUTER JOIN LISTE L2 ON OL2.id_Liste = L2.id_Liste
--     WHERE L2.id_Utilisateur = L1.id_Utilisateur
--     GROUP BY L2.id_Liste
--     ORDER BY count(OL2.Nom_Objet) DESC
--     FETCH FIRST 1 ROW ONLY
-- )
-- GROUP BY (L1.id_Utilisateur, L1.id_Liste)
-- ORDER BY id_Utilisateur;

-- -- Liste de longueur minimale de tt le monde
-- SELECT L1.id_Utilisateur, L1.id_Liste, count(OL1.Nom_Objet)
-- FROM Liste L1
-- FULL OUTER JOIN OBJET_LISTE OL1 ON L1.id_Liste = OL1.id_Liste
-- WHERE L1.id_Liste = (
--     SELECT L2.id_Liste
--     FROM OBJET_LISTE OL2
--     FULL OUTER JOIN LISTE L2 ON OL2.id_Liste = L2.id_Liste
--     WHERE L2.id_Utilisateur = L1.id_Utilisateur
--     GROUP BY L2.id_Liste
--     ORDER BY count(OL2.Nom_Objet)
--     FETCH FIRST 1 ROW ONLY
-- )
-- GROUP BY (L1.id_Utilisateur, L1.id_Liste)
-- ORDER BY id_Utilisateur;

-- ----------------------------------------------------------------------

-- -- la longueur moyenne des listes de 151
-- SELECT avg(nb_objets)
-- FROM (
--     SELECT count(Nom_Objet) as nb_objets
--     FROM OBJET_LISTE OL
--     FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
--     WHERE id_Utilisateur = 151
--     GROUP BY LL.id_Liste );

-- -- la longueur moyenne des listes de tt le monde
-- SELECT id_ut, avg(nb_objets)
-- FROM (
--     SELECT LL.id_Utilisateur as id_ut, count(Nom_Objet) as nb_objets
--     FROM OBJET_LISTE OL
--     FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
--     GROUP BY (LL.id_Utilisateur, LL.id_Liste))
-- GROUP BY id_ut
-- ORDER BY id_ut;

-- -- alternative du max
-- SELECT id_ut, max(nb_objets)
-- FROM (
--     SELECT LL.id_Utilisateur as id_ut, count(Nom_Objet) as nb_objets
--     FROM OBJET_LISTE OL
--     FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
--     GROUP BY (LL.id_Utilisateur, LL.id_Liste))
-- GROUP BY id_ut
-- ORDER BY id_ut;

-- -- min, max, avg
-- WITH nb_objets_par_liste AS (
--     SELECT LL.id_Utilisateur as id_ut, count(Nom_Objet) as nb_objets
--     FROM OBJET_LISTE OL
--     FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
--     GROUP BY (LL.id_Utilisateur, LL.id_Liste)
-- )
-- SELECT id_ut, min(nb_objets), max(nb_objets), avg(nb_objets)
-- FROM nb_objets_par_liste
-- GROUP BY id_ut
-- ORDER BY id_ut;

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


----------------------------------------------------------------------
-- Requete finale

-- Nombre d'objets par listes de l'utilisateur d'id 'id_ut1'
-- (pour le min le max et la moyenne)
WITH nb_objets_par_liste AS (
    SELECT LL.id_Utilisateur AS id_ut1,
    count(Nom_Objet) AS nb_objets
    FROM OBJET_LISTE OL
    FULL OUTER JOIN LISTE LL ON OL.id_Liste = LL.id_Liste
    GROUP BY (LL.id_Utilisateur, LL.id_Liste)
),
-- Les utilisateurs qui ont notés des objets sur 3 mois consécutifs au cours de
-- l'année précédante, ainsi que leur nb d'objets souhaités et possédés
utilisateurs_actifs AS (
    SELECT T1.id_Utilisateur AS id_ut_actif,
    count(CASE WHEN T.Achat = 1 THEN 1 END) AS nb_objets_souhaite_acheter,
    count(CASE WHEN T.Achat = 0 THEN 1 END) AS nb_objets_possedes
    FROM OBJET_UTILISATEUR T1 -- dernier mois (ordre chronologique)
    CROSS JOIN OBJET_UTILISATEUR T2
    CROSS JOIN OBJET_UTILISATEUR T3 -- 1er mois
    INNER JOIN OBJET_UTILISATEUR T ON T.id_Utilisateur = T1.id_Utilisateur
    -- Filtrage des entrées ayant mis une note
    WHERE T1.Note IS NOT NULL AND T2.Note IS NOT NULL AND T3.Note IS NOT NULL
    -- Filtrage des entrées de l'année précédante
    AND extract(year from T1.Date_Ajout) = extract(YEAR FROM sysdate) -1
    AND extract(year from T3.Date_Ajout) = extract(YEAR FROM sysdate) -1
    -- Filtrage des entrées qui sont précédées de 2 entrées consécutives par
    -- rapport au mois
    -- * On fait : Date_Ajout - extract(DAY FROM Date_Ajout) +1
    --   pour arrondir au mois ( '18-03-2021' --> '01-03-2021' )
    AND months_between(
        (T1.Date_Ajout - extract(DAY FROM T1.Date_Ajout) +1),
        (T2.Date_Ajout - extract(DAY FROM T2.Date_Ajout) +1) ) = 1
    AND months_between(
        (T2.Date_Ajout - extract(DAY FROM T2.Date_Ajout) +1),
        (T3.Date_Ajout - extract(DAY FROM T3.Date_Ajout) +1) ) = 1
    GROUP BY (T1.id_Utilisateur)
)
SELECT id_ut1, min(nb_objets) AS Longueur_min_collection, 
max(nb_objets) AS Longueur_min_collection, 
avg(nb_objets) AS Longueur_moyenne_collections, 
nb_objets_souhaite_acheter, nb_objets_possedes
FROM utilisateurs_actifs
INNER JOIN nb_objets_par_liste ON id_ut1 = id_ut_actif
GROUP BY (id_ut1, nb_objets_souhaite_acheter, nb_objets_possedes)
ORDER BY id_ut1;

