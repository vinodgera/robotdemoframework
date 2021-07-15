*** setting ***
Library   SeleniumLibrary
Resource  ../resources/object_repository.robot
Resource  ../resources/keyword.robot
Test setup   Test case start    ${url}
Test Teardown   Test case end


***variable***
${url}      https://www.sugarcrm.com/au/request-demo/


*** test cases***
handing the selenium speed and the timeout

    ${genrictimeout}=   Get Selenium Timeout
    ${genricspeed}=     Get Selenium Speed
    set selenium speed   4s
        Scroll Element Into View    //div[@id='field9']/div/input


