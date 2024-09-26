# MobileAutomationFrameworks

emulator -avd Pixel_6.1

emulator -avd Pixel_6.1 -no-window

#--- REPORTY -------
npm install @wdio/allure-reporter --save-dev

allure generate allure-results --clean -o allure-report

allure open allure-report
--NEBO--
allure generate allure-results --clean

npx allure generate

allure open

#--- APPIUM TROUBLE --------
appium driver uninstall uiautomator2

appium driver install uiautomator2

appium driver update uiautomator2

adb uninstall io.appium.uiautomator2.server

adb uninstall io.appium.uiautomator2.server.test

adb uninstall io.appium.unlock

adb uninstall io.appium.settings

#---- SETUP WEBDRIVER IO ----

npm init -y

npm i @wdio/cli

npx wdio config

npm i --save-dev @wdio/cli appium

npm i -D typescript ts-node

#---- RUN TESTS ----
npx wdio run wdio.conf.js

-- RUN Specific tests ----
npx wdio run ./wdio.conf.js --spec ./tests/specs/test.spec.js


capabilities: [
    {
      // capabilities for local Appium web tests on an Android Emulator
      platformName: "Android",
      "appium:deviceName": "Pixel 6.1",
      "appium:platformVersion": "13.0",
      "appium:automationName": "UiAutomator2",
      "appium:appPackage": "com.FerShare.fershare",
      "appium:appActivity": "com.FerShare.fershare.MainActivity",
    },
  ],
