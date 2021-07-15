***setting***
Library  SeleniumLibrary
Resource  ../resources/object_repository.robot


***Keyword***
Test case start
    [Arguments]    ${URL}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method     ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage


    Run Keyword If    os.sep == '/'    Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}    executable_path=C:\driver
    ...    ELSE    Create Webdriver    Chrome    my_alias    chrome_options=${chrome_options}
    # Maximize Browser Window  # doesn't work under XVFB
    #Set Window Size    1200    1000
   Go To    ${url}

Test case end
   close browser

Search bar
   [Arguments]   ${value}
   Input text   //input[@type='search']   ${value}

Sugar crm connect
   open browser   https://www.sugarcrm.com/au/request-demo/   Chrome

fill form
    [Arguments]   ${firstname}   ${lastname}   ${businessemail}   ${businessphonenumber}    ${companyname}   ${label1}   ${Jobtitle}
    Input text   //div[@id='field7']/div/input   ${firstname}
    Input text   //div[@id='field8']/div/input   ${lastname}
    Input text   //div[@id='field0']/div/input   ${businessemail}
    Input text   //div[@id='field25']/div/input   ${businessphonenumber}
    Input text   //div[@id='field26']/div/input   ${Jobtitle}
    Input text   //div[@id='field9']/div/input    ${companyname}
    Select From List By Label    //select[@class='element-container form-control mb-2']    ${label1}






