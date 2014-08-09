 Given /^PENDING/ do
    pending
 end

Given(/^I go to the home page$/) do
  visit "/" # express the regexp above with the code you wish you had
end


Given(/^I click "(.*?)"$/) do |arg1|
  click_link( arg1) # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end



Given(/^have logged in to "(.*?)"$/) do |arg1|
   visit "/auth/#{arg1.downcase}"

end

Given(/^have not logged in to "(.*?)"$/) do |arg1|
 # express the regexp above with the code you wish you had
  #visit "/auth/#{arg1.downcase}"
  #expect(auth).to eq(arg1)# express the regexp above with the code you wish you had
  pending
  
end

