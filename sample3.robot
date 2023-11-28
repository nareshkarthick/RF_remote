*** Settings ***
Library    SeleniumLibrary
Variables    E:/Automation/Datas/data.py  
Variables    E:/Automation/Datas/xpath.py

*** Variables ***



*** Test Cases ***
TC01
#checkbox
    Open Browser    ${URL3_demo_automationtesting}    ${browser}
    Sleep    3
     
    Select Checkbox    //input[@id="checkbox1"]
    Checkbox Should Be Selected    //input[@id="checkbox1"]
    Page Should Contain Checkbox    //input[@id="checkbox1"] 
      
    
    Sleep    2
    Close Browser
    