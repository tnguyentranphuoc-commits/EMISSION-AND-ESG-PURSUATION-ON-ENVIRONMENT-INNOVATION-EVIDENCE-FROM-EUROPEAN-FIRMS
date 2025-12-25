*** PRELIMINARY TEST 
sum eis esgc es cgbc_dummy abc_dummy cbc_dummy CFI cceocd_dummy ceobm_dummy bfp_dummy LPI bgd bbs_dummy BSDI FYY LIQUIDITY TCSO LTD

pwcorr  eis esgc es cgbc_dummy abc_dummy cbc_dummy CFI cceocd_dummy ceobm_dummy bfp_dummy LPI bgd bbs_dummy BSDI FYY LIQUIDITY TCSO LTD

xtcdf eis esgc es cgbc_dummy abc_dummy cbc_dummy CFI cceocd_dummy ceobm_dummy bfp_dummy LPI bgd bbs_dummy BSDI FYY LIQUIDITY TCSO LTD

***OLS-FEM-REM (without governances) 
*EQUATION 1:
*OLS
regress eis esgc FYY LIQUIDITY TCSO LTD_i
est sto o1
vif 
estat hettest
*FEM
xtreg eis esgc FYY LIQUIDITY TCSO LTD_i, fe
est sto ff1
*REM
xtreg eis esgc FYY LIQUIDITY TCSO LTD_i, re
est sto rr1
hausman ff1 rr1
xttest0 
xttest2 
xtserial eis esgc FYY LIQUIDITY TCSO LTD_i
esttab o1 ff1 rr1, star(* 0.1 ** 0.05 *** 0.01) replace

*EQUATION 2:
*OLS
regress eis es FYY LIQUIDITY TCSO LTD_i
est sto o2
vif 
estat hettest
*FEM
xtreg eis es FYY LIQUIDITY TCSO LTD_i, fe
est sto ff2
*REM
xtreg eis es FYY LIQUIDITY TCSO LTD_i, re
est sto rr2
hausman ff2 rr2
xttest0 
xttest2 
xtserial eis es FYY LIQUIDITY TCSO LTD_i
esttab o2 ff2 rr2, star(* 0.1 ** 0.05 *** 0.01)replace

*EQUATION 3:
regress eis esgc es FYY LIQUIDITY TCSO LTD_i
est sto o3
vif 
estat hettest
*FEM
xtreg eis esgc es FYY LIQUIDITY TCSO LTD_i, fe
est sto ff3
*REM
xtreg eis esgc es FYY LIQUIDITY TCSO LTD_i, re
est sto rr3
hausman ff3 rr3
xttest0 
xttest2 

xtserial eis esgc es FYY LIQUIDITY TCSO LTD_i
esttab o3 ff3 rr3, star(* 0.1 ** 0.05 *** 0.01) replace

esttab o1 ff1 rr1 o2 ff2 rr2 o3 ff3 rr3, star(* 0.1 ** 0.05 *** 0.01) replace

***OLS-FEM-REM (with governances) 
*EQUATION 4:
*regress eis esgc CFI FYY LIQUIDITY TCSO LTD_i
*regress eis esgc LPI FYY LIQUIDITY TCSO LTD_i
*regress eis esgc BSDI FYY LIQUIDITY TCSO LTD_i
*OLS
reg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i
est sto o4
vif
estat hettest
*FEM
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i, fe
est sto ff4
*REM
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i, re
est sto rr4
hausman ff4 rr4
xttest0 
xttest2 
xtserial eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i
esttab o4 ff4 rr4, star(* 0.1 ** 0.05 *** 0.01) replace

*EQUATION 5:
*regress eis es CFI FYY LIQUIDITY TCSO LTD_i
*regress eis es LPI FYY LIQUIDITY TCSO LTD_i
*regress eis es BSDI FYY LIQUIDITY TCSO LTD_i
*OLS
reg eis es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i
est sto o5
vif
estat hettest
*FEM
xtreg eis es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i, fe
est sto ff5
*REM
xtreg eis es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i, re
est sto rr5
hausman ff5 rr5
xttest0 
xttest2 
xtserial eis es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i
esttab o5 ff5 rr5, star(* 0.1 ** 0.05 *** 0.01) replace

*EQUATION 6:
*regress eis esgc es CFI FYY LIQUIDITY TCSO LTD_i
*regress eis esgc es LPI FYY LIQUIDITY TCSO LTD_i
*regress eis esgc es BSDI FYY LIQUIDITY TCSO LTD_i

