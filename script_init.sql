set serveroutput on

start suppression.sql
start creation.sql

start triggers/trigger_generaux.sql
start triggers/trigger_nouveautes.sql
start triggers/trigger_archivage.sql

start insertions/insertion.sql
start insertions/insertion_liste.sql
start insertions/insertion_objet_liste.sql
start insertions/insertion_objet_utilisateur.sql
start insertions/insertion_pour_requetes.sql

start fonctions-procedures/score_objet.sql
start fonctions-procedures/objet_prefere.sql
start fonctions-procedures/suggestions.sql

COMMIT;