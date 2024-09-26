*** Settings ***
Library          AppiumLibrary
Library          Collections

*** Variables ***
${appium_server}            http://localhost:4723
${platform}                 Android
${adbDevice}                emulator-5554
${resetoff}                 false
${ANDROID_AUTOMATION_NAME}  UiAutomator2

# ---------  Contacts  --------------------
${package_name}      com.google.android.contacts
${AppMainActivity}   com.android.contacts.activities.PeopleActivity


*** Keywords ***
Open App
    Open Application    ${appium_server}
    ...                 platformName=${platform}
    ...                 deviceName=${adbDevice}
    ...                 appPackage=${package_name}
    ...                 appActivity=${AppMainActivity}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}
    ...                 noReset=${resetoff}

    Set Global Variable  ${package_name}


