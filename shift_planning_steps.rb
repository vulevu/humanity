# PRVO: Kako ja da nadjem element? (U vecini slucajeva se nalazi u Pages)
# DRUGO: Sta da radim?
#      a) U slucaju When iniciran neku akciju kao sto je npr. click, ubaciti neki tekst
#      b) U slucaju Then, u slucaju provere proveravam kao da je nest <>, postoji,...itd.


Then("I should be on ShiftPlanning page") do
  on(ShiftPlanningPage) do |page|
    page.get_default_emplo_element
  end
end

And("I click on Add Employees") do
  on(ShiftPlanningPage) do |page|
    page.add_emp_element.click
  end
end

Then("I should see new window Add Employees") do
  on(ShiftPlanningPage) do |page|
    page.get_con_butt_element
  end
end

When(/^I enter "([^"]*)" as First Name$/) do |first_name|
 on(ShiftPlanningPage) do |page|
   page.input_first_name = first_name
 end
end

When(/^I enter "([^"]*)" as Last Name$/) do |last_name|
  on(ShiftPlanningPage) do |page|
    page.input_last_name = last_name
  end
end

And(/^I chose from the list "([^"]*)" as Position of Employee$/) do |position|
  on(ShiftPlanningPage) do |page|
    page.input_position = position
  end
end

Then("I should be able to click on button Continue") do
  on(ShiftPlanningPage) do |page|
    page.get_input_position_element.click
  end
end