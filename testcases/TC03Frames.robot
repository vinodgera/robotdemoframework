***setting***
Library   SeleniumLibrary
Resource  ../resources/object_repository.robot
Resource  ../resources/keyword.robot
Test setup   Test case start    ${url}
Test Teardown   Test case end


***variable***
${url}      https://the-internet.herokuapp.com/


***test cases***
TC03 framewwork

    sleep   5s
    press keys   //a[@href='/frames']   RETURN
    press keys   //a[contains(text(),'iFrame')]   RETURN
    select frame   id:mce_0_ifr
    Current Frame Should Contain   Your content goes here.
    Current Frame Should Not Contain   not here
    unselect frame
    Frame Should contain   id:mce_0_ifr   Your content goes here.

