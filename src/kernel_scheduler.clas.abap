CLASS kernel_scheduler DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS kernel_scheduler IMPLEMENTATION.

  METHOD run.
    DO.
      WRITE / 'El planificador del kernel está en ejecución... Buscando trabajos'.
      WAIT UP TO 1 SECONDS.
    ENDDO.
  ENDMETHOD.

ENDCLASS.