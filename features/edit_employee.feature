Feature: Edit an employee
  
  As a Megiathan, HR Supreme Leader
  I want to be able to edit employee information
  So that I can maintain an updated directory
  
Scenario: As a user I want to be able to navigate from the home page to the employee directory
  Given I am on the home page
  Then I should see the "Email" field
  And I enter "no@thanks.com" for "Email"
  And I enter "password1" for "Password"
  When I click on the "Login" button
  Then I should be on the "Employees" page
  
Scenario: As the HR rep, I should be able to select an employee and change their info
  
  Given I am on the directory page
  Then I should see the name "doesntmatter"
  Then I click on the "Edit" link
  Then I should be on the "Edit an Employee" page
  Then I should change "5" to "098-765-4321"
  And I enter "password1" for "Password"
  When I click on the "Save Employee!" button
  Then I should be on the "doesntmatter" page