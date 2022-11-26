Feature: JSONPlaceHolder Api Test

  Background:
    * url baseUrl
    Given url baseUrl

  Scenario: Task2
    Given path 'posts'
    And header Content-Type = 'application/json; charset=UTF-8'
    And def getUserInformations = call read('classpath:helpers/helper.feature@name=createUserInformations')
    * def requestBody =
      """
      {
    body: JSON.stringify({
    title: "JSONPlaceHolder",
    body: '#(getUserInformations.userName)',
    userId: #(getUserInformations.userId)}

      """
    And request requestBody
    When method POST
    Then status 201
    And print response