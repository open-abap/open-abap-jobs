CLASS cl_bgmc_process DEFINITION PUBLIC FINAL CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES if_bgmc_process_single_op.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA name TYPE string.
    DATA operation TYPE REF TO if_bgmc_op_single_tx_uncontr.
ENDCLASS.

CLASS cl_bgmc_process IMPLEMENTATION.

  METHOD if_bgmc_process_single_op~save_for_execution.
    IF operation IS BOUND.
      operation->execute( ).
    ENDIF.
  ENDMETHOD.

  METHOD if_bgmc_process_single_op~set_name.
    name = iv_name.
  ENDMETHOD.

  METHOD if_bgmc_process_single_op~set_operation_tx_uncontrolled.
    operation = iv_operation.
  ENDMETHOD.

ENDCLASS.
