Feature: JSONPlaceHolder Api Test

  Background:
    * url baseUrl
    Given url baseUrl


  Scenario: JSONPlaceHolder Get Method
    Given path 'posts/1'
    When method GET
    Then status 200
    And print response


  Scenario: JSONPlaceHolder Post Method
    Given path 'posts'
    And header Content-Type = 'application/json; charset=UTF-8'
    And def getDummyData = call read('classpath:helpers/helper.feature@name=createDummyData')
    * def requestBody =
      """
      {
    body: JSON.stringify({
    title: "JSONPlaceHolder",
    body: '#(getDummyData.userName)',
    userId: 1}

      """
    And request requestBody
    When method POST
    Then status 201
    And print response


  Scenario: JSONPlaceHolder Put Method
    Given path 'posts/1'
    And header Content-Type = 'application/json; charset=UTF-8'
    And def getDummyData = call read('classpath:helpers/helper.feature@name=createDummyData')
    * def requestBody =
      """
      {
    body: JSON.stringify({
    title: "JSONPlaceHolder is updated",
    body: '#(getDummyData.userName)',
    userId: 1}

      """
    And request requestBody
    When method PUT
    Then status 200
    And print response

