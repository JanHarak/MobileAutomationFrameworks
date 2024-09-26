*** Settings ***
Library          AppiumLibrary
Resource        ../resources/init.robot


Test Setup  Open App
Test Teardown  Close App

*** Variables ***
*** Variables ***
${packageName} =  com.FerShare.fershare
${pocetKm}           ${packageName}:id/editTextTotalkm
${prumernaSpotreba}  com.FerShare.fershare:id/editTextFuelConsume
${cenaZaLitr}        com.FerShare.fershare:id/editTextPricePerLiter
${pocetOsob}         com.FerShare.fershare:id/editTextNumPerson
${dalsiNaklady}      com.FerShare.fershare:id/editOtherCosts
${tlacikoSpocitat}   com.FerShare.fershare:id/btnCalculate
${cenaCelkem}        com.FerShare.fershare:id/resultPriceValue
${cenaZaJednotlice}  com.FerShare.fershare:id/resultPricePerPersonValue

${nastavení}         com.FerShare.fershare:id/settings
${vymazat}           com.FerShare.fershare:id/btnClear

${kalkulatorTab}     xpath=(*//android.widget.FrameLayout[@content-desc="Kalkulačka"])


*** Test Cases ***
Calculate fuel consume
    [Tags]  smoke

    Wait Until Page Contains Element  ${pocetKm}
    Input Text  ${pocetKm}  420


    Wait Until Page Contains Element  ${prumernaSpotreba}
    Input Text  ${prumernaSpotreba}  5.8


    Wait Until Page Contains Element  ${cenaZaLitr}
    Input Text  ${cenaZaLitr}  39.90

    Wait Until Page Contains Element  ${pocetOsob}
    Input Text  ${pocetOsob}   3

    Wait Until Page Contains Element  ${dalsiNaklady}
    Input Text  ${dalsiNaklady}  720


    Klikni na  ${tlacikoSpocitat}


    ${totalPrice} =  Get Text     ${cenaCelkem}
    Should Be Equal    ${totalPrice}    1691.96

    ${totalPrice} =  Get Text     ${cenaZaJednotlice}
    Should Be Equal    ${totalPrice}    563.99


# --------------  SCREEN OBJECTS  --------------
Calculate fuel consume with Screen Object
    [Documentation]  Happy scenar pro vypocet spotřeby a ceny
    [Tags]  TC01  happyPath
    Zadej pocet km                              420
    Zadej spotřebu na km                        5.8
    Zadej cenu paliva                         39.90
    Zadej pocet osob                              3
    Zadej další náklady                         720
    Klikni na spočítat
    Zkontroluj celkovou cenu                1691.96
    Zkontroluj celkovou cenu za jednotlivce  563.99

Check Mandatory fields with Screen Object
    [Documentation]  Happy scenar pro kontrolu poviných polí
    [Tags]  TC02  happyPath
    Klikni na spočítat
    Zkontroluj povinná pole
    Zkontroluj celkovou cenu                     --
    Zkontroluj celkovou cenu za jednotlivce      --

