INTERFACE if_apj_dt_exec_object PUBLIC.
  CONSTANTS parameter TYPE c LENGTH 1 VALUE 'P'.

  TYPES:
    BEGIN OF ty_parameter_def,
      selname        TYPE c LENGTH 8,
      kind           TYPE c LENGTH 1,
      datatype       TYPE c LENGTH 1,
      length         TYPE i,
      param_text     TYPE c LENGTH 255,
      changeable_ind TYPE abap_bool,
    END OF ty_parameter_def.

  TYPES tt_parameter_def TYPE STANDARD TABLE OF ty_parameter_def WITH EMPTY KEY.

  TYPES:
    BEGIN OF ty_parameter_val,
      selname TYPE c LENGTH 8,
      kind    TYPE c LENGTH 1,
      sign    TYPE c LENGTH 1,
      option  TYPE c LENGTH 2,
      low     TYPE string,
      high    TYPE string,
    END OF ty_parameter_val.

  TYPES tt_parameter_val TYPE STANDARD TABLE OF ty_parameter_val WITH EMPTY KEY.

  METHODS get_parameters
    EXPORTING
      et_parameter_def TYPE tt_parameter_def
      et_parameter_val TYPE tt_parameter_val.

ENDINTERFACE.
