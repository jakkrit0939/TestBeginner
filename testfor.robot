*** Settings ***
Library     Browser
*** Variables ***
*** Variables ***
${URL_01}       https://genshin.hoyoverse.com/en/
${URL_02}       https://www.facebook.com/genshinimpact.th/
${URL_03}       https://www.facebook.com/groups/GenshinImpactTH.official/
${URL_04}       https://play.google.com/store/apps/details?id=com.miHoYo.GenshinImpact&hl=th&gl=US
${URL_05}       https://www.sanook.com/game/tag/genshin+impact/
@{List_Url}     ${URL_01}   ${URL_02}   ${URL_03}   ${URL_04}   ${URL_05}



*** Tasks ***
Execute a for loop only three times
    FOR    ${URL_Text}    IN    @{List_Url}
        IF    $URL_Text == 'https://play.google.com/store/apps/details?id=com.miHoYo.GenshinImpact&hl=th&gl=US'    CONTINUE
        Log    ${URL_Text}
    END