Feature: Add a new employee
  
  As a Megiathan, HR Supreme Leader
  So that I can maintain and updated directory
  I want to be able to add new employees
  
Scenario: As a user I want to be able to navigate from the home page to the directory page
  Given I am on the home page
  Then I should see the "Username" field
  When I click on the "Login" link
  Then I should be on the "Employees" page
  When I click on the "New Employee" link
  Then I should be on the "Employee Onboarding" page
  And I should see the "Name" field
  And I should see the "Position" field
  And I should see the "Employeeid" field
  And I should see the "Email" field
  And I should see the "Phone" field