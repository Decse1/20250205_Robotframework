*** Settings ***
Library           Selenium2Library

*** Test Case ***
durability test
    Open Browser    https://optikart.hu/    firefox
    WHILE    ${True}
    Click Link    //*[@id="menu-1-2101d9db"]/li[1]/a
    Click Link    //*[@id="menu-1-2101d9db"]/li[2]/a
    END
    Close Browser
