*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Swipe down to up
    [Arguments]  ${start_x}=50  ${start_y}=90  ${end_x}=50  ${end_y}=10  ${duration}=1000
    swipe by percent    ${start_x}    ${start_y}  ${end_x}  ${end_y}  ${duration}

Swipe up to down
    [Arguments]  ${start_x}=50  ${start_y}=10  ${end_x}=50  ${end_y}=50  ${duration}=1000
    swipe by percent    ${start_x}    ${start_y}  ${end_x}  ${end_y}  ${duration}    

Swipe left to right
    [Arguments]  ${start_x}=10  ${start_y}=50  ${end_x}=90  ${end_y}=50  ${duration}=200
    swipe by percent    ${start_x}    ${start_y}  ${end_x}  ${end_y}  ${duration}            

Swipe right to left
    [Arguments]  ${start_x}=90  ${start_y}=50  ${end_x}=10  ${end_y}=50  ${duration}=200
    swipe by percent    ${start_x}    ${start_y}  ${end_x}  ${end_y}  ${duration}            

# ----------------------- -----------------------------------------------------------------
# https://sidarakeo.medium.com/how-to-deal-with-swipe-in-robotframework-appium-49fdfa8ae374
Swipe Down
    [Arguments]  ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1

Swipe Up
    [Arguments]       ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  500
    Sleep  1    

Swipe to Right
    [Arguments]       ${fragement}
    wait until element is Visible     ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1500
    Sleep  1  

Swipe to Left
    [Arguments]       ${fragement}
    wait until element is Visible     ${fragement}
    ${element_size}=    Get Element Size    ${fragement}
    ${element_location}=    Get Element Location    ${fragement}
    ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 1)
    ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.1)
    ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)
    Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  1500
    Sleep  1      