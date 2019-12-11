Feature: Add a project to an employee
  
  As a project Megan,
  I want to be able to add a project to an employee
  So that I can keep them busy
  
Scenario: As a user, I want to be able to add a project
  Given I am on the directory page
  Then I should see the name "doesntmatter"
  Then I click on the "Show" link
  Then I should be on the "doesntmatter" page
  Then I should see the "Title" field
  And I enter "TestProject" for "Title"
  And I enter "Test Description" for "Body"
  When I click on the "Create Project" button
  Then I should be on the "doesntmatter" page
  Then I should be on the "TestProject" page