Feature: Logout of the application
  
  As a user, I would like to log out of the application
  From anywhere
  So that I can maintain security
  
Scenario: As a user I want to be able to logout
  Given I am on the home page
  Then I should see the "Email" field
  And I enter "no@thanks.com" for "Email"
  And I enter "password1" for "Password"
  When I click on the "Login" button
  Then I should be on the "Employees" page
  When I click on the "Back to Home" link
  Then I should be on the "Welcome to Ompany" page
  When I click on the "Log Out" link
  Then I should see the "Email" field