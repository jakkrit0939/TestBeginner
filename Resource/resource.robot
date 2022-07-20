***Settings***
Library     Browser
***Variables***
${URL}              https://www.google.com/
${Search}           //input[@name="q"]
${link_empty1}      //html/body/div[1]/div[3]/form/div[1]
${link_empty2}      //*[@id="rcnt"]
#${Buttom_Search}    //div[3]/center/input[1]
${Expect_text}       https://genshin.hoyoverse.com
${Link1}            //*[@id="rso"]/div[1]//div[1]/a/h3
${Expect_Search}    Genshin Impact
***Keywords***
OpenGoogle
    New Browser    chromium    headless=false
    New Context    viewport={'width': 1920, 'height': 1280}
    New Page       ${URL}
Search google
    Click           ${Search}     
    Fill text       ${Search}      ${Expect_Search}
Press Buttom Search 
    Keyboard Key    press    Enter
    #Click           ${Buttom_Search}
Verify Link
    Click           ${link_empty2}
    ${Result_Search}    Get Text    //*[@id="rso"]/div[1]//div[1]/span/em
    Should Be Equal     ${Result_Search}   ${Expect_Search} 
    ${Result}     Get Text   //*[@id="rso"]/div[1]//div[1]/a/div/cite
    Should Be Equal     ${Result}      ${Expect_text}
    Click           ${link_empty2}
    #Click           ${Link1}