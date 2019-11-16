Feature: Edit an employee
  
  As a Megiathan, HR Supreme Leader
  I want to be able to edit employee information
  So that I can maintain an updated directory
  
Scenario: As a user I want to be able to navigate from the home page to the employee directory
  Given I am on the home page
  Then I should see the "Username" field
  When I click on the "Login" link
  Then I should be on the "Employees" page
  
Scenario: As a user I want to be able to edit an employee
  Given I am on the directory page
  