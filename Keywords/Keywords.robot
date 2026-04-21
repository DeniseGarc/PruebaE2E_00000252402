*** Settings ***
Library    SeleniumLibrary
Resource        ../Variables/Variables.robot

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}   options=add_argument('--incognito')

Seleccionar producto
    Wait Until Page Contains Element    css=a[href='prod.html?idp_=6']
    Click Element    css=a[href='prod.html?idp_=6']

Agregar al carrito
    Wait Until Element Is Visible    css=a[class="btn btn-success btn-lg"]
    Click Element    css=a[class="btn btn-success btn-lg"]
    Handle Alert    accept

Checar carrito
    Click Element    xpath=//a[@id="cartur"]
    Wait Until Page Contains    ${NOMBRE_PRODUCTO}
    Page Should Contain    ${NOMBRE_PRODUCTO}
    Click Button    xpath=//button[@class="btn btn-success"]

Completar formulario
    Wait Until Element Is Visible    id=name
    Input Text    id=name    ${NAME}
    Input Text    id=country    ${COUNTRY}
    Input Text    id=city    ${CITY}
    Input Text    id=card    ${CREDIT_CARD}
    Input Text    id=month    ${MONTH}
    Input Text    id=year    ${YEAR}

Terminar compra
    Click Button    xpath=//button[contains(text(),"Purchase")]
    Element Should Be Visible    xpath=//h2[contains(text(),"Thank you for your purchase!")]
    Click Button    xpath=//button[contains(text(),"OK")]


