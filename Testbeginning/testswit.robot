***Settings***
Library     Browser
***Variables***
${URL}              https://www.google.com/ 
${Search}           //input[@name="q"]    
${Expect_Search}    Genshin Impact 
***Keywords***
***Test Cases***
TestSwit
     Open Browser        ${URL}      chromium
     Switch Browser     1
     Open Browser        ${URL}      firefox     
     Click           ${Search}     
     Fill text       ${Search}      ${Expect_Search} 
     Keyboard Key    press    Enter
