*** Settings ***
*** Variables ***
${URL_01}       Genshin Impact1
${URL_02}       Genshin Impact2
${URL_03}       Genshin Impact3
${URL_04}       Genshin Impact4
${URL_05}       Genshin Impact5
@{List_Url}     ${URL_01}   ${URL_02}   ${URL_03}   ${URL_04}   ${URL_05}


***Test Cases***
Execute a for loop only three times
    FOR    ${URL_Text}   IN     @{List_Url}
        IF    $URL_Text == 'Genshin Impact3'    BREAK
        Log    ${URL_Text}
    END