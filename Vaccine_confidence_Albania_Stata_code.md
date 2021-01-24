Vaccine confidence and timeliness of childhood immunisation by health information source, socioeconomic, and geographic characteristics in Albania: 2017-2018 Demographic and Health Survey analysis
========================================================================================================

Daniela Mayerová (1), Kaja Abbas (2)

1 Faculty of Epidemiology and Population Health, London School of Hygiene & Tropical Medicine, London, WC1E 7HT, United Kingdom

2 Department of Infectious Disease Epidemiology, London School of Hygiene & Tropical Medicine, London, WC1E 7HT, United Kingdom




**STATA CODE:**

**Descriptive analysis of the dataset including all observations and crude OR of vaccine confidence**:

summarize v005 if internet==0

display r(sum)

summarize v005 if internet==1

display r(sum)

svy:proportion internet

svy:proportion conf, over(internet)

svy:logistic conf i.internet


summarize v005 if vaccinetrust==1

display r(sum)

summarize v005 if vaccinetrust==2

display r(sum)

summarize v005 if vaccinetrust==3

display r(sum)

summarize v005 if vaccinetrust==4

display r(sum)

svy:proportion vaccinetrust

svy:proportion conf, over(vaccinetrust)

svy:logistic conf i.vaccinetrust

summarize v005 if agecat3==0

display r(sum)

summarize v005 if agecat3==1

display r(sum)

summarize v005 if agecat3==2

display r(sum)

svy:proportion agecat3

svy:proportion conf, over(agecat3)

svy:logistic conf i.agecat3

summarize v005 if edu_mother_higher==1

display r(sum)

summarize v005 if edu_mother_higher==2

display r(sum)

summarize v005 if edu_mother_higher==3

display r(sum)

summarize v005 if edu_mother_higher==4

display r(sum)

svy:proportion edu_mother_higher

svy:proportion conf, over(edu_mother_higher)

svy:logistic conf i.edu_mother_higher

summarize v005 if ethni3==1

display r(sum)

summarize v005 if ethni3==2

display r(sum)

summarize v005 if ethni3==3

display r(sum)

svy:proportion ethni3

svy:proportion conf, over(ethni3)

svy:logistic conf i.ethni3

summarize v005 if relig3==1

display r(sum)

summarize v005 if relig3==2

display r(sum)

summarize v005 if relig3==3

display r(sum)

svy:proportion relig3

svy:proportion conf, over(relig3)

svy:logistic conf i.relig3

summarize v005 if married==0

display r(sum)

summarize v005 if married==1

display r(sum)

svy:proportion married

svy:proportion conf, over(married)

svy:logistic conf i.married

summarize v005 if b4==1

display r(sum)

summarize v005 if b4==2

display r(sum)

svy:proportion b4

svy:proportion conf, over(b4)

svy:logistic conf i.b4

summarize v005 if bord==1

display r(sum)

summarize v005 if bord==2

display r(sum)

summarize v005 if bord==3

display r(sum)

svy:proportion bord

svy:proportion conf, over(bord)

svy:logistic conf i.bord

summarize v005 if work12==0

display r(sum)

summarize v005 if work12==1

display r(sum)

svy:proportion work12

svy:proportion conf, over(work12)

svy:logistic conf i.work12

summarize v005 if v190==1

display r(sum)

summarize v005 if v190==2

display r(sum)

summarize v005 if v190==3

display r(sum)

summarize v005 if v190==4

display r(sum)

summarize v005 if v190==5

display r(sum)

svy:proportion v190

svy:proportion conf, over(v190)

svy:logistic conf i.v190

summarize v005 if v151==1

display r(sum)

summarize v005 if v151==2

display r(sum)

svy:proportion v151

svy:proportion conf, over(v151)

svy:logistic conf i.v151

summarize v005 if edu_husband_higher==1

display r(sum)

summarize v005 if edu_husband_higher==2

display r(sum)

summarize v005 if edu_husband_higher==3

display r(sum)

summarize v005 if edu_husband_higher==4

display r(sum)

svy:proportion edu_husband_higher

svy:proportion conf, over(edu_husband_higher)

svy:logistic conf i.edu_husband_higher

summarize v005 if work12_husband==0

display r(sum)

svy:proportion work12_husband

svy:proportion conf, over(work12_husband)

svy:logistic conf i.work12_husband

summarize v005 if residence==1

display r(sum)

summarize v005 if residence==2

display r(sum)

svy:proportion residence

svy:proportion conf, over(residence)

svy: logistic conf ib11.residence

summarize v005 if prefecture==1

display r(sum)

summarize v005 if prefecture==2

display r(sum)

summarize v005 if prefecture==3

display r(sum)

summarize v005 if prefecture==4

display r(sum)

summarize v005 if prefecture==5

display r(sum)

summarize v005 if prefecture==6

display r(sum)

summarize v005 if prefecture==7

