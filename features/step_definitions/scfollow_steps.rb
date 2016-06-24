When(/^I click (.*)$/) do |btn|
  click_button '*btn'
end

Then(/^I am following the user$/) do
  expect(page).to have_button 'unfollow'
end
