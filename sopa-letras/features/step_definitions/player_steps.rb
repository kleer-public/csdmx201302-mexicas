Given /^I start to play$/ do
   visit "/"
end

Then /^I Should see  "(.*?)"$/ do |arg1|
  last_response.body.should=~ /5/m
end




