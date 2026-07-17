CLASS zcl_sri_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sri_insert IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA:it_dept TYPE TABLE OF zdbt_sri_dept,
       it_emp TYPE TABLE OF zdbt_sri_emp.


  it_dept = VALUE #(
  ( dept_id = 'D001' dept_name = 'Human Resources' location = 'Coimbatore' )
  ( dept_id = 'D002' dept_name = 'Information Technology' location = 'Chennai' ) ).
  INSERT zdbt_sri_dept FROM TABLE @it_dept.


  it_emp = VALUE #(
  ( emp_id = 'E001' first_name = 'Sri' last_name  = 'Monan' dept_id    = 'D001' )
  ( emp_id = 'E002' first_name = 'Arun' last_name  = 'Kumar' dept_id    = 'D001' )
  ( emp_id = 'E003' first_name = 'Praveen' last_name  = 'R' dept_id    = 'D002' ) ).
  INSERT zdbt_sri_emp FROM TABLE @it_emp.

  out->write( |Values are Insterted Successfully| ).

  ENDMETHOD.
ENDCLASS.
