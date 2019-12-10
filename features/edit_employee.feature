Feature: Edit an employee
  
  As a Megiathan, HR Supreme Leader
  I want to be able to edit employee information
  So that I can maintain an updated directory
  
Scenario: As a user I want to be able to navigate from the home page to the employee directory
  Given I am on the home page
  Then I should see the "Username" field
  When I click on the "Login" link
  Then I should be on the "Employees" page
  
Scenario: As the HR rep, I should be able to select an employee and change their info
  
  Given I am on the directory page
  Then I should see the name "Test"
  Then I click on the "Edit" link
  Then I should be on the "Edit an Employee" page
  Then I should change "123-456-789" to "098-765-4321"
  When I click on the "Save Employee!" button
  Then I should be on the "Test" page