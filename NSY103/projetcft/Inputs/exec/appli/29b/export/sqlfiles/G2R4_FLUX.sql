SET HEAD OFF
SET TERM OFF
SET ECHO OFF
SET FEEDBACK OFF
SET TRIMSPOOL ON
SET COLSEP ";"
spool ${ficdata}
set linesize 2000;
select 
TO_CHAR(FLUX_CODE),
TO_CHAR(FLUX_LIBEL)
from
G2R4_FLUX
  ; 
spool off
