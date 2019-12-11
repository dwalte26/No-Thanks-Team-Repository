Given("I am on the home page") do
  visit root_path
end

When("I click on the {string} link") do |string|
  click_link (string)
end

Then("I should be on the {string} page") do |string|
  expect(page).to have_content (string)
end

Then("I should see the {string} field") do |string|
  expect(page).to have_field (string)
end

Given("I am on the onboarding page") do
  visit new_employee_path
end

Given("I am on the directory page") do
  visit employee_index_path
end

Then("I enter {string} for {string}") do |string, string2|
    fill_in string2, with: string
end

Then("I click on the {string} button") do |string|
  click_button(string)
end

Then("I should see the {string} button") do |string|
  find_button(string).click
end

Before do
  Employee.create(name: "Test", position: "Tester", employeeid: "30", email: "tester123@testing.com", phone: "123-456-789")
end

Then("I should change {string} to {string}") do |string1, string2| 
  string1.replace(string2)
end

Then("I should see the name {string}") do |string|
  expect(page).to have_content (string)
end
