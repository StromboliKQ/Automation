Given(/^I login$/) do
  visit 'https://soundcloud.com/login'
  fill_in 'username', :with => ENV['EMAIL']
  fill_in 'password', :with => ENV['PASS']
  click_button 'Sign in'
end

Then(/^I should be in the members area$/) do
  expect(page).to have_link 'Home'
end


