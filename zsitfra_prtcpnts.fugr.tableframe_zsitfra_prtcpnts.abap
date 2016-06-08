*---------------------------------------------------------------------*
*    program for:   TABLEFRAME_ZSITFRA_PRTCPNTS
*   generation date: 10.03.2016 at 12:25:54
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
FUNCTION TABLEFRAME_ZSITFRA_PRTCPNTS   .

  PERFORM TABLEFRAME TABLES X_HEADER X_NAMTAB DBA_SELLIST DPL_SELLIST
                            EXCL_CUA_FUNCT
                     USING  CORR_NUMBER VIEW_ACTION VIEW_NAME.

ENDFUNCTION.