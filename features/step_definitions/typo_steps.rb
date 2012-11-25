Given /^the following articles exist:$/ do |articles_table|
  articles_table.hashes.each do |article|
    Article.create!(article)
  end
#  assert articles_table.hashes.size == Article.all.count
end

Then /^I follow edit "(.*?)"$/ do |article|
  pending # express the regexp above with the code you wish you had
end
