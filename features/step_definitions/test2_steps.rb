When (/I search for something$/) do ENV['SEARCH_FOR']
  fill_in('qu', :with => ENV['SEARCH_FOR'], visible: false)
end

Then(/^I search$/) do
  click_on("searchSubmit")
end

Then (/I should see the correct results$/) do ENV['SEARCH_FOR']
 expect(page).to have_title ENV['SEARCH_FOR']
end


#When (/I search for something$/) do
#  fill_in('qu', :with => ENV['SEARCH'], visible: false) do
#    find_field('raksearch').native.send_key(:enter)
#  end
#end

#Then (/I should see the correct results$/) do
#  expect(find_link(*ENV['SEARCH'])).to have_content(ENV['SEARCH'])
#end

 # within(:css, "#search-terms") do
 # expect(find_link(*ENV['SEARCH'])).to have_content(ENV['SEARCH'])
 #end
