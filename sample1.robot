***settings***
Library    SeleniumLibrary  
Library    Collections
Variables    E:/Automation/Datas/data.py  
Variables    E:/Automation/Datas/xpath.py       

# *** Variables ***

# ${browser}    chrome
# ${firstname}    //input[@name="firstname"]
# ${lastname}      //input[@name="lastname"]
# ${gender}        //input[@value="Male"]
# ${yrofexp}       //input[@id="exp-3"]
# ${datepicker}    //input[@id="datepicker"] 
# ${profession}    //input[@id="profession-1"]
# ${automationtool}    //input[@id="tool-2"]
# ${dropdown}       //select[@id="continents"]
# ${button}   //button[@id="submit"]
# ${$scroll}    //h2[text()='How to Automate 'Practice Form' with Selenium WebDriver']

*** Test Cases ***

TC01
    Open Browser   https://www.techlistic.com/p/selenium-practice-form.html    ${browser}
    
    Maximize Browser Window    
    Sleep    2
    

    Input Text    ${Xpath_Input_box_First}    Naresh
    Input Text    ${Xpath_Input_box_Last}     12345678
    Click Button    ${Xpath_Gender}  
    Click Button    ${Xpath_Year_Of_Exp}
    Input Text    ${Xpath_Input_Box_datepicker}       7/12/1999
    Execute Javascript   window.scrollTo(0,1000)
    Click Button    ${Xpath_Check_Box_profession}
    Click Button    ${Xpath_Check_Box_automationtool}    
    Select From List By Index    ${Xpath_dropdown}    4   
    Choose File    ${Xpath_Button_choosefile}    E:/Automation/selenium-screenshot-1.png        
    Sleep    3
    Close Browser
*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that user is able to successfully Login to OrangeHRM
    Open Browser  https://opensource-demo.orangehrmlive.com/  Chrome
    Maximize Browser Window
    Wait Until Element Is Visible  name:username  timeout=5
    Input Text  name:username  Admin
    Input Password  name:password  admin123
    Click Element  //button[@type="submit"] 
    Close Browser

Verify Successful Login to the-internet.herokuapp
    [documentation]  This test case verifies that user is able to successfully Login to the-internet.herokuapp
    [tags]  Smoke
    Open Browser  https://the-internet.herokuapp.com/login  Chrome
    Maximize Browser Window
    Wait Until Element Is Visible  id:username  timeout=5
    Input Text  id:username  tomsmith
    Input Password  id:password  SuperSecretPassword!
    Click Element  css:button[type="submit"]
    Element Should Be Visible  css:[href="/logout"]  timeout=8
    Close Browser

DICT
    ${my_dict}  Create Dictionary  name=John  age=30  country=USA
    ${age}      Get From Dictionary  ${my_dict}  age
    Log To Console    ${age}

LIST
    @{my_list}    Create List  naresh    karthick    balaji    viji    ajay 
    FOR    ${element}    IN    @{my_list}
        Log To Console    ${element}
        
    END 