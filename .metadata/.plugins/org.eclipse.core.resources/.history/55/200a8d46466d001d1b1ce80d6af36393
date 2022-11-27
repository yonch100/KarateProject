Feature: delete

  Background: 
    * url 'https://reqres.in/api'

  Scenario: put update
    Given path '/users/2'
    When method DELETE
    Then status 204
    And print response