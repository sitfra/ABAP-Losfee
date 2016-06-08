REPORT zstammtisch_losfee.

START-OF-SELECTION.
  DATA(rand) = cl_abap_random_int=>create( seed = CONV i( sy-uzeit )
                                           min = 1
                                           max = 19 ).
  DATA(winner) = rand->get_next( ).
  cl_demo_output=>display_text( |The winner is No: { winner }| ).