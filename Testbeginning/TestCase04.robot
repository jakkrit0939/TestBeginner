***Settings***
Library     Browser
Resource    ../Resource/resource.robot
***Variables***
***Keywords***
***Test Cases***
TestCase_04_Open and search something in Google then click 3rd link and verify
    OpenGoogle
    Set Browser Timeout     30 second
    Search google1
    Press Buttom Search
    Verify Search1
    Click Link3
    Verify Link3
