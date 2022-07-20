***Settings***
Library     Browser
Resource    ../Resource/resource.robot
***Variables***
${ClearText}    //*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
${Search_Text}      Genshin Impact Map    
${Search_TC2}       //*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
***Keywords***
Testcase1
    OpenGoogle
    Search google
    Press Buttom Search 
    Verify Link
Clear
    Clear Text      ${ClearText}
InputSearch     
    Fill text       ${Search_TC2}      ${Search_Text}
Press ButtomSearch 
    Keyboard Key    press    Enter
Verify Link_02
    ${ResultTC02_1}     Get Text    //*[@id="rso"]/div[3]/div/div/div[1]/div/div/div[3]/div/span/em[1]
    ${ResultTC02_2}     Get Text    //*[@id="rso"]/div[3]/div/div/div[1]/div/div/div[3]/div/span/em[2]
    Should contain     ${ResultTC02_1} ${ResultTC02_2}     ${Search_Text}
    Click       //*[@id="rso"]/div[1]/div/div[1]/div/a/h3   
***Test Cases***
TestCase_02
    Testcase1
    Clear
    InputSearch
    Press ButtomSearch 
    Verify Link_02