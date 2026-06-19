INTERFACE if_bgmc_process_single_op PUBLIC.
  METHODS set_operation_tx_uncontrolled
    IMPORTING
      iv_operation TYPE REF TO if_bgmc_op_single_tx_uncontr.

  METHODS set_name
    IMPORTING
      iv_name TYPE string.

  METHODS save_for_execution.
ENDINTERFACE.
