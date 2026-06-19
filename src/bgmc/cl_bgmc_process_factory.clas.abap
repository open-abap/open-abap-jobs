CLASS cl_bgmc_process_factory DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS get_default
      RETURNING
        VALUE(ro_factory) TYPE REF TO cl_bgmc_process_factory.

    METHODS create
      RETURNING
        VALUE(ro_process) TYPE REF TO if_bgmc_process_single_op.
ENDCLASS.

CLASS cl_bgmc_process_factory IMPLEMENTATION.

  METHOD create.
    ro_process = NEW cl_bgmc_process( ).
  ENDMETHOD.

  METHOD get_default.
    ro_factory = NEW cl_bgmc_process_factory( ).
  ENDMETHOD.

ENDCLASS.
