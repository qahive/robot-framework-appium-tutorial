*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME_ANDROID}    Android
${DEVICE_NAME_ANDROID}    Nexus1
${APP_ANDROID}    ${CURDIR}${/}app${/}ApiDemos-debug.apk
${AUTOMATION_NAME}    appium

*** Test Cases ***
Open Android app
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME_ANDROID}    deviceName=${DEVICE_NAME_ANDROID}    app=${APP_ANDROID}    automationName=${AUTOMATION_NAME}
    AppiumLibrary.Click Element    //android.widget.TextView[@text='Preference']
    AppiumLibrary.Click Element    //android.widget.TextView[@text='3. Preference dependencies']
    Close All Applications
