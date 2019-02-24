
Given("I open login page of humanity")  do
  visit(LoginPage)
end

When(/^I enter username "([^"]*)"$/) do |login|
  on(LoginPage).login_name = login
end

And(/^I enter password "([^"]*)"$/) do |password|
  on(LoginPage).password = password
end

When("I press Login") do
  on(LoginPage).login
end
