*** Settings ***
Library     SeleniumLibrary     timeout=12s
Resource        ../Variables/Variables.robot
Resource    ../Keywords/Keywords.robot


*** Test Cases ***
TC_001 E2E Compra
    Abrir navegador
    Seleccionar producto
    Agregar al carrito
    Checar carrito
    Completar formulario
    Terminar compra
