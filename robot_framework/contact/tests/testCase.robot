*** Settings ***
Library          AppiumLibrary
Resource        ../resources/init.resource
Resource        ../resources/helpers/gestures.resource


Test Setup  Open App
Test Teardown    Close Application
*** Test Cases ***

Open App and sleep 
    [Documentation]  
    [Tags]  01
    Wait Until Element Is Visible  xpath=//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']
    Click Element  xpath=//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']

    Wait Until Element Is Visible  accessibility_id=Create contact
    Click Element  accessibility_id=Create contact

    Wait Until Element Is Visible  class=android.widget.EditText
    Input Text  class=android.widget.EditText  Anna

    ${textFind} =  Set Variable  Save
    Wait Until Element Is Visible  xpath=//*[contains(@text, "${textFind}")]
    Click Element  xpath=//*[contains(@text, "${textFind}")]

    sleep  10s    

Open And Swipe Down Up
    [Tags]  02

     Wait Until Element Is Visible  xpath=//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']
     Click Element  xpath=//android.widget.Button[@resource-id='com.android.permissioncontroller:id/permission_deny_button']

    Wait Until Element Is Visible  accessibility_id=Create contact
    Click Element  accessibility_id=Create contact

    Wait Until Element Is Visible    xpath=//android.widget.ImageButton[@content-desc="Cancel"]
    Click Element    xpath=//android.widget.ImageButton[@content-desc="Cancel"]

    Swipe from down to up    500    1500    500    500    
    Swipe    500    1500    500    500    1000
    Swipe    500    500    500    1500    1000
    Swipe    500    500    500    1500    1000
    #Click Element    id=com.google.android.contacts:id/dismiss_button


*** Keywords ***
Swipe from down to up
    [Arguments]  ${start_x}  ${start_y}  ${end_x}  ${end_y}  ${duration}=1000
    Swipe    500    1500    500    500    1000
# Parametry pro Swipe:
# První dva parametry (500, 1500) jsou souřadnice počátečního bodu (x, y).
# Druhé dva parametry (500, 500) jsou souřadnice cílového bodu (x, y).
# Poslední hodnota (1000) je doba trvání swipu v milisekundác


         
# Documentation     https://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
# Strategy	        Example	Description	                                        Note
# identifier	    Click Element | identifier=my_element	                    Matches by @id attribute	
# id	            Click Element | id=my_element	                            Matches by @resource-id attribute	
# accessibility_id	Click Element | accessibility_id=button3	                Accessibility options utilize.	
# xpath	            Click Element | xpath=//UIATableView/UIATableCell/UIAButton	Matches with arbitrary XPath	
# class	            Click Element | class=UIAPickerWheel	                    Matches by class	
# android	        Click Element | android=UiSelector().description('Apps')	Matches by Android UI Automator	
# ios	            Click Element | ios=.buttons().withName('Apps')	            Matches by iOS UI Automation	
# nsp	            Click Element | nsp=name=="login"	                        Matches by iOSNsPredicate	Check PR: #196
# chain	            Click Element | chain=XCUIElementTypeWindow[1]/*	        Matches by iOS Class Chain	
# css	            Click Element | css=.green_button	                        Matches by css in webview	
# name	            Click Element | name=my_element	                            Matches by @name attribute	Only valid for Selendroid