***Settings***
Library     Browser
Resource    ../Resource/resource.robot
***Variables***
@{List_Url}        ${URL_03}   ${URL_04}   ${URL_05}
${Link3_05}        //*[@id="rso"]/div[3]//a/h3
${Link4_05}         //*[@id="rso"]/div[4]//div/a/h3
${Link5_05}        //*[@id="rso"]/div[7]/div//a/h3
${link_empty4}      //*[@id="rso"]/div[7]//div[3]/div/span/em
***Keywords***
OpenGoogle_TC5
        OpenGoogle
        Search google
        Press Buttom Search_01 
        Verify Search_01
Verify_Link_05
    FOR    ${URL_Text}    IN    @{List_Url}
        IF    $URL_Text == 'https://genshin-impact.fandom.com/th/wiki/Genshin_Impact'  BREAK
        Click       ${Link3_05}
        Go Back
        Click       ${Link4_05}
        Go Back
        Click       ${link_empty4}
        Click       ${Link5_05}
        Go Back
    END
***Test Cases***
OpenGoogle
    OpenGoogle_TC5
    Verify_Link_05