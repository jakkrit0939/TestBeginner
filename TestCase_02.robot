***Settings***
Library     Browser
Resource          ${RESOURCES}/Keyword.resource
***Variables***
${ClearText}    //*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
${Search_2}     Genshin Impact Map    
${Search}       //*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
***Keywords***
TestCase_01
    TestCase_01.OpenGoogle
    TestCase_01.Press Buttom Search 
    TestCase_01.Search google
    TestCase_01.Verify Link
Clear
    Clear Text      ${ClearText}
InputSearch     
    Fill text       ${Search}      ${Search_2}
Press ButtomSearch 
    Keyboard Key    press    Enter
Verify Link_02
***Test Cases***
TestCase_02
    TestCase_01
    Clear
    InputSearch
    Press ButtomSearch 
    Verify Link_02