CLASS zsp_crud DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsp_crud IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

 data : lt_itab type  table of ztest_table_item.

 lt_itab  = VALUE #( ( emp_no = '10001' uuid = '990'  fname = 'Subham' lname = 'Panda' country = 'England' ) ).
*New comment added
 insert ztest_table_item from table @lt_itab.


*
    out->write( lt_itab ).

*    select emp_no, emp_name
*    from zcds_test_table
*    into table @data(lt_data).
*    if sy-subrc  is initial.
*      out->write( lt_data ).
*    endif.
  ENDMETHOD.
ENDCLASS.
