***setting***
Library   SeleniumLibrary
Force Tags      IFELSELOOP
Test setup   Test case start    ${url}
Test Teardown   Test case end
Resource  ../resources/keyword.robot
Resource  ../resources/object_repository.robot

***variable***

${url}  https://www.saucedemo.com/

***keyword***
Test Keyword1
    Log To Console    Its failed

Test Keyword2
    Log To Console      Its passed

Test Keyword3
    Log To Console      Its passed

***test case***
IF else implementation
    Input Text      //input[@id='user-name']    standard_user
    input Text      //input[@id='password']     secret_sauce
    Click Button    //input[@id='login-button']
    ${elementcount}     Get Element Count       //div[@class='inventory_list']/div
    Log To Console      ${elementcount}
    Run Keyword IF    ${elementcount} == 10    Test Keyword1
...   ELSE IF    ${elementcount} > 10   Test Keyword2
...   ELSE    Test Keyword3