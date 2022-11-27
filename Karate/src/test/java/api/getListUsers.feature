Feature: get list users

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: get list users
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[3].id == 10
    And match response.data[3].email == 'byron.fields@reqres.in'