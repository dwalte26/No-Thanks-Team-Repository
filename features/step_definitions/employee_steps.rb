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

Then("I enter {string} for {string}") do |string, string2|
    fill_in string2, with: string
end

Then("I click on the {string} button") do |string|
  click_button(string)
end