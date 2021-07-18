Childhood immunisation timeliness and vaccine confidence by health information source, maternal, socioeconomic, and geographic characteristics in Albania
========================================================================================================

Daniela Mayerová (1), Kaja Abbas (2)

1 Faculty of Epidemiology and Population Health, London School of Hygiene & Tropical Medicine, London, WC1E 7HT, United Kingdom

2 Department of Infectious Disease Epidemiology, London School of Hygiene & Tropical Medicine, London, WC1E 7HT, United Kingdom




**STATA CODE:**

**IMMUNISATION TIMELINESS**

**Descriptive analysis of the dataset including all observations and crude OR of immunisation timeliness**:

summarize v005 if internet==0

display r(sum)

summarize v005 if internet==1

display r(sum)

svy:proportion internet

svy:proportion time, over(internet)

svy:logistic time i.internet


summarize v005 if vaccinetrust==1

display r(sum)

summarize v005 if vaccinetrust==2

display r(sum)

summarize v005 if vaccinetrust==3

display r(sum)

summarize v005 if vaccinetrust==4

display r(sum)

svy:proportion vaccinetrust

svy:proportion time, over(vaccinetrust)

svy:logistic time i.vaccinetrust

summarize v005 if agecat3==0

display r(sum)

summarize v005 if agecat3==1

display r(sum)

summarize v005 if agecat3==2

display r(sum)

svy:proportion agecat3

svy:proportion time, over(agecat3)

svy:logistic time i.agecat3

summarize v005 if edu_mother_higher==1

display r(sum)

summarize v005 if edu_mother_higher==2

display r(sum)

summarize v005 if edu_mother_higher==3

display r(sum)

summarize v005 if edu_mother_higher==4

display r(sum)

svy:proportion edu_mother_higher

svy:proportion time, over(edu_mother_higher)

svy:logistic time i.edu_mother_higher

summarize v005 if ethni3==1

display r(sum)

summarize v005 if ethni3==2

display r(sum)

summarize v005 if ethni3==3

display r(sum)

svy:proportion ethni3

svy:proportion time, over(ethni3)

svy:logistic time i.ethni3

summarize v005 if relig3==1

display r(sum)

summarize v005 if relig3==2

display r(sum)

summarize v005 if relig3==3

display r(sum)

svy:proportion relig3

svy:proportion time, over(relig3)

svy:logistic time i.relig3

summarize v005 if married==0

display r(sum)

summarize v005 if married==1

display r(sum)

svy:proportion married

svy:proportion time, over(married)

svy:logistic time i.married

summarize v005 if b4==1

display r(sum)

summarize v005 if b4==2

display r(sum)

svy:proportion b4

svy:proportion time, over(b4)

svy:logistic time i.b4

summarize v005 if child_bord==1

display r(sum)

summarize v005 if child_bord==2

display r(sum)

summarize v005 if child_bord==3

display r(sum)

svy:proportion child_bord

svy:proportion time, over(child_bord)

svy:logistic time i.child_bord

summarize v005 if work12==0

display r(sum)

summarize v005 if work12==1

display r(sum)

svy:proportion work12

svy:proportion time, over(work12)

svy:logistic time i.work12

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

svy:proportion time, over(v190)

svy:logistic time i.v190

summarize v005 if v151==1

display r(sum)

summarize v005 if v151==2

display r(sum)

svy:proportion v151

svy:proportion time, over(v151)

svy:logistic time i.v151

summarize v005 if edu_husband_higher==1

display r(sum)

summarize v005 if edu_husband_higher==2

display r(sum)

summarize v005 if edu_husband_higher==3

display r(sum)

summarize v005 if edu_husband_higher==4

display r(sum)

svy:proportion edu_husband_higher

svy:proportion time, over(edu_husband_higher)

svy:logistic time i.edu_husband_higher

summarize v005 if work12_husband==0

display r(sum)

svy:proportion work12_husband

svy:proportion time, over(work12_husband)

svy:logistic time i.work12_husband

summarize v005 if residence==1

display r(sum)

summarize v005 if residence==2

display r(sum)

svy:proportion residence

svy:proportion time, over(residence)

svy: logistic time i.residence

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

svy:proportion time, over(prefecture)

svy: logistic time ib11.prefecture


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



**Descriptive analysis of the dataset including observations with complete data on explanatory variables, crude OR, adjusted ORs from hierarchical multivariable logistic regression**:

summarize v005 if edu_mother_higher==1

display r(sum)

summarize v005 if edu_mother_higher==2

display r(sum)

summarize v005 if edu_mother_higher==3

display r(sum)

summarize v005 if edu_mother_higher==4

display r(sum)

svy:logistic time i.edu_mother_higher

summarize v005 if edu_husband_higher==1

display r(sum)

summarize v005 if edu_husband_higher==2

display r(sum)

summarize v005 if edu_husband_higher==3

display r(sum)

summarize v005 if edu_husband_higher==4

display r(sum)

svy:logistic time i.edu_husband_higher

summarize v005 if region==1

display r(sum)

summarize v005 if region==2

display r(sum)

summarize v005 if region==3

display r(sum)

svy: logistic time i.region

summarize v005 if work12==0

display r(sum)

summarize v005 if work12==1

display r(sum)

svy:logistic time i.work12

summarize v005 if work12_husband==0

display r(sum)

summarize v005 if work12_husband==1

display r(sum)

svy:logistic time i.work12_husband

summarize v005 if internet==0

display r(sum)

summarize v005 if internet==1

display r(sum)

svy:logistic time i.internet

svy:logistic time i.edu_mother_higher i.edu_husband_higher i.region i.work12 i.work12_husband i.internet



**VACCINE CONFIDENCE**

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

summarize v005 if child_bord==1

display r(sum)

summarize v005 if child_bord==2

display r(sum)

summarize v005 if child_bord==3

display r(sum)

svy:proportion child_bord

svy:proportion conf, over(child_bord)

svy:logistic conf i.child_bord

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

svy: logistic conf i.residence

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



**Descriptive analysis of the dataset including observations with complete data on explanatory variables, crude OR, adjusted ORs from hierarchical multivariable logistic regression**:


summarize v005 if ethni3==1

display r(sum)

summarize v005 if ethni3==2

display r(sum)

svy:logistic conf i.ethni3


summarize v005 if region==1

display r(sum)

summarize v005 if region==2

display r(sum)

summarize v005 if region==3

display r(sum)

svy: logistic conf i.region

summarize v005 if married==0

display r(sum)

summarize v005 if married==1

display r(sum)

svy:logistic conf i.married

summarize v005 if internet==0

display r(sum)

summarize v005 if internet==1

display r(sum)

svy:logistic conf i.internet

svy:logistic conf i.internet i.married i.ethni3 i.region 





