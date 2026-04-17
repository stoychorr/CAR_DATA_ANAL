* Encoding: UTF-8.
* For old database (if merged)
*Bulgara specifically

*SELECT IF (Country = 3 AND XDATE.YEAR(T3) = 2014). 
*EXECUTE.

* weight the database

WEIGHT BY weight.

* Susceptibility index

compute aa8=A8.
EXECUTE.
compute aa15=A15.
EXECUTE.

recode aa8 (1 thru 2=3).
recode aa15 (1 thru 2=3).
EXECUTE. 

compute skl=0.
EXECUTE. 

if (aa8=3 and aa15=3) skl=1.
if (aa8=4 and aa15=4) skl=2.
if (aa8=3 and aa15=4) skl=3.
if (aa8=4 and aa15=3) skl=3.
EXECUTE. 

VALUE LABELS skl
  1 "Susceptible to corruption"
  2 "Not susceptible to corruption"
  3 "Mixed behavior".

RECODE skl (0 = SYSMIS).

EXECUTE.

FREQUENCIES VARIABLES=skl
  /ORDER=ANALYSIS.

* INVOLVEMENT INDEX

COMPUTE NNaa13a = A13A.
COMPUTE NNaa13b = A13B.
COMPUTE NNaa13c = A13C.

RECODE NNaa13a NNaa13b NNaa13c
  (1 THRU 2 = 3)
  (SYSMIS = 20).

COUNT IIct = NNaa13a NNaa13b NNaa13c (3).

RECODE IIct (2 THRU 3 = 1).

IF (NNaa13a = 9) IIct = 9.
IF (NNaa13b = 9) IIct = 9.
IF (NNaa13c = 9) IIct = 9.

IF (NNaa13a = 20) IIct = 20.
IF (NNaa13b = 20) IIct = 20.
IF (NNaa13c = 20) IIct = 20.

VALUE LABELS IIct
  0 "Did not give bribe"
  1 "Gave bribe"
  20 "No contact with admin"
  9 "DK/NA".

VARIABLE LABELS IIct "Involvement in corruption".
EXECUTE.

FREQUENCIES VARIABLES=IIct
  /ORDER=ANALYSIS.

* Corruption pressure index

COMPUTE NNaa12a = A12A.
COMPUTE NNaa12b = A12B.

RECODE NNaa12a NNaa12b (1 THRU 2 = 3).

COUNT IPress = NNaa12a NNaa12b (3).
RECODE IPress (2 = 1).

IF (NNaa12a = 8) IPress = 8.
IF (NNaa12b = 8) IPress = 8.
IF (NNaa12a = 9) IPress = 9.
IF (NNaa12b = 9) IPress = 9.

VALUE LABELS IPress
  0 "No corruption pressure"
  1 "Experienced corruption pressure"
  8 "No contact with administration"
  9 "DK/NA".

VARIABLE LABELS IPress "Experience with corruption pressure".

FREQUENCIES VARIABLES = IPress.

EXECUTE.

* Acceptability (tolerance) of corrupt behaviour

COUNT Ix1 = A9A A9B A9C A9D A10A A10B A10C A10D (1,2).
VARIABLE LABELS Ix1 "Tolerance of corruption practices (Acceptability)".

RECODE Ix1
  (1 THRU 8 = 2)
  (0 = 1)
  INTO Ix2.

VARIABLE LABELS Ix2 "Tolerance of corruption practices (Acceptability)".
FREQUENCIES VARIABLES = Ix2.
EXECUTE.

* Likelihood of corruption pressure 

COMPUTE likely = 2.

*  If any item indicates pressure give high likelihood 

IF (ANY(a3a,1,2) OR ANY(a3b,1,2) OR ANY(a3c,1,2)) likely = 1.

VARIABLE LABELS likely "Likelihood of corruption pressure".

VALUE LABELS likely
  1 "High likelihood"
  2 "Low likelihood".

EXECUTE.

FREQUENCIES VARIABLES =  likely.

* Corruptness of official

* Recode A4 block (invert scale).

RECODE
  A4A A4B A4C A4D A4E A4F A4G A4H A4I A4J A4K A4L A4M A4N A4O A4P A4Q A4R A4S A4T A4U A4V A4W
  (1 = 4) (2 = 3) (3 = 2) (4 = 1) (9 = SYSMIS)
INTO
  A4A_r A4B_r A4C_r A4D_r A4E_r A4F_r A4G_r A4H_r A4I_r A4J_r A4K_r A4L_r A4M_r A4N_r A4O_r
  A4P_r A4Q_r A4R_r A4S_r A4T_r A4U_r A4V_r A4W_r.

