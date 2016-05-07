Given(/^I am on the Rakuten USA website$/) do
  visit('http://rakuten.com')
end

When (/I search for "([^"]*)"$/) do |search_text|
  fill_in('qu', :with => search_text, visible: false) do
  	@selenium.click "searchSubmit"
  end
end

Then (/I should be presented with "([^"]*)"$/) do |search_text|
  expect(find_link(*search_text)).to have_content(search_text)
end
