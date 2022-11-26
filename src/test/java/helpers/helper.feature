Feature: Helper Features

@name=createUserInformations
Scenario: Create User Informations
* def fakerObj =  new faker()
* def userId = fakerObj.number().digit()
* def userName = fakerObj.name().username()