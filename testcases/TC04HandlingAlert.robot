***setting***
Library   SeleniumLibrary
Resource  ../resources/object_repository.robot
Resource  ../resources/keyword.robot
Test setup   Test case start    ${url}
Test Teardown   Test case end


***variable***
${url}      https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert


***Test Case***
TC04 handling alert

    select frame   id:iframeResult
    click button   //button[@onclick='myFunction()']
    sleep   5s
    Handle alert    accept   timeout= 2s
#    Handle alert    dismiss
#    Handle alert    leave


