***Setting***
Force tags   SugarCRMDEMOPAGE
Library  SeleniumLibrary
Resource  ../resources/object_repository.robot
Resource  ../resources/keyword.robot
Test setup   Test case start    ${url}
Test Teardown   Test case end




***variable***
${firstname}    Vinod
${lastname}     Gera
${businessemail}        vinod.Gera@yaadbusiness.com
${businessphonenumber}    9999296171
${companyname}      india
${label1}       1 - 10 employees
${Jobtitle}    assitand employees
${url}      https://www.sugarcrm.com/au/request-demo/




***Test Case***
TC02SugarCRMgetdemopage
   sleep   5s

   fill form    ${firstname}   ${lastname}   ${businessemail}   ${businessphonenumber}    ${companyname}   ${label1}   ${Jobtitle}
   Capture Page Screenshot