VARIABLE LABELS
  A4A_r "A4A Journalists (inverted)"
  A4B_r "A4B Teachers (inverted)"
  A4C_r "A4C University officials or professors (inverted)"
  A4D_r "A4D Officials at ministries (inverted)"
  A4E_r "A4E Municipal officials (inverted)"
  A4F_r "A4F Administration officials in judicial system (inverted)"
  A4G_r "A4G Judges (inverted)"
  A4H_r "A4H Public prosecutors (inverted)"
  A4I_r "A4I Investigating officers (inverted)"
  A4J_r "A4J Lawyers (inverted)"
  A4K_r "A4K Police officers (inverted)"
  A4L_r "A4L Customs officers (inverted)"
  A4M_r "A4M Tax officials (inverted)"
  A4N_r "A4N Members of parliament (inverted)"
  A4O_r "A4O Ministers (inverted)"
  A4P_r "A4P Municipal councilors (inverted)"
  A4Q_r "A4Q Business people (inverted)"
  A4R_r "A4R Doctors (inverted)"
  A4S_r "A4S Political party and coalition leaders (inverted)"
  A4T_r "A4T Local political leaders (inverted)"
  A4U_r "A4U NGO representatives (inverted)"
  A4V_r "A4V Bankers (inverted)"
  A4W_r "A4W Officials in state agencies (inverted)".

* General corruption index

COMPUTE corr_general = MEAN.1(
  A4A_r, A4B_r, A4C_r, A4D_r, A4E_r, A4F_r, A4G_r, A4H_r, A4I_r, A4J_r,
  A4K_r, A4L_r, A4M_r, A4N_r, A4O_r, A4P_r, A4Q_r, A4R_r, A4S_r, A4T_r,
  A4U_r, A4V_r, A4W_r
).

VARIABLE LABELS corr_general
  "General corruption perception index (inverted A4 scale, 1-4)".

EXECUTE.

DESCRIPTIVES VARIABLES = corr_general
  /STATISTICS = MEAN STDDEV MIN MAX.

* Old-style selected descriptives

COMPUTE political_elite_old = MEAN.1(A4N_r, A4O_r).

VARIABLE LABELS political_elite_old
  "Political elite (old: MPs + Ministers)".

DESCRIPTIVES VARIABLES =
  A4N_r political_elite_old A4L_r A4O_r A4D_r
  /STATISTICS = MEAN STDDEV MIN MAX.

* New clusters

COMPUTE political_elite = MEAN.1(A4N_r, A4O_r, A4S_r, A4T_r).
COMPUTE central_admin = MEAN.1(A4D_r, A4W_r).
COMPUTE local_admin = MEAN.1(A4E_r, A4P_r).
COMPUTE judiciary = MEAN.1(A4F_r, A4G_r, A4H_r, A4I_r).
COMPUTE enforcement     = MEAN.1(A4K_r, A4L_r, A4M_r).
COMPUTE professions  = MEAN.1(A4J_r, A4R_r, A4V_r).
COMPUTE education  = MEAN.1(A4A_r, A4B_r, A4C_r).
COMPUTE business  = MEAN.1(A4Q_r).
COMPUTE civil_society  = MEAN.1(A4U_r).

VARIABLE LABELS
  political_elite "Political elite (MPs, ministers, party and local political leaders)"
  central_admin   "Central administration (ministries, state agencies)"
  local_admin     "Local administration (municipal officials, municipal councilors)"
  judiciary       "Judiciary (judicial administration, judges, prosecutors, investigators)"
  enforcement     "Enforcement and revenue agencies (police, customs, tax)"
  professions     "Professional groups (lawyers, doctors, bankers)"
  education       "Education and knowledge actors (journalists, teachers, university officials)"
  business        "Business people"
  civil_society   "NGO representatives".

EXECUTE.

DESCRIPTIVES VARIABLES =
  political_elite central_admin local_admin judiciary enforcement
  professions education business civil_society
  /STATISTICS = MEAN STDDEV MIN MAX.

*For th general corruption levels 

DESCRIPTIVES VARIABLES=corr_general 
  /STATISTICS=MEAN STDDEV MIN MAX.

* Recode education (collapse Low + Medium vs High).
RECODE D3
  (1 THRU 5 = 1)
  (6 THRU 8 = 0)
  (9 = SYSMIS)
  INTO educ_lowmed.

VARIABLE LABELS educ_lowmed "Education (Low+Medium vs High)".

VALUE LABELS educ_lowmed
  0 "High"
  1 "Low + Medium".

EXECUTE.

* Recode income (Low+Middle vs High).
RECODE D25B
  (1 THRU 9 = 1)
  (10 THRU 13 = 0)
  (97 THRU 99 = SYSMIS)
  INTO income_lowmed.

VARIABLE LABELS income_lowmed "Income (Low+Middle vs High)".

VALUE LABELS income_lowmed
  0 "High"
  1 "Low + Middle".

LOGISTIC REGRESSION VARIABLES IIct 
  /METHOD=ENTER income_lowmed educ_lowmed 
  /CONTRAST (educ_lowmed)=Indicator 
  /CONTRAST (income_lowmed)=Indicator 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).
