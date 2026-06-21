CLASS cl_apj_rt_api DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    TYPES ty_job_status TYPE c LENGTH 1.
    TYPES ty_job_status_text TYPE c LENGTH 255.
    TYPES ty_jobcount TYPE c LENGTH 8.
    TYPES ty_jobname TYPE c LENGTH 32.

    CLASS-METHODS get_job_status
      IMPORTING
        iv_jobname         TYPE ty_jobname
        iv_jobcount        TYPE ty_jobcount
      EXPORTING
        ev_job_status      TYPE ty_job_status
        ev_job_status_text TYPE ty_job_status_text
      RAISING
        cx_apj_rt.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS cl_apj_rt_api IMPLEMENTATION.
  METHOD get_job_status.
    ev_job_status = 'F'.
    ev_job_status_text = |Job { iv_jobname }/{ iv_jobcount } finished|.
  ENDMETHOD.
ENDCLASS.