display r(sum)

summarize v005 if prefecture==8

display r(sum)

summarize v005 if prefecture==9

display r(sum)

summarize v005 if prefecture==10

display r(sum)

summarize v005 if prefecture==11

display r(sum)

summarize v005 if prefecture==12

display r(sum)

svy:proportion prefecture

svy:proportion conf, over(prefecture)

svy: logistic conf ib11.prefecture


summarize v005 if s513==1

display r(sum)

summarize v005 if s513==2

display r(sum)

summarize v005 if s513==3

display r(sum)

summarize v005 if s513==4

display r(sum)

summarize v005 if s513==5

display r(sum)

summarize v005 if s513==6

display r(sum)

svy:proportion s513

summarize v005 if s515==1

display r(sum)

summarize v005 if s515==2

display r(sum)

summarize v005 if s515==3

display r(sum)

summarize v005 if s515==4

display r(sum)

summarize v005 if s515==5

display r(sum)

summarize v005 if s515==6

display r(sum)

summarize v005 if s515==7

display r(sum)

svy:proportion s515



**Descriptive analysis of the dataset including observations with complete data on explanatory variables, crude OR, adjusted ORs from hierarchical multivariable logistic regression, test for interaction**:

summarize v005 if edu_mother_higher==1

display r(sum)

summarize v005 if edu_mother_higher==2

display r(sum)

summarize v005 if edu_mother_higher==3

display r(sum)

summarize v005 if edu_mother_higher==4

display r(sum)

svy:logistic conf i.edu_mother_higher

summarize v005 if ethni2==1

display r(sum)

summarize v005 if ethni2==2

display r(sum)

svy:logistic conf i.ethni2

summarize v005 if relig3==1

display r(sum)

summarize v005 if relig3==2

display r(sum)

summarize v005 if relig3==3

display r(sum)

svy:logistic conf i.relig3

summarize v005 if edu_husband_no_prim==1

display r(sum)

summarize v005 if edu_husband_no_prim==2

display r(sum)

summarize v005 if edu_husband_no_prim==3

display r(sum)

svy:logistic conf i.edu_husband_no_prim

summarize v005 if region==1

display r(sum)

summarize v005 if region==2

display r(sum)

summarize v005 if region==3

display r(sum)

svy: logistic conf i.region

summarize v005 if work12==0

display r(sum)

summarize v005 if work12==1

display r(sum)

svy:logistic conf i.work12

summarize v005 if work12_husband==0

display r(sum)

summarize v005 if work12_husband==1

display r(sum)

svy:logistic conf i.work12_husband

summarize v005 if internet==0

display r(sum)

summarize v005 if internet==1

display r(sum)

svy:logistic conf i.internet

svy:logistic conf i.edu_mother_higher i.ethni2 i.relig3 i.edu_husband_no_prim i.region

testparm i.edu_mother_higher

testparm i.relig3

testparm i.edu_husband_no_prim

testparm i.region

svy:logistic conf i.edu_mother_higher i.ethni2 i.relig3 i.edu_husband_no_prim i.region i.work12 i.work12_husband i.internet

testparm i.edu_mother_higher

testparm i.relig3

testparm i.edu_husband_no_prim

testparm i.region


svy:logistic conf i.edu_mother_higher##i.internet i.ethni2 i.relig3 i.edu_husband_no_prim i.region i.work12 i.work12_husband
testparm i.edu_mother_higher#i.internet

svy:logistic conf i.edu_mother_higher i.ethni2 i.relig3 i.edu_husband_no_prim i.region i.work12## i.work12_husband i.internet
testparm i.work12#i.work12_husband



**Sensitivity analysis**:

svy:proportion internet, over(births23)

svy:logistic births23 i.internet

svy:proportion vaccinetrust, over(births23)

svy:logistic births23 i.vaccinetrust

svy:proportion agecat3, over(births23)

svy:logistic births23 i.agecat3

svy:proportion edu_mother_higher, over(births23)

svy:logistic births23 i.edu_mother_higher

svy:proportion ethni3, over(births23)

svy:logistic births23 i.ethni3

svy:proportion relig3, over(births23)

svy:logistic births23 i.relig3

svy:proportion married, over(births23)

svy:logistic births23 i.married

svy:proportion work12, over(births23)

svy:logistic births23 i.work12

svy:proportion b4, over(births23)

svy:logistic births23 i.4b

svy:proportion v190, over(births23)

svy:logistic births23 i.v190

svy:proportion v151, over(births23)

svy:logistic births23 i.v151

svy:proportion edu_husband_higher, over(births23)

svy:logistic births23 i.edu_husband_higher

svy:proportion work12_husband, over(births23)

svy:logistic births23 i.work12_husband

svy:proportion residence, over(births23)

svy:logistic births23 i.residence

svy:proportion region, over(births23)

svy:logistic births23 i.region


