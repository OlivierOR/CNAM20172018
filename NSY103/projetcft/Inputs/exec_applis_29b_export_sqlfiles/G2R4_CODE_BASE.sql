SET HEAD OFF
SET TERM OFF
SET ECHO OFF
SET FEEDBACK OFF
SET TRIMSPOOL ON
SET COLSEP ";"
spool ${ficdata}
set linesize 2000;
select 
TO_CHAR(BAS_CODE),
TO_CHAR(BAS_LIBEL),
TO_CHAR(GEO_LIBEL)
from
G2R4_CODES_BASE , G2R4_GEO
where
G2R4_GEO.GEO_CODE  = G2R4_CODES_BASE.GEO_CODE 
  ; 
spool off
