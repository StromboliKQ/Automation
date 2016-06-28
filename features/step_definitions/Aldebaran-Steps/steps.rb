# File Upload Steps #
#===================##

Given(/^I am on the PMS API RESERVATION FORM$/) do
  visit 'http://localhost:8080/'
end

Then(/^I set the field name to "([^"]*)"$/) do |name|
  fill_in('name', :with => name)
end

Then(/^I select the 'file_blank_file' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file_blank_file.txt'))
end

Then(/^I select the 'file_copy2' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file_copy2.txt'))
end

Then(/^I select the 'ffile_invalid_file_format' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/ffile_invalid_file_format.txt'))
end

Then(/^I select the 'file_invalid_request_Key' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file_invalid_request_Key.txt'))
end

Then(/^I select the 'file_member_id_voilations' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file_member_id_voilations.txt'))
end

Then(/^I select the 'file_negative_points' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file_negative_points.txt'))
end

Then(/^I select the 'file_points_exceeding_max' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file_points_exceeding_max.txt'))
end

Then(/^I select the 'file_string_points' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file_string_points.txt'))
end

Then(/^I select the 'file-all-voilations' file$/) do
  attach_file('file', File.absolute_path('./features/upload-files/file-all-voilations.txt'))
end

Then(/^i wait$/) do
  sleep 1
end

#Then(/^I click the Upload buton$/) do
#   find(:css, 'input[value="Upload"]').click
#end
