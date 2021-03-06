SET HEAD OFF
SET TERM OFF
SET ECHO OFF
SET FEEDBACK OFF
SET TRIMSPOOL ON
SET COLSEP ";"
spool ${ficdata}
set linesize 2000;
column date_appel format a8
select 
TO_CHAR(STAT_DEB_APPEL,'YYYYMMDD') date_appel,
TO_CHAR(STAT_NB_IDENT_AUTORISE),
TO_CHAR(STAT_ETAT_NUM_ANI),
TO_CHAR(STAT_ETAT_NUM_SAISIE),
To_CHAR(STAT_ETAT_NB_SAISIE),
TO_CHAR(STAT_SVI_QUALIF),
TO_CHAR(STAT_NOTE_NUM_ANI),
TO_CHAR(STAT_FLUX),
TO_CHAR(STAT_PREF_ROUTAGE),
TO_CHAR(STAT_CAT),
TO_CHAR(STAT_NOTE_NUM_SAISIE),
TO_CHAR(STAT_BASE_GEO),
TO_CHAR(STAT_PLAT),
TO_CHAR(STAT_CIBLE),
TO_CHAR(STAT_BASE_BDD),
TO_CHAR(STAT_CLIENT)
from
P29B_STATS
where 
to_char(STAT_DEB_APPEL,'DD/MM/YYYY') = to_char(sysdate -1,'DD/MM/YYYY')
  ; 
spool off
