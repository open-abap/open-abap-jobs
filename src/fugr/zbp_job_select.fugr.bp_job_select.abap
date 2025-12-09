FUNCTION bp_job_select.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(JOBSELECT_DIALOG) TYPE  CHAR1
*"     VALUE(JOBSEL_PARAM_IN) TYPE  BTCSELECT
*"  TABLES
*"      JOBSELECT_JOBLIST STRUCTURE  TBTCJOB
*"  EXCEPTIONS
*"      INVALID_DIALOG_TYPE
*"      JOBNAME_MISSING
*"      NO_JOBS_FOUND
*"      SELECTION_CANCELED
*"      USERNAME_MISSING
*"----------------------------------------------------------------------


ENDFUNCTION.
