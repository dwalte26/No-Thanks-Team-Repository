Feature: Add a new employee
  
  As a Megiathan, HR Supreme Leader
  I want to be able to add new employees
  So that I can maintain an updated directory
  
Scenario: As a user I want to be able to navigate from the home page to the employee onboarding page
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
  
Scenario: As a user, I want to be able to add a new employee
  Given I am on the onboarding page
  Then I should see the "Name" field
  And I should see the "Position" field
  And I should see the "Employeeid" field
  And I should see the "Email" field
  And I should see the "Phone" field
  And I enter "Test User" for "Name"
  And I enter "Test Position" for "Position"
  And I enter "012345" for "Employeeid"
  And I enter "testing@test.com" for "Email"
  And I enter "555-555-5555" for "Phone"
  And I click on the "Save Employee!" button
  Then I should be on the "Test User" page
