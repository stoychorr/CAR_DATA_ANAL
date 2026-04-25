* Encoding: UTF-8.
* CORRUPTION IN HIGHER EDUCATION 
 
 WEIGHT BY weight.

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

  MEANS TABLES=corr_highed BY D26
  /CELLS MEAN COUNT STDDEV.

* RELIABILITY (OPTIONAL BUT GOOD)

RELIABILITY
/VARIABLES=A4B A4C
/SCALE('HigherEd corruption') ALL.
* Collapse education to 2 categories (PhD merged with higher ed).

  RECODE D3
  (1 THRU 5 = 1)
  (6 THRU 8 = 2)
  (9 = SYSMIS)
  INTO educ_2cat.

VARIABLE LABELS educ_2cat "Education: low vs higher (incl. PhD)".

VALUE LABELS educ_2cat
  1 "Low education (No education to Semi-higher)"
  2 "Higher education (Bachelor, Master, PhD)".

EXECUTE.

* D26 (settlement), reference = highest category (e.g. 3).
COMPUTE D26_1 = (D26 = 1).
COMPUTE D26_2 = (D26 = 2).

EXECUTE.

* MAIN REGRESSION.

REGRESSION
  /DEPENDENT corr_highed
  /METHOD=ENTER tolerance_index distrust_highed D26 D1 D2 educ_2cat.

REGRESSION
  /DEPENDENT corr_highed
  /METHOD=ENTER tolerance_index experience_index distrust_highed D26_1 D26_2 D1 D2 educ_2cat.

* EXTENDED MODEL (SYSTEMIC EFFECTS).

REGRESSION
  /DEPENDENT corr_highed
  /METHOD=ENTER tolerance_index experience_index distrust_highed state_capture D26_1 D26_2 D1 D2 educ_2cat.

* QUICK ROBUSTNESS CHECK

REGRESSION
/DEPENDENT corr_general
/METHOD=ENTER tolerance_index experience_index distrust_highed state_capture D26_1 D26_1 D1 D2 D3.
/CATEGORICAL = D3 D26.

EXECUTE.

ONEWAY tolerance_index BY educ_2cat
/STATISTICS DESCRIPTIVES
/POSTHOC = BONFERRONI.
