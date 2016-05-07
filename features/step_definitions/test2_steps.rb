When (/I search for something$/) do ENV['FOO']
  fill_in('qu', :with => ENV['FOO'], visible: false)
end

Then(/^I search$/) do
  click_on("searchSubmit")
end

Then (/I should see the correct results$/) do ENV['FOO']
 expect(page).to have_title ENV['FOO']
end


#When (/I search for something$/) do
#  fill_in('qu', :with => ENV['FOO'], visible: false) do
#    find_field('raksearch').native.send_key(:enter)
#  end
#end

#Then (/I should see the correct results$/) do
#  expect(find_link(*ENV['FOO'])).to have_content(ENV['FOO'])
#end

 # within(:css, "#search-terms") do
 # expect(find_link(*ENV['FOO'])).to have_content(ENV['FOO'])
 #end
