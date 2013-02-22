Given /^I start to play$/ do
   visit "/"
end

Then /^I Should see  "(.*?)"$/ do |arg1|
  last_response.body.should=~ /5/m
end

Given /^I see the soup and the fields to fill$/ do
  visit "/iniciar"
end

When /^I fill in the fields$/ do
  fill_in("letraInicialX", :with => "0")
  fill_in("letraInicialY", :with => "0")
  fill_in("letraFinalX", :with => "0")
  fill_in("letraFinalY", :with => "0")
  click_button("Marcar palabra")
end

Then /^I should see four numbers between (\d+) and (\d+) each of them$/ do |arg1, arg2|
  last_response.body.should =~ /Proporcione un numero entre 1 y 10/m

end
