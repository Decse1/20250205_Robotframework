*** Settings ***
Library           Selenium2Library

*** Test Cases ***
register
    Open Browser    https://www.mikrosat.hu/shop_reg.php?no_reg=0    firefox
    Input Text    //*[@id="emai"]    womote7938@payposs.com
    Input Password    //*[@id="passwd1"]    AA-AA_123
    Input Password    //*[@id="passwd2"]    AA-AA_123
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Input Text    //*[@id="kap_mobile_sub"]    707845964
    Input Text    //*[@id="default_nev"]    Elek Kálmán
    Input Text    //*[@id="default_irany"]    6065
    Input Text    //*[@id="default_varos"]    Lakitelek
    Input Text    //*[@id="default_utca"]    Jósika 41/A
    Execute Javascript    window.scrollTo(0,window.scrollY+200)
    Click Button    //*[@id="button_reg"]
