Given /^I start a new game$/ do
  visit '/'
	
end

Given /^the secret code is "(.*?)"$/ do |secret_code|
  	@@game.secret_code = secret_code
end

When /^I try with "(.*?)"$/ do |guess_code|
  	fill_in("code", :with => guess_code)
	click_button("Adivinar!")
end
