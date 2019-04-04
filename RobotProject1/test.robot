*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTest
    Log    Hello World...    
    
SearchBar
    Open Browser    https://gambling.com    chrome
    Page Should Contain   Best Online Gambling Sites     
     Press Keys    id=nav-search      ENTER
     Input Text    id=nav-search    casino
     Click Element    xpath= //*[@id="search-results-list"]/li[1]/a/div[1]    
 
StaticEmailSubscription
    Open Browser    https://gambling.com  chrome
    Input Text    name=email    asda@gmail.com
    Select Checkbox    class=agreement
    Click Element    class=subscribe
            
DynamicEmailSubscription
    Open Browser    https://gambling.com  chrome
    Click Element    xpath=//*[@id="nav-links"]/li[2]/a    
    Click Element    xpath=//*[@id="nav-links"]/li[3]/a
    Click Element    xpath=//*[@id="nav-links"]/li[4]/a 
    Sleep  8s   
    Input Text   xpath=//*[@id="dynamic-popup"]/div/div/form/div/div[1]/input[1]  fgas@gmail.com
    Select Checkbox    class=agreement
    Click Element    class=subscribe 
    Click Element    class=close    
     
    
    