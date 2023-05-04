
*** Settings ***
Library           SeleniumLibrary
Resource    AmazonLocators.robot

*** Variables ***
${URL}      https://www.amazon.in/
${BROWSER}  chrome
*** Keywords ***
Login to amazon
    [Arguments]   ${username}    ${password}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    ${ap_email}    ${username}
    Input Text    ${ap_password}    ${password}
    Click Button    ${signInSubmit}
    wait until page contains    ${searchBox}

Connect with us on Facebook
    Wait Until Element Is Visible    ${ConnectWithUsOnFacebook}
    Click Element    ${ConnectWithUsOnFacebook}
    Wait Until Element Is Visible    ${Amazon_FacebookPage}

Connect with us on Twitter
    Wait Until Element Is Visible    ${ConnectWithUsOnTwitter}
    Click Element    ${ConnectWithUsOnTwitter}
    Wait Until Element Is Visible    ${Amazon_TwitterPage}