*** Settings ***
Library          AppiumLibrary
Library          Collections
Resource        ../Resources/Screenobjects/mainPage.resource

*** Variables ***
${appium_server}                 http://127.0.0.1:4723
${platform}                      Android
${adbDevice}                     emulator-5554
${realDevice}                    HYTKRGUSKNLRX4GQ
${resetoff}                      true
${ANDROID_AUTOMATION_NAME}       UiAutomator2
${ignoreHiddenApiPolicyError}    true

# ---------  FerShare  --------------------
${appLocation}       ${CURDIR}/../Data/fershare.apk
${package_name}      com.FerShare.fershare
${AppMainActivity}   com.FerShare.fershare.MainActivity
${realDevice}        HYTKRGUSKNLRX4GQ

${runOnRealDevice}    ${False}


*** Keywords ***
Open App 

    IF    ${runOnRealDevice}
        Open App On Real Device
    ELSE
        Open App On Emulator
    END

Open App On Emulator
    Open Application    ${appium_server}
    ...                 platformName=${platform}
    ...                 deviceName=${adbDevice}
    ...                 app=${appLocation}
    ...                 appPackage=${package_name}
    ...                 appActivity=${AppMainActivity}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 noReset=${resetoff}
    ...                 ignoreHiddenApiPolicyError=${ignoreHiddenApiPolicyError}

Open App On Real Device
    Open Application    ${appium_server}
    ...                 platformName=${platform}
    ...                 deviceName=${realDevice}
    ...                 app=${appLocation}
    ...                 appPackage=${package_name}
    ...                 appActivity=${AppMainActivity}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 noReset=${resetoff}
    ...                 ignoreHiddenApiPolicyError=${ignoreHiddenApiPolicyError}

Close App
    Terminate Application  ${package_name}  
