 ******** data with additional vars from OI *********
import delimited "/Users/smritisaini/Downloads/mrc_table10.csv", clear
keep super_opeid name state zip county tier ipeds_enrollment_2013 sticker_price_2013 sat_avg_2013 scorecard_netprice_2013 black_share_fall_2000 hisp_share_fall_2000 pct*
foreach x of var tier ipeds_enrollment_2013 sticker_price_2013 sat_avg_2013 scorecard_netprice_2013 black_share_fall_2000 hisp_share_fall_2000 pct_arthuman_2000 pct_business_2000 pct_health_2000 pct_multidisci_2000 pct_stem_2000 pct_publicsocial_2000 pct_socialscience_2000 pct_tradepersonal_2000 { 
rename `x' v_`x' 
} 
br zip 
rename name instnm
rename zip zipcode
drop super_opeid

gen name = instnm 
generate str name_string = name 
replace name = ""
compress name
replace name = name_string
drop name_string

drop instnm 
rename name instnm
save "/Users/smritisaini/Desktop/OI_CollegeData.dta", replace


*********** social capital data ************

import delimited "/Users/smritisaini/Downloads/social_capital_college.csv", clear
rename college_name instnm 
rename zip zipcode

save "/Users/smritisaini/Desktop/SECdata.dta", replace

**********college scorecard data *************

import delimited "/Users/smritisaini/Downloads/Most-Recent-Cohorts-Institution.csv", encoding(ISO-8859-2) clear

** keepin useful schools
keep if inlist(highdeg, 3, 4)
keep if control != 3


gen zipcode = zip 
replace zipcode = "0" + zipcode if length(zipcode) <= 4
replace zipcode = substr(zipcode,1,5)
destring zipcode, replace

duplicates tag instnm zipcode , gen (tag2)

 duplicates drop instnm zipcode, force
 
 merge 1:1 instnm zipcode using "/Users/smritisaini/Desktop/SECdata.dta"

/*
  Result                           # of obs.
    -----------------------------------------
    not matched                         1,666
        from master                       714  (_merge==1)
        from using                        952  (_merge==2)

    matched                             1,634  (_merge==3)
    -----------------------------------------
*/


 drop if _merge ==2 

rename satvrmid  sat_mid_read
rename satmtmid  sat_mid_math
rename actcmmid  act_mid_cumulative
rename actenmid  act_mid_english
rename actmtmid  act_mid_math
rename actwrmid  act_mid_writing
rename sat_avg  sat_avg 
rename ugds  ug_enrol

rename npt41_pub  nprice_pub_cat1
rename npt42_pub  nprice_pub_cat2
rename npt43_pub  nprice_pub_cat3
rename npt44_pub  nprice_pub_cat4
rename npt45_pub  nprice_pub_cat5
rename npt41_priv  nprice_pvt_cat1
rename npt42_priv  nprice_pvt_cat2
rename npt43_priv  nprice_pvt_cat3
rename npt44_priv  nprice_pvt_cat4
rename npt45_priv  nprice_pvt_cat5
rename costt4_a  avg_cost_attendance

rename c150_4  completion_rate
rename grad_debt_mdn  grad_debt_median
rename lo_inc_debt_mdn  grad_debt_med_LY
rename md_inc_debt_mdn  grad_debt_med_MY
rename hi_inc_debt_mdn  grad_debt_med_HY
rename faminc  avg_familyincome
rename median_hh_inc   median_householdincome
rename grads  number_gradstudent
rename md_earn_wne_p6 median_earn_aftr6yr

rename ec_own_ses_college own_sc_low
rename ec_parent_ses_college parent_sc_low
rename ec_high_own_ses_college own_sc_high
rename ec_high_parent_ses_college parent_sc_high

keep adm_rate sat_mid* act_mid* sat_avg ug_enrol nprice_pub_cat* nprice_pvt_cat* avg_cost_attendance* completion grad_debt_median grad_debt_med* avg_familyincome median_householdincome number_gradstudent female married median_earn_aftr6yr instnm city stabbr zip latitude longitude zipcode own_sc_low parent_sc_low own_sc_high parent_sc_high _merge 


merge 1:1 instnm zipcode using "/Users/smritisaini/Desktop/OI_CollegeData.dta"


