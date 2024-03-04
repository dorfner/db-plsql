
prompt;
prompt -------------------------------------------------------------------;
prompt -------------------------- DEBUT DU TEST --------------------------;
prompt -------------------------------------------------------------------;
prompt;

prompt;
prompt -------------------------------------------------------------------;
prompt ----------------------- Requêtes SQL ------------------------------;
prompt -------------------------------------------------------------------;
prompt;

prompt ---------------------------------------------;
prompt --------- 1. Les utilisateurs ayant créé une liste ;
prompt ------ pour chacun des types d'objets culturels existants. ;
prompt ---------------------------------------------;
prompt;

start requetes/select1.sql

prompt ---------------------------------------------;
prompt --------- 2. Les objets culturels appartenant à plus de 20 ;
prompt ---- collections et dont la moyenne des évaluations est supérieure à 14.;
prompt ---------------------------------------------;
prompt;

start requetes/select2.sql

prompt ---------------------------------------------;
prompt --------- 3. Les utilisateurs n'ayant jamais mis une ;
prompt ------ note inférieure à 8 à un objet culturel.;
prompt ---------------------------------------------;
prompt;

start requetes/select3.sql

prompt ---------------------------------------------;
prompt --------- 4. L'objet culturel le plus commenté ;
prompt ------- au cours de la dernière semaine.;
prompt ---------------------------------------------;
prompt;

start requetes/select4.sql

prompt ---------------------------------------------;
prompt --------- 5. Pour chaque utilisateur ayant au moins noté des objets sur 3;
prompt ------  mois consécutifs au cours de l'année précédente (par exemple, ;
prompt ------ une note a été ajoutée en juin, en juillet et en aout),;
prompt ------ indiquer son nombre d'objets possédés, son nombre d'objets à acheter, ;
prompt ------ la longueur minimale, maximale et moyenne de ses collections.;
prompt ---------------------------------------------;

start requetes/select5.sql

prompt;
prompt -------------------------------------------------------------------;
prompt --------------------------- FIN DU TEST ---------------------------;
prompt -------------------------------------------------------------------;
prompt;

