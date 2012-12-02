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

Given /^there are no categories/ do
  Category.destroy_all
  assert Category.all.count == 0
end

When /^I follow the "(.*?)" link$/ do |arg1|
  visit path_to(arg1)
end

Then /^I should get a "(.*?)" message$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the "New Categories" page$/ do
  URI.parse(current_url).path.should == "/admin/categories/new"
end
