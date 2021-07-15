***setting***
Library   SeleniumLibrary
Resource  ../resources/object_repository.robot
Resource  ../resources/keyword.robot
Test setup   Test case start    ${url}
Test Teardown   Test case end


***variable***
${url}      https://www.sugarcrm.com/au/request-demo/



***test case***
explicit wait explaination
    Wait Until Page Contains    The Sugar Platform Suite
   wait Until Page Contains Element         xpath://input[@type='submit']
#   wait Until Page Location Is          https://www.sugarcrm.com/au/request-demo/
