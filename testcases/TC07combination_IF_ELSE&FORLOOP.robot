***setting***
Force tags   SugarCRMDEMOPAGE
Library  SeleniumLibrary
Test setup   Test case start    ${url}
Test Teardown   Test case end
Resource  ../resources/object_repository.robot
Resource  ../resources/keyword.robot
Library           String

***variable***
${url}   https://rahulshettyacademy.com/AutomationPractice/

***keyword***
Test Keyword1
    Select Checkbox    //input[@id='checkBoxOption2']


***test cases***
If else loop combination with for loop

    @{checkboxs}    Get WebElements     //input[@type='checkbox']
    FOR    ${uniquecheckbox}   IN    @{checkboxs}
           ${text}      Get Value   ${uniquecheckbox}
           ${text1}=     Convert To String   ${text}
           Log TO Console   ${text1}
#           Run Keyword IF    ${text1} == option1    Test Keyword1
    END




