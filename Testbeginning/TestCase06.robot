***Settings***
Library     Browser
Resource    ../Resource/resource.robot
***Variables***
${URL_01}       https://genshin.hoyoverse.com/en/
${URL_02}       https://www.facebook.com/genshinimpact.th/
${URL_03}       https://genshin-impact.fandom.com › wiki › Genshin_I...
${URL_04}       https://genshin-impact.fandom.com/th/wiki/Genshin_Impact
${URL_05}       genshin impact
@{List_Url}        ${URL_03}   ${URL_04}   ${URL_05}
${Link3_06}        //*[@id="rso"]/div[3]//h3
${Link5_06}        //*[@id="rso"]/div[8]//div[1]/div/a/h3
${link_empty4}      //*[@id="rso"]/div[7]//div[3]/div/span/em
***Keywords***
OpenGoogle_TC6
        OpenGoogle
        Search google
        Press Buttom Search_01 
        Verify Search_01
Verify_Link_06
        ${Result_Url_3}     Get Text   //*[@id="rso"]/div[4]//div[1]/div/a/div
        Should Be Equal     ${Result_Url_3}      ${URL_03}
        Click       ${Link3_06}
        Go Back
        #${Result_Url_4}     Get Text   //*[@id="rso"]/div[8]/div/div[2]/div/span/em
        #Should Be Equal     ${Result_Url_4}      ${URL_05}
        Click       ${Link5_06}
***Test Cases***
OpenGoogle
    OpenGoogle_TC6
    Verify_Link_06