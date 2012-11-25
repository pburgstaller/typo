Given /^the following articles exist:$/ do |articles_table|
  articles_table.hashes.each do |article|
    Article.create!(article)
  end
#  assert articles_table.hashes.size == Article.all.count
end

Given /^I merge articles "(.*?)" and "(.*?)"$/ do |arg1, arg2|
  visit path_to("edit article \"#{arg1}\"")
  merge_with_id = Article.find_by_title(arg2).id
  fill_in("merge_with", :with => merge_with_id)
  click_button("Merge")
end

Then /^I follow edit "(.*?)"$/ do |article|
  pending # express the regexp above with the code you wish you had
end
