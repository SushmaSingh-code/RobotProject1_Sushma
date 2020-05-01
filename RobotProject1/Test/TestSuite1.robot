*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
MYFirstTest
    Log    Hello World...    
    
FirstSeleniumTest
   
     Open Browser    ${URL1}   chrome
      Title Should Be    Google
     Set Browser Implicit Wait    5
     Input Text      name=q          Automation step by step  
     Press Keys      name=q          ENTER
     #Click Button    name=btnK  
     Sleep    4
     close Browser
    Log    Test Completed    
    
SampleLoginTest
    [Documentation]  This is login test case
    Open Browser      ${URL}     chrome 
    Set Browser Implicit Wait    10
    Input Text        id=txtUsername      &{Logindata} [Username]
    Input Password    id=txtPassword      &{Logindata} [Password] 
   Click Element     id=btnLogin
   Click Element     id=welcome                
   Click Element     link=Logout 
   Log                     Test2 completed       
   Close Browser      
   
*** Variables ***
${URL1}              https://www.google.com/
${URL}              https://opensource-demo.orangehrmlive.com/
@{Credential}    = Create List      Admin   admin123
&{Logindata}     Username=Admin   Password=admin123

   

   
    
