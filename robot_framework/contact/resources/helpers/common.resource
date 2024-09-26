*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Klikni na 
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}  10s
    Click Element  ${locator}

GetElementByResourceId
    [Arguments]  ${resourceId}
    ${elementLocator} =  Set Variable  //*[@resource-id="${resourceId}"]
    Wait Until Element Is Visible  ${elementLocator}  10
    [Return]  ${elementLocator}

GetElementByResourceIdwithText
    [Arguments]  ${resourceId}  ${text}
    ${element} =  GetElementByResourceId  ${resourceId}
    ${elementLocator} =  Set Variable  //*[@resource-id="${resourceId}" and text()="${text}"]
    Wait Until Element Is Visible  ${elementLocator}
    [Return]  ${elementLocator}