Feature: put update

  Background: 
    * url 'https://reqres.in/api'

  Scenario: put update
    Given path '/users/2'
    And request {"name": "jorge", "job": "zion resident"}
    When method PUT
    Then status 200
    And print response
    And print responseStatus
    And match $.name == 'jorge'
