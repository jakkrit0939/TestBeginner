***Settings***
Library     Browser
***Variables***
${URL}              https://www.google.com/
${Search}           //input[@name="q"]
${Expect_Url1}       https://genshin.hoyoverse.com
${Expect_Url2}       https://www.thaisololeveling.com
${Link1}            //*[@id="rso"]/div[1]//div[1]/a/h3
${LinkSearch2}      //*[@id="rso"]/div[1]//div[1]/a/h3
${Link3}        //*[@id="rso"]/div[5]/div/div[1]/div/a/h3
${Expect_Search1}    Genshin Impact
${Expect_Search2}    Solo Leveling
${ClearText}    //*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
${Search_Text}      Genshin Impact Map    
${Search_TC2}       //*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
${Link_Search_TC02}    //*[@id="rso"]/div[1]//div/div[1]/a/h3  
${link_empty3}      //*[@id="rso"]/div[3]//div[3]/div/span/em[1]
${URL_01}       https://genshin.hoyoverse.com/en/
${URL_02}       https://www.facebook.com/genshinimpact.th/
${URL_03}       https://play.google.com › store › apps › details › id=com....
${URL_04}       https://genshin-impact.fandom.com/th/wiki/Genshin_Impact
${URL_05}       https://www.sanook.com/game/tag/genshin+impact/
***Keywords***
OpenGoogle
    New Browser    ${Browser}   headless=false
    #New Context    viewport={'width': 1920, 'height': 1280}
    New Page       ${URL}
    
Search google1
    Click           ${Search}     
    Fill text       ${Search}      ${Expect_Search1}

Search google2
    Click           ${Search}     
    Fill text       ${Search}      ${Expect_Search2}

Press Buttom Search
    Keyboard Key    press    Enter

Verify Search1
    ${Result_Search1}    Get Text    //*[@id="rso"]/div[1]//div[1]/span/em
    Should Be Equal     ${Result_Search1}   ${Expect_Search1} 
    ${Result1}     Get Text   //*[@id="rso"]/div[1]//div[1]/a/div/cite
    Should Be Equal     ${Result1}      ${Expect_Url1}

Verify Search2
    ${Result_Search2}    Get Text    //*[@id="rso"]/div[1]//div[2]/div[1]/span/em
    Should Be Equal     ${Result_Search2}   ${Expect_Search2} 
    ${Result2}     Get Text   //*[@id="rso"]/div[1]//div[1]/a/div/cite
    Should Be Equal     ${Result2}      ${Expect_Url2}

Click_Link1
    Click           ${Link1}

Click_Link2
    Click           ${LinkSearch2}

ClearText_InTextBox
    Clear Text      ${ClearText}

Input Search     
    Fill text       ${Search_TC2}      ${Search_Text}

VerifyTC02
    ${ResultTC02_1}     Get Text    //*[@id="rso"]/div[3]//span/em[1]
    ${ResultTC02_2}     Get Text    //*[@id="rso"]//div[3]//span/em[2]
    Should contain     ${ResultTC02_1} ${ResultTC02_2}     ${Search_Text}

Click_Link_TC02
    Click       ${link_empty3}
    Click       ${Link_Search_TC02}

Verify Link3
        Should Be Equal     ${URL_Link3}      ${URL_03}

Click Link3
        ${Result_Link3}           Get Text       //*[@id="rso"]/div[5]/div/div[1]/div/a/div/cite
        Click       ${Link3}
        Set Test Variable       ${URL_Link3}    ${Result_Link3}