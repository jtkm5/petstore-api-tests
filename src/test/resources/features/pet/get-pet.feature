Feature: Obtener una mascota por ID desde Swagger Petstore

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Consultar una mascota existente por ID
    Given path 'pet', 1
    When method GET
    Then status 200
    # validacion de campos
    And match response.id == 1
    And match response.name != null
    And match ['available','pending','sold'] contains response.status