*OLS
reg eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i
est sto o6
vif
estat hettest
*FEM
xtreg eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i, fe
est sto ff6
*REM
xtreg eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i, re
est sto rr6
hausman ff6 rr6
xttest0 
xttest2 
xtserial eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i
esttab o6 ff6 rr6, star(* 0.1 ** 0.05 *** 0.01) replace

esttab o4 ff4 rr4 o5 ff5 rr5 o6 ff6 rr6, star(* 0.1 ** 0.05 *** 0.01) replace
*** EFFECT TEST 
TEST 
i.year
i.Firm
i.country 
i.industry

*EQUATION 1:
xtreg eis esgc FYY LIQUIDITY TCSO LTD_i i.year, re
testparm i.year
xtreg eis esgc FYY LIQUIDITY TCSO LTD_i i.Firm, re
testparm i.Firm
xtreg eis esgc FYY LIQUIDITY TCSO LTD_i i.country_id, re
testparm i.country_id
xtreg eis esgc FYY LIQUIDITY TCSO LTD_i i.industry_id, re
testparm i.industry_id

=> xtreg eis esgc FYY LIQUIDITY TCSO LTD_i i.year i.industry_id, re

*EQUATION 2:
xtreg eis es FYY LIQUIDITY TCSO LTD_i i.year, re
testparm i.year
xtreg eis es FYY LIQUIDITY TCSO LTD_i i.Firm, re
testparm i.Firm
xtreg eis es FYY LIQUIDITY TCSO LTD_i i.country_id, re
testparm i.country_id
xtreg eis es FYY LIQUIDITY TCSO LTD_i i.industry_id, re
testparm i.industry_id
*EQUATION 3:
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.year, re
testparm i.year
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.Firm, re
testparm i.Firm
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.country_id, re
testparm i.country_id
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.industry_id, re
testparm i.industry_id
*EQUATION 4:
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.year, re
testparm i.year
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.Firm, re
testparm i.Firm
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.country_id, re
testparm i.country_id
xtreg eis esgc CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.industry_id, re
testparm i.industry_id
*EQUATION 5:
xtreg eis es CFI FYY LIQUIDITY TCSO LTD_i i.year, re
testparm i.year
xtreg eis es CFI FYY LIQUIDITY TCSO LTD_i i.Firm, re
testparm i.Firm
xtreg eis es CFI FYY LIQUIDITY TCSO LTD_i i.country_id, re
testparm i.country_id
xtreg eis es CFI FYY LIQUIDITY TCSO LTD_i i.industry_id, re
testparm i.industry_id
*EQUATION 6:
xtreg eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.year, re
testparm i.year
xtreg eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.Firm, re
testparm i.Firm
xtreg eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.country_id, re
testparm i.country_id
xtreg eis esgc es CFI LPI BSDI FYY LIQUIDITY TCSO LTD_i i.industry_id, re
testparm i.industry_id



TAKEN
*LINEAR: FGLS - PCSE (without governances) 
*FGLS 
*EQUATION 1:
xtgls eis esgc FYY LIQUIDITY TCSO LTD_i i.year i.industry_id i.country_id,panels(h)  corr(psar1)
est store fgls001

*EQUATION 2:
xtgls eis es FYY LIQUIDITY TCSO LTD_i i.year i.industry_id i.country_id,panels(h)  corr(psar1)
est store fgls002
*EQUATION 3:
xtgls eis esgc es FYY LIQUIDITY TCSO LTD_i i.year i.industry_id i.country_id,panels(h)  corr(psar1)
est store fgls003

 asdoc esttab fgls001 fgls002 fgls003, star(* 0.1 ** 0.05 *** 0.01) replace save(FGLS-PCSE001.doc)
*PCSE
*EQUATION 1:
xtpcse  eis esgc FYY LIQUIDITY TCSO LTD_i i.year i.industry_id i.country_id,  het corr(psar1)
est store pcse001
*EQUATION 2:
xtpcse  eis es FYY LIQUIDITY TCSO LTD_i i.year i.industry_id i.country_id, het corr(psar1)
est store pcse002
*EQUATION 3:

xtpcse eis esgc es FYY LIQUIDITY TCSO LTD_i i.year i.industry_id i.country_id, het corr(psar1)
est store pcse003

 
. asdoc esttab pcse001 pcse002 pcse003, star(* 0.1 ** 0.05 *** 0.01) replace save(FGLS-PCSE002.doc)

