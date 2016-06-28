Given(/^the local app is running$/) do
  visit('localhost:8080')

end

Given(/^I fill text in Name bar$/) do
 sleep 1
  fill_in 'name', :with => 'No File To Attack Sorry'
end

When(/^I press the browse button$/) do
   find(:css, 'input[name="file"]').click
end

And(/^I pick a file$/) do
   attach_file('file', File.absolute_path('./test.txt'))
end

When(/^I press the upload button$/) do
   find(:css, 'input[value="Upload"]').click
end

Then(/^I should see (?:an|a) "([^"]*)" message$/) do |msg|
    expect(page).to have_content msg
  sleep 30
end
