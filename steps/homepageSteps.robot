*** Settings ***

Resource  ../sources/other.robot
Resource  ../sources/steps.robot
Resource  ../sources/variables.robot


*** Keywords ***

Categories for flowers select in homepage
  scroll element into view  ${Homepage_categoriesSelect_img}
  Element Visible And Click  ${Homepage_categoriesSelect_img}
  scroll element into view   ${Product_categoriesFlowersSelect_img}
  Element Visible And Click  ${Product_categoriesFlowersSelect_img}

Product details control and order select
   sleep  2
   scroll element into view  ${Product_flowersDetailsPlace_text}
   Element Visible and Click  ${Product_flowersDetailsPlaceSelect_text}
   Element Visible and Click  ${Product_flowersDetailsPlaceToday_text}