*FINAL 
asdoc esttab fgls001 pcse001 fgls002 pcse002 fgls003 pcse003, star(* 0.1 ** 0.05 *** 0.01) replace save(Direct.doc)
===========
*LINEAR: *FGLS  - PCSE (with governances) 
*INDICES
*(1) : CFI (DONE) 
*EQUATION 4:
xtgls eis esgc FYY LIQUIDITY TCSO LTD_i CFI_iii  i.year i.industry_id, panels(h) corr(ar1) force
est store fgls009
*EQUATION 5:
xtgls eis es FYY LIQUIDITY TCSO LTD_i CFI_iii i.year i.industry_id ,panels(h)  corr(ar1) force
est store fgls010
*EQUATION 6:
xtgls eis esgc es FYY LIQUIDITY TCSO LTD_i CFI_iii  i.year i.industry_id,panels(h)  corr(ar1) force
est store fgls011

esttab fgls009 fgls010 fgls011, star(* 0.1 ** 0.05 *** 0.01) replace

*(2) LPI (DONE) 
*EQUATION 4:
xtgls eis esgc FYY LIQUIDITY TCSO LTD_i LPI_iii i.year i.industry_id, panels(h) corr(ar1) force
est store fgls012
*EQUATION 5:
xtgls eis es FYY LIQUIDITY TCSO LTD_i LPI_iii i.year i.industry_id, panels(h) corr(psar1) force
est store fgls013

*EQUATION 6:
xtgls eis esgc es FYY LIQUIDITY TCSO LTD_i LPI_iii i.year i.industry_id, panels(h) corr(ar1) force
est store fgls014

esttab fgls012 fgls013 fgls014, star(* 0.1 ** 0.05 *** 0.01) replace

*(3) BSDI (DONE)
*EQUATION 4:
xtgls eis esgc FYY LIQUIDITY TCSO LTD_i BSDI_iii ,  i.year i.industry_id, panels(h) corr(independent) force
est store fgls015
*EQUATION 5:
xtgls eis es FYY LIQUIDITY TCSO LTD_i BSDI_iii i.year i.industry_id ,panels(h)  corr(ar1) force
est store fgls016
*EQUATION 6:
xtgls eis esgc es FYY LIQUIDITY TCSO LTD_i BSDI_iii i.year i.industry_id ,panels(h)  corr(independent) force
est store fgls017

esttab fgls015 fgls016 fgls017, star(* 0.1 ** 0.05 *** 0.01) replace
*=== ROBUSTNESS CHECK ( SEMI-VỮNG ) 
*(1) : CFI
*EQUATION 4:
xtpcse eis esgc FYY LIQUIDITY TCSO LTD_i CFI_iii i.year i.industry_id, het corr(ar1)
est store pcse004
*EQUATION 5:
xtpcse eis es FYY LIQUIDITY TCSO LTD_i CFI_iii i.year i.industry_id, het corr(ar1)
est store pcse005
*EQUATION 6:
xtpcse eis esgc es FYY LIQUIDITY TCSO LTD_i CFI_iii i.year i.industry_id, het corr(ar1)
est store pcse006

esttab pcse004 pcse005 pcse006, star(* 0.1 ** 0.05 *** 0.01) replace

*FINAL 
esttab fgls009 pcse004 fgls010 pcse005 fgls011 pcse006, star(* 0.1 ** 0.05 *** 0.01) replace

*(2) LPI
*EQUATION 4:
xtpcse eis esgc FYY LIQUIDITY TCSO LTD_i LPI_iii i.year i.industry_id, het corr(ar1)
est store pcse007
*EQUATION 5:
xtpcse eis es FYY LIQUIDITY TCSO LTD_i LPI_iii i.year i.industry_id, het corr(ar1)
est store pcse008
*EQUATION 6:
xtpcse eis esgc es FYY LIQUIDITY TCSO LTD_i LPI_iii i.year i.industry_id, het corr(ar1)
est store pcse009

esttab pcse007 pcse008 pcse009, star(* 0.1 ** 0.05 *** 0.01) replace
*FINAL 
esttab fgls012 pcse007 fgls013 pcse008 fgls014 pcse009, star(* 0.1 ** 0.05 *** 0.01) replace

*(3) BSDI
*EQUATION 4:
xtpcse eis esgc FYY LIQUIDITY TCSO LTD_i BSDI_iii i.year i.industry_id, het corr(psar1)
est store pcse010
*EQUATION 5:
xtpcse eis es FYY LIQUIDITY TCSO LTD_i BSDI_iii i.year i.industry_id, het corr(ar1)
est store pcse011
*EQUATION 6:
xtpcse eis esgc es FYY LIQUIDITY TCSO LTD_i BSDI_iii i.year i.industry_id, het corr(ar1)
est store pcse012

