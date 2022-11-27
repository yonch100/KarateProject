Feature: patch update

  Background: 
    * url 'https://reqres.in/api'

  Scenario: patch update
    Given path '/users/2'
    And request {"name": "omar", "job": "Qa member",}
    When method PATCH
    Then status 200
    And print response
    And print responseStatus
    And match $.name == "omar"