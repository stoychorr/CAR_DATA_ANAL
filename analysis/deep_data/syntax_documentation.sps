* Encoding: UTF-8.
* CORRUPTION IN HIGHER EDUCATION 
 
 WEIGHT BY weight_final.

* 1. CORE INDICES

* Higher education corruption (robust to missing).

  COMPUTE corr_highed = MEAN.1(A4B, A4C).
  EXECUTE.

* General corruption perception.

  COMPUTE corr_general = MEAN.1(A4D TO A4W).
  EXECUTE.

* Tolerance (norms).

  COMPUTE tolerance_index = MEAN.1(A9A TO A10D).
  EXECUTE.

* Experience / exposure.

  COMPUTE experience_index = MEAN.1(A12A, A12B, A13A, A13B, A13C).
  EXECUTE.

* Trust → convert to distrust (higher = worse).

  COMPUTE trust_highed = MEAN.1(D51B, D51C).
  COMPUTE distrust_highed = 5 - trust_highed.
  EXECUTE.

* State capture / systemic corruption.

  COMPUTE state_capture = MEAN.1(L_PROC_A, L_PROC_B, L_PROC_C, L_LOB, SC4).
  EXECUTE.

* 2. CLEAN URBAN VARIABLE
* Convert string to numeric.

  AUTORECODE VARIABLES=urban /INTO urban_num.
  EXECUTE.

* Check mapping 
  FREQUENCIES VARIABLES=urban urban_num.

* Create dummies .
* Assumption: 1=City, 2=Town, 3=Rural.

COMPUTE urban_town  = (urban_num = 2).
COMPUTE urban_rural = (urban_num = 3).
EXECUTE.

* DESCRIPTIVES (TABLE 1)

DESCRIPTIVES VARIABLES=
corr_highed corr_general tolerance_index experience_index distrust_highed state_capture
/STATISTICS=MEAN STDDEV MIN MAX.

* GROUP DIFFERENCES
* By education.

  ONEWAY corr_highed BY D3.
  ONEWAY tolerance_index BY D3.
  ONEWAY experience_index BY D3.

* Urban vs others (sanity check).

  MEANS TABLES=corr_highed BY urban_num
  /CELLS MEAN COUNT STDDEV.

* RELIABILITY (OPTIONAL BUT GOOD)

RELIABILITY
/VARIABLES=A4B A4C
/SCALE('HigherEd corruption') ALL.

* MAIN REGRESSION

REGRESSION
/DEPENDENT corr_highed
/METHOD=ENTER tolerance_index distrust_highed urban_town urban_rural D1 D2 D3.

REGRESSION
/DEPENDENT corr_highed
/METHOD=ENTER tolerance_index experience_index distrust_highed urban_town urban_rural D1 D2 D3.

* EXTENDED MODEL (SYSTEMIC EFFECTS)

REGRESSION
/DEPENDENT corr_highed
/METHOD=ENTER tolerance_index experience_index distrust_highed state_capture urban_town urban_rural D1 D2 D3.

*-----------------------------*
* 8. QUICK ROBUSTNESS CHECK
  *-----------------------------*

REGRESSION
/DEPENDENT corr_general
/METHOD=ENTER tolerance_index experience_index distrust_highed state_capture urban_town urban_rural D1 D2 D3.

*additional analysis 

RECODE D3
(1 2 3 4 = 1)   /* Primary + Basic + Secondary */
(5 = 2)       /* Semi-higher */
(6 7 8= 3)   /* Higher education */
INTO edu_group.

VARIABLE LABELS edu_group "Education (collapsed: 3 groups)".
VALUE LABELS edu_group
1 "Low–Medium"
2 "Semi-higher"
3 "Higher".

EXECUTE.

ONEWAY tolerance_index BY edu_group
/STATISTICS DESCRIPTIVES
/POSTHOC = BONFERRONI.

*Quick tests to see if the regression results will change if we modify the D3 question
*M1

REGRESSION
/DEPENDENT corr_highed
/METHOD=ENTER tolerance_index distrust_highed urban_town urban_rural D1 D2 edu_group.

*M2

REGRESSION
/DEPENDENT corr_highed
/METHOD=ENTER tolerance_index experience_index distrust_highed urban_town urban_rural D1 D2 edu_group.

*M3

REGRESSION
/DEPENDENT corr_highed
/METHOD=ENTER tolerance_index experience_index distrust_highed state_capture urban_town urban_rural D1 D2 edu_group.

*M4

REGRESSION
/DEPENDENT corr_general
/METHOD=ENTER tolerance_index experience_index distrust_highed state_capture urban_town urban_rural D1 D2 edu_group.

* END