esttab pcse010 pcse011 pcse012, star(* 0.1 ** 0.05 *** 0.01) replace
*FINAL 
esttab fgls015 pcse010 fgls016 pcse011 fgls017 pcse012, star(* 0.1 ** 0.05 *** 0.01) replace
===========
*FINAL 
esttab fgls009 pcse004 fgls010 pcse005 fgls011 pcse006, star(* 0.1 ** 0.05 *** 0.01) replace
*FINAL 
esttab fgls012 pcse007 fgls013 pcse008 fgls014 pcse009, star(* 0.1 ** 0.05 *** 0.01) replace
*FINAL 
esttab fgls015 pcse010 fgls016 pcse011 fgls017 pcse012, star(* 0.1 ** 0.05 *** 0.01) replace
*SYNERGY: *FGLS  - PCSE (with governances) 
*INDICES
*(1) CFI
*EQUATION 7:
xtgls eis esgc FYY LIQUIDITY TCSO LTD_i ESGC_CFIi i.year i.industry_id, panels(h) corr(psar1) force
est store fgls021
*EQUATION 8:
xtgls eis es FYY LIQUIDITY TCSO LTD_i ES_CFIi  i.year i.industry_id, panels(h) corr(ar1) force
est store fgls022

*(2)  LPI
*EQUATION 7:
xtgls eis esgc FYY LIQUIDITY TCSO LTD_i ESGC_LPIi i.year i.industry_id, panels(h) corr(psar1) force
est store fgls023
*EQUATION 8:
xtgls eis es FYY LIQUIDITY TCSO LTD_i ES_LPIi i.year i.industry_id, panels(h) corr(psar1) force
est store fgls024
*(3) BSDI
*EQUATION 7:
xtgls eis esgc FYY LIQUIDITY TCSO LTD_i ESGC_BSDIi  i.year i.industry_id, panels(h) corr(psar1) force
est store fgls025
*EQUATION 8:
xtgls eis es FYY LIQUIDITY TCSO LTD_i ES_BSDIi i.year i.industry_id, panels(h) corr(psar1) force
est store fgls026

. asdoc esttab , star(* 0.1 ** 0.05 *** 0.01) replace save(FGLS-PCSE007.doc)

*=== ROBUSTNESS CHECK 
*(1)
*EQUATION 7:
xtpcse eis esgc FYY LIQUIDITY TCSO LTD_i ESGC_CFIi i.year i.industry_id, het corr(ar1) pairwise
est store pcse016
*EQUATION 8:
xtpcse eis es FYY LIQUIDITY TCSO LTD_i ES_CFIi i.year i.industry_id, het corr(ar1) pairwise
est store pcse017

esttab fgls021 pcse016 fgls022 pcse017, star(* 0.1 ** 0.05 *** 0.01) replace

*(2)
*EQUATION 7:
xtpcse eis esgc FYY LIQUIDITY TCSO LTD_i ESGC_LPIi i.year i.industry_id, het corr(ar1) pairwise
est store pcse019
*EQUATION 8:
xtpcse eis es FYY LIQUIDITY TCSO LTD_i ES_LPIi i.year i.industry_id, het corr(ar1) pairwise
est store pcse020

esttab fgls023 pcse019 fgls024 pcse020, star(* 0.1 ** 0.05 *** 0.01) replace
*(3)
*EQUATION 7:
xtpcse eis esgc FYY LIQUIDITY TCSO LTD_i ESGC_BSDIi i.year i.industry_id, het corr(psar1) pairwise
est store pcse022
*EQUATION 8:
xtpcse eis es FYY LIQUIDITY TCSO LTD_i ES_BSDIi i.year i.industry_id, het corr(ar1) pairwise
est store pcse023
esttab fgls025 pcse022 fgls026 pcse023, star(* 0.1 ** 0.05 *** 0.01) replace

*FINAL 
esttab fgls021 pcse016 fgls022 pcse017, star(* 0.1 ** 0.05 *** 0.01) replace
*FINAL 
esttab fgls023 pcse019 fgls024 pcse020, star(* 0.1 ** 0.05 *** 0.01) replace
*FINAL 
esttab fgls025 pcse022 fgls026 pcse023, star(* 0.1 ** 0.05 *** 0.01) replace

