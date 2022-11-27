Feature: post login unsuccessful

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def requestFile = read("classpath:data/login_unsucces.json")
    * def responseFile = read("classpath:data/login_response.json")
    
    Scenario: post login unsuccessful
    Given path '/login'
    And request requestFile
    When method POST
    Then status 400
    And print response
    And match response contains{"error": "Missing password"}