* Encoding: UTF-8.
RECODE A2 (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A2_R.
RECODE A3A A3B A3C (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A3A_R A3B_R A3C_R.
RECODE A4A A4B A4C A4D A4E A4F A4G A4H A4I A4J A4K A4L A4M A4N A4O A4P A4Q A4R A4S A4T A4U A4V A4W (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A4A_R A4B_R A4C_R A4D_R A4E_R A4F_R A4G_R A4H_R A4I_R A4J_R A4K_R A4L_R A4M_R A4N_R A4O_R A4P_R A4Q_R A4R_R A4S_R A4T_R A4U_R A4V_R A4W_R.
RECODE A8 (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A8_R.
RECODE A9A A9B A9C A9D (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A9A_R A9B_R A9C_R A9D_R.
RECODE A10A A10B A10C A10D (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A10A_R A10B_R A10C_R A10D_R.
RECODE A12A A12B (1=4)(2=3)(3=2)(4=1)(8=SYSMIS)(ELSE=SYSMIS) INTO A12A_R A12B_R.
RECODE A13A A13B A13C (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A13A_R A13B_R A13C_R.
RECODE A15 (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO A15_R.
RECODE L_PROC_A L_PROC_B L_PROC_C (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO L_PROC_A_R L_PROC_B_R L_PROC_C_R.
RECODE L_LOB (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO L_LOB_R.
RECODE SC4 (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO SC4_R.
RECODE E1_PART_A E1_PART_B E1_PART_C (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO E1_PART_A_R E1_PART_B_R E1_PART_C_R.
RECODE J5_CON_A J5_CON_B J5_CON_C (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO J5_CON_A_R J5_CON_B_R J5_CON_C_R.
RECODE SC1A SC1B SC1C SC1D (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO SC1A_R SC1B_R SC1C_R SC1D_R.
RECODE SC2A SC2B SC2C SC2D SC2E SC2F (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO SC2A_R SC2B_R SC2C_R SC2D_R SC2E_R SC2F_R.
RECODE SC3 (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO SC3_R.
RECODE SC6 (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO SC6_R.
RECODE J4 (1=4)(2=3)(3=2)(4=1)(ELSE=SYSMIS) INTO J4_R.
EXECUTE.

VARIABLE LABELS
  A2_R 'Corruption prevalence public sector RECODED'
  A3A_R 'Likelihood giving cash to official RECODED'
  A3B_R 'Likelihood giving gift to official RECODED'
  A3C_R 'Likelihood doing favor for official RECODED'
  A4A_R 'Corruption journalists RECODED'
  A4B_R 'Corruption teachers RECODED'
  A4C_R 'Corruption university officials RECODED'
  A4D_R 'Corruption ministry officials RECODED'
  A4E_R 'Corruption municipal officials RECODED'
  A4F_R 'Corruption judicial admin officials RECODED'
  A4G_R 'Corruption judges RECODED'
  A4H_R 'Corruption prosecutors RECODED'
  A4I_R 'Corruption investigating officers RECODED'
  A4J_R 'Corruption lawyers RECODED'
  A4K_R 'Corruption police RECODED'
  A4L_R 'Corruption customs RECODED'
  A4M_R 'Corruption tax officials RECODED'
  A4N_R 'Corruption MPs RECODED'
  A4O_R 'Corruption ministers RECODED'
  A4P_R 'Corruption municipal councillors RECODED'
  A4Q_R 'Corruption businessmen RECODED'
  A4R_R 'Corruption doctors RECODED'
  A4S_R 'Corruption party leaders RECODED'
  A4T_R 'Corruption local political leaders RECODED'
  A4U_R 'Corruption NGO representatives RECODED'
  A4V_R 'Corruption bankers RECODED'
  A4W_R 'Corruption state agency officials RECODED'
  A8_R 'Readiness to accept bribe as official RECODED'
  A9A_R 'Acceptability free lunch MPs RECODED'
  A9B_R 'Acceptability favor MPs RECODED'
  A9C_R 'Acceptability gifts MPs RECODED'
  A9D_R 'Acceptability cash MPs RECODED'
  A10A_R 'Acceptability free lunch officials RECODED'
  A10B_R 'Acceptability favor officials RECODED'
  A10C_R 'Acceptability gifts officials RECODED'
  A10D_R 'Acceptability cash officials RECODED'
  A12A_R 'Frequency direct bribe requests RECODED'
  A12B_R 'Frequency indirect bribe expectations RECODED'
  A13A_R 'Frequency giving cash to official RECODED'
  A13B_R 'Frequency giving gift to official RECODED'
  A13C_R 'Frequency doing favor for official RECODED'
  A15_R 'Readiness to pay bribe if demanded RECODED'
  L_PROC_A_R 'Fast track procedures frequency RECODED'
  L_PROC_B_R 'Formal RIA frequency RECODED'
  L_PROC_C_R 'Lobbyist authored laws frequency RECODED'
  L_LOB_R 'Politicians avoid lobbying rules RECODED'
  SC4_R 'Public resources benefit small groups RECODED'
  E1_PART_A_R 'Targeted state inspections frequency RECODED'
  E1_PART_B_R 'Rigged procurement frequency RECODED'
  E1_PART_C_R 'Bureaucratic bias frequency RECODED'
  J5_CON_A_R 'Likelihood loyal judicial appointments RECODED'
  J5_CON_B_R 'Likelihood convenient judge assignment RECODED'
  J5_CON_C_R 'Likelihood politicians shielded from prosecution RECODED'
  SC1A_R 'Russian influence on politics RECODED'
  SC1B_R 'Chinese influence on politics RECODED'
  SC1C_R 'US influence on politics RECODED'
  SC1D_R 'EC influence on politics RECODED'
  SC2A_R 'Foreign business deals frequency RECODED'
  SC2B_R 'Foreign political donations frequency RECODED'
  SC2C_R 'Foreign SOE involvement frequency RECODED'
  SC2D_R 'Foreign disinformation campaigns frequency RECODED'
  SC2E_R 'Foreign bribes to officials frequency RECODED'
  SC2F_R 'Foreign coercion of officials frequency RECODED'
  SC3_R 'Elites acting for foreign governments RECODED'
  SC6_R 'Foreign corrupt influence on foreign policy RECODED'
  J4_R 'Possibility to influence court outcome RECODED'.
EXECUTE.

FREQUENCIES VARIABLES=A2_R A4A_R A8_R L_PROC_A_R SC4_R J5_CON_A_R SC1A_R J4_R
  /ORDER=ANALYSIS.

RECODE SC5
  (1=0)(5=0)(2=0.67)(3=0.67)(4=1)(9=SYSMIS)(ELSE=SYSMIS)
  INTO SC5_N.
VARIABLE LABELS SC5_N 'Whose interests prevail NORMALIZED'.
EXECUTE.


* Block A

COMPUTE A2_N = (A2_R - 1) / 3.
COMPUTE A3A_N = (A3A_R - 1) / 3.
COMPUTE A3B_N = (A3B_R - 1) / 3.
COMPUTE A3C_N = (A3C_R - 1) / 3.
COMPUTE A4A_N = (A4A_R - 1) / 3.
COMPUTE A4B_N = (A4B_R - 1) / 3.
COMPUTE A4C_N = (A4C_R - 1) / 3.
COMPUTE A4D_N = (A4D_R - 1) / 3.
COMPUTE A4E_N = (A4E_R - 1) / 3.
COMPUTE A4F_N = (A4F_R - 1) / 3.
COMPUTE A4G_N = (A4G_R - 1) / 3.
COMPUTE A4H_N = (A4H_R - 1) / 3.
COMPUTE A4I_N = (A4I_R - 1) / 3.
COMPUTE A4J_N = (A4J_R - 1) / 3.
COMPUTE A4K_N = (A4K_R - 1) / 3.
COMPUTE A4L_N = (A4L_R - 1) / 3.
COMPUTE A4M_N = (A4M_R - 1) / 3.
COMPUTE A4N_N = (A4N_R - 1) / 3.
COMPUTE A4O_N = (A4O_R - 1) / 3.
COMPUTE A4P_N = (A4P_R - 1) / 3.
COMPUTE A4Q_N = (A4Q_R - 1) / 3.
COMPUTE A4R_N = (A4R_R - 1) / 3.
COMPUTE A4S_N = (A4S_R - 1) / 3.
COMPUTE A4T_N = (A4T_R - 1) / 3.
COMPUTE A4U_N = (A4U_R - 1) / 3.
COMPUTE A4V_N = (A4V_R - 1) / 3.
COMPUTE A4W_N = (A4W_R - 1) / 3.
COMPUTE A8_N = (A8_R - 1) / 3.
COMPUTE A9A_N = (A9A_R - 1) / 3.
COMPUTE A9B_N = (A9B_R - 1) / 3.
COMPUTE A9C_N = (A9C_R - 1) / 3.
COMPUTE A9D_N = (A9D_R - 1) / 3.
COMPUTE A10A_N = (A10A_R - 1) / 3.
COMPUTE A10B_N = (A10B_R - 1) / 3.
COMPUTE A10C_N = (A10C_R - 1) / 3.
COMPUTE A10D_N = (A10D_R - 1) / 3.
COMPUTE A12A_N = (A12A_R - 1) / 3.
COMPUTE A12B_N = (A12B_R - 1) / 3.
COMPUTE A13A_N = (A13A_R - 1) / 3.
COMPUTE A13B_N = (A13B_R - 1) / 3.
COMPUTE A13C_N = (A13C_R - 1) / 3.
COMPUTE A15_N = (A15_R - 1) / 3.

* Block B

COMPUTE L_PROC_A_N = (L_PROC_A_R - 1) / 3.
COMPUTE L_PROC_B_N = (L_PROC_B_R - 1) / 3.
COMPUTE L_PROC_C_N = (L_PROC_C_R - 1) / 3.
COMPUTE L_LOB_N = (L_LOB_R - 1) / 3.
COMPUTE SC4_N = (SC4_R - 1) / 3.
COMPUTE E1_PART_A_N = (E1_PART_A_R - 1) / 3.
COMPUTE E1_PART_B_N = (E1_PART_B_R - 1) / 3.
COMPUTE E1_PART_C_N = (E1_PART_C_R - 1) / 3.
COMPUTE J5_CON_A_N = (J5_CON_A_R - 1) / 3.
COMPUTE J5_CON_B_N = (J5_CON_B_R - 1) / 3.
COMPUTE J5_CON_C_N = (J5_CON_C_R - 1) / 3.
COMPUTE SC1A_N = (SC1A_R - 1) / 3.
COMPUTE SC1B_N = (SC1B_R - 1) / 3.
COMPUTE SC1C_N = (SC1C_R - 1) / 3.
COMPUTE SC1D_N = (SC1D_R - 1) / 3.
COMPUTE SC2A_N = (SC2A_R - 1) / 3.
COMPUTE SC2B_N = (SC2B_R - 1) / 3.
COMPUTE SC2C_N = (SC2C_R - 1) / 3.
COMPUTE SC2D_N = (SC2D_R - 1) / 3.
COMPUTE SC2E_N = (SC2E_R - 1) / 3.
COMPUTE SC2F_N = (SC2F_R - 1) / 3.
COMPUTE SC3_N = (SC3_R - 1) / 3.
COMPUTE SC6_N = (SC6_R - 1) / 3.
COMPUTE J4_N = (J4_R - 1) / 3.

* Block D - Trust variables use original (already correct direction)

COMPUTE D51A_N = (D51A - 1) / 3.
COMPUTE D51B_N = (D51B - 1) / 3.
COMPUTE D51C_N = (D51C - 1) / 3.
COMPUTE D51D_N = (D51D - 1) / 3.
COMPUTE D51E_N = (D51E - 1) / 3.
COMPUTE D51F_N = (D51F - 1) / 3.
COMPUTE D51G_N = (D51G - 1) / 3.
COMPUTE D51H_N = (D51H - 1) / 3.
COMPUTE D51I_N = (D51I - 1) / 3.
COMPUTE D51J_N = (D51J - 1) / 3.
COMPUTE D51K_N = (D51K - 1) / 3.
COMPUTE D51L_N = (D51L - 1) / 3.
COMPUTE D51M_N = (D51M - 1) / 3.
COMPUTE D51N_N = (D51N - 1) / 3.
COMPUTE D51O_N = (D51O - 1) / 3.
COMPUTE D51P_N = (D51P - 1) / 3.
COMPUTE D51Q_N = (D51Q - 1) / 3.
COMPUTE D51R_N = (D51R - 1) / 3.
COMPUTE D51S_N = (D51S - 1) / 3.
COMPUTE D51T_N = (D51T - 1) / 3.
COMPUTE D51U_N = (D51U - 1) / 3.
COMPUTE D51V_N = (D51V - 1) / 3.
COMPUTE D51W_N = (D51W - 1) / 3.
COMPUTE J6_RES_N = (J6_RES - 1) / 3.
EXECUTE.

VARIABLE LABELS
  A2_N 'Corruption prevalence public sector NORMALIZED'
  A3A_N 'Likelihood giving cash NORMALIZED'
  A3B_N 'Likelihood giving gift NORMALIZED'
  A3C_N 'Likelihood doing favor NORMALIZED'
  A4A_N 'Corruption journalists NORMALIZED'
  A4B_N 'Corruption teachers NORMALIZED'
  A4C_N 'Corruption university officials NORMALIZED'
  A4D_N 'Corruption ministry officials NORMALIZED'
  A4E_N 'Corruption municipal officials NORMALIZED'
  A4F_N 'Corruption judicial admin NORMALIZED'
  A4G_N 'Corruption judges NORMALIZED'
  A4H_N 'Corruption prosecutors NORMALIZED'
  A4I_N 'Corruption investigating officers NORMALIZED'
  A4J_N 'Corruption lawyers NORMALIZED'
  A4K_N 'Corruption police NORMALIZED'
  A4L_N 'Corruption customs NORMALIZED'
  A4M_N 'Corruption tax officials NORMALIZED'
  A4N_N 'Corruption MPs NORMALIZED'
  A4O_N 'Corruption ministers NORMALIZED'
  A4P_N 'Corruption municipal councillors NORMALIZED'
  A4Q_N 'Corruption businessmen NORMALIZED'
  A4R_N 'Corruption doctors NORMALIZED'
  A4S_N 'Corruption party leaders NORMALIZED'
  A4T_N 'Corruption local political leaders NORMALIZED'
  A4U_N 'Corruption NGO representatives NORMALIZED'
  A4V_N 'Corruption bankers NORMALIZED'
  A4W_N 'Corruption state agency officials NORMALIZED'
  A8_N 'Readiness to accept bribe NORMALIZED'
  A9A_N 'Acceptability free lunch MPs NORMALIZED'
  A9B_N 'Acceptability favor MPs NORMALIZED'
  A9C_N 'Acceptability gifts MPs NORMALIZED'
  A9D_N 'Acceptability cash MPs NORMALIZED'
  A10A_N 'Acceptability free lunch officials NORMALIZED'
  A10B_N 'Acceptability favor officials NORMALIZED'
  A10C_N 'Acceptability gifts officials NORMALIZED'
  A10D_N 'Acceptability cash officials NORMALIZED'
  A12A_N 'Frequency direct bribe requests NORMALIZED'
  A12B_N 'Frequency indirect bribe expectations NORMALIZED'
  A13A_N 'Frequency giving cash NORMALIZED'
  A13B_N 'Frequency giving gift NORMALIZED'
  A13C_N 'Frequency doing favor NORMALIZED'
  A15_N 'Readiness to pay bribe NORMALIZED'
  L_PROC_A_N 'Fast track procedures NORMALIZED'
  L_PROC_B_N 'Formal RIA NORMALIZED'
  L_PROC_C_N 'Lobbyist authored laws NORMALIZED'
  L_LOB_N 'Politicians avoid lobbying rules NORMALIZED'
  SC4_N 'Public resources benefit small groups NORMALIZED'
  E1_PART_A_N 'Targeted state inspections NORMALIZED'
  E1_PART_B_N 'Rigged procurement NORMALIZED'
  E1_PART_C_N 'Bureaucratic bias NORMALIZED'
  J5_CON_A_N 'Likelihood loyal judicial appointments NORMALIZED'
  J5_CON_B_N 'Likelihood convenient judge assignment NORMALIZED'
  J5_CON_C_N 'Likelihood politicians shielded NORMALIZED'
  SC1A_N 'Russian influence NORMALIZED'
  SC1B_N 'Chinese influence NORMALIZED'
  SC1C_N 'US influence NORMALIZED'
  SC1D_N 'EC influence NORMALIZED'
  SC2A_N 'Foreign business deals NORMALIZED'
  SC2B_N 'Foreign political donations NORMALIZED'
  SC2C_N 'Foreign SOE involvement NORMALIZED'
  SC2D_N 'Foreign disinformation NORMALIZED'
  SC2E_N 'Foreign bribes to officials NORMALIZED'
  SC2F_N 'Foreign coercion NORMALIZED'
  SC3_N 'Elites acting for foreign governments NORMALIZED'
  SC6_N 'Foreign corrupt influence NORMALIZED'
  J4_N 'Court outcome influence NORMALIZED'
  D51A_N 'Trust journalists NORMALIZED'
  D51B_N 'Trust teachers NORMALIZED'
  D51C_N 'Trust university officials NORMALIZED'
  D51D_N 'Trust ministry officials NORMALIZED'
  D51E_N 'Trust municipal officials NORMALIZED'
  D51F_N 'Trust judicial admin NORMALIZED'
  D51G_N 'Trust judges NORMALIZED'
  D51H_N 'Trust prosecutors NORMALIZED'
  D51I_N 'Trust investigating officers NORMALIZED'
  D51J_N 'Trust lawyers NORMALIZED'
  D51K_N 'Trust police NORMALIZED'
  D51L_N 'Trust customs NORMALIZED'
  D51M_N 'Trust tax officials NORMALIZED'
  D51N_N 'Trust MPs NORMALIZED'
  D51O_N 'Trust ministers NORMALIZED'
  D51P_N 'Trust municipal councillors NORMALIZED'
  D51Q_N 'Trust businessmen NORMALIZED'
  D51R_N 'Trust doctors NORMALIZED'
  D51S_N 'Trust party leaders NORMALIZED'
  D51T_N 'Trust local political leaders NORMALIZED'
  D51U_N 'Trust NGO representatives NORMALIZED'
  D51V_N 'Trust bankers NORMALIZED'
  D51W_N 'Trust state agency officials NORMALIZED'
 J6_RES_N 'Judiciary protects citizens NORMALIZED'.
EXECUTE.

COMPUTE SC7_1 = $SYSMIS.
COMPUTE SC7_2 = $SYSMIS.
COMPUTE SC7_3 = $SYSMIS.
COMPUTE SC7_4 = $SYSMIS.
COMPUTE SC7_5 = $SYSMIS.
IF (SC7 = 1) SC7_1 = 1.
IF (SC7 = 2) SC7_2 = 1.
IF (SC7 = 3) SC7_3 = 1.
IF (SC7 = 4) SC7_4 = 1.
IF (SC7 = 5) SC7_5 = 1.
IF (SC7 NE 1 AND NOT SYSMIS(SC7)) SC7_1 = 0.
IF (SC7 NE 2 AND NOT SYSMIS(SC7)) SC7_2 = 0.
IF (SC7 NE 3 AND NOT SYSMIS(SC7)) SC7_3 = 0.
IF (SC7 NE 4 AND NOT SYSMIS(SC7)) SC7_4 = 0.
IF (SC7 NE 5 AND NOT SYSMIS(SC7)) SC7_5 = 0.

VARIABLE LABELS
  SC7_1 'SC7 Dummy: Corruption among politicians'
  SC7_2 'SC7 Dummy: Foreign influence'
  SC7_3 'SC7 Dummy: Institutional capture'
  SC7_4 'SC7 Dummy: Lack of accountability'
  SC7_5 'SC7 Dummy: Weak rule of law'.
EXECUTE.

