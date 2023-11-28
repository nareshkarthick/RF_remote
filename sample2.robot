*** Settings ***
Library    SeleniumLibrary
Variables    E:/Automation/Datas/data.py  
Variables    E:/Automation/Datas/xpath.py



*** Variables ***
     

*** Test Cases***
TC02
#capture page screenshot
   Open Browser     ${URL_techlistic}    ${browser}
   Capture Page Screenshot
   Close Browser

TC03
#capture Element screenshot

    Open Browser     ${URL2_orangehrm}    ${browser}
    Maximize Browser Window
    Sleep    3
    Capture Element Screenshot    ${Xpath_capture_Element_Screenshot}
    Close Browser
       
TC04
#checkbox should not be selected
    Open Browser     ${URL3_demo_automationtesting}    ${browser}
    Checkbox Should Not Be Selected    ${Xpath_Checkbox_Should_Not_Be_Selected}
    Close Browser
TC05
#choose file
    Open Browser    ${URL_techlistic}    ${browser}
    Maximize Browser Window
    Scroll Element Into View    //button[@name="submit"]
    Choose File    ${Xpath_Button_choosefile}    E:/Automation/selenium-screenshot-1.png  
    sleep    3
    Close Browser      

TC06
#click element text
    Open Browser    ${URL4_saucedemo}    ${browser}
    Maximize Browser Window
    Sleep    3
    ${status}    Run Keyword And Return Status    Page Should Contain Element    //input[@id="login-button"]
    IF    ${status} == "True"
        Click Element    //input[@id="login-button"]
    ELSE
        Close Browser
    END
    sleep    3
    Close Browser


TC07
#click button
    Open Browser    ${URL2_orangehrm}    ${browser}
    Maximize Browser Window
    sleep    3
    Click Button    //button[@type="submit"]
    Close Browser

TC08
#click element
    Open Browser    ${URL4_saucedemo}    ${browser}
    Maximize Browser Window
    Sleep    2
    Click Element    //input[@id="login-button"]
    Close Browser

TC09
#click image
    Open Browser    ${URL2_orangehrm}    ${browser}
    Maximize Browser Window
    Sleep    3
    
    Input Text    //input[@name="username"]    Admin   
    Input Password    //input[@name="password"]    admin123 
    Click Button    //button[@type="submit"]
    Sleep    5
    Click Image    //img[@alt="client brand banner"]
    Wait Until Keyword Succeeds    5x    5s    Click Image    //img[@alt="client brand banner"]  

    Close Browser

 TC10  
 #click link
     Open Browser    ${URL7_car}    ${browser}
     Click Link    (//a[@data-matarget="algo"])[1]
     sleep    3
     Close Browser

*** Keywords ***
open
    Open Browser    ${URL2_orangehrm}    ${browser}
    Maximize Browser Window
    Sleep    3