Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.new(:title => movie['title'], :rating => movie['rating'], :release_date => movie['release_date']).save
  end
end
Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |film, director|
  step %Q{the "movie[title]" field within the page should contain "#{film}"}
  step %Q{the "movie[director]" field within the page should contain "#{director}"}
end