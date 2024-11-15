*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is two
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 2 kertaa

When reset button is pressed the counter is zero
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    