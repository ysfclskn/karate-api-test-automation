Feature: Helper Features

@name=createDummyData
Scenario: Create User Informations
* def fakerObj =  new faker()
* def userId = fakerObj.number().digit()
* def userName = fakerObj.name().username()