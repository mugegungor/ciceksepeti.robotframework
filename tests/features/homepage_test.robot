*** Settings ***

Resource  ../../sources/steps.robot


Force Tags  @hepsiburadaWeb  @Homepage_test
Documentation  HepsiBurada Homepage wiht Login Test Scenarios

Test Setup  Setup Chrome Driver And Maximize
Test Teardown  Close All Driver


*** Test Cases ***

Cıceksepetı homepage for product control
   [Tags]  @smoke  @homepage
    go to    https://www.ciceksepeti.com/
    Element Visible and Click  ${Intro_selectPreview_img}
    Categories for flowers select in homepage
    switch window  new
    Check Element Text  ${Product_categoriesFlowersTitle_text}  Equal  Saksıda Dieffenbachia Çiçeği
    Check Element Text  ${Product_categoriesFlowersPrice_text}  Equal  119 ,00 TL
    Element Visible and Click  ${Product_BestSellerFlowersPriceSelect_radioButton}
    Check Element Text  ${Product_BestSellerTicket}   Equal  Çok Satan
    Check Element Text  ${Product_BestSellerPrice}  Equal  229 ,00 TL
    Element Visible And Input Text  ${Product_flowersDetailsPlace_input}  Şişli
    Product details control and order select
    Element Visible and Click  ${Product_flowersDetailsOrder_button}
    Element Visible And Check Url  ${Products_flowersDetailsUserLoginSelect_text}  Contain  https://www.ciceksepeti.com/kullanici-girisi

