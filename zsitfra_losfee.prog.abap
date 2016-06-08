REPORT zsitfra_losfee.

START-OF-SELECTION.
  SELECT * FROM zsitfra_prtcpnts INTO TABLE @DATA(participants).

  cl_demo_output=>display( name = |{ lines( participants ) } Participants (without organizing staff)|
                           data = participants ).

  DATA(rand) = cl_abap_random_int=>create( seed = CONV i( sy-uzeit )
                                           min = 1
                                           max = lines( participants ) ).

  DATA(winner) = participants[ rand->get_next( ) ].

  cl_demo_output=>display_text( |The winner is: { winner-name_first } { winner-name_last }| ).