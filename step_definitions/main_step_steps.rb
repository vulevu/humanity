Then("I should be on Home page") do
  # it takes over 3 sec to open the Home page, so we implement a function with wait_until
  on(MainPage) do |page|
    page.get_mail_div_element
  end
end

When("I click on ShiftPlanning in main menu") do
  visit(ShiftPlanningPage)
end
