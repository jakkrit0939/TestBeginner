***Settings***
Library     Browser
Resource    ../Resource/resource.robot
       
***Test Cases***
TestCase_01_Google Search Somting
    OpenGoogle
    Set Browser Timeout     30 second
    Search google1
    Press Buttom Search
    Verify Search1
    Click Link1