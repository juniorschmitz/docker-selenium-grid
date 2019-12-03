Given("i am on Google main page") do
  @google_page.load
end

When("i search for {string}") do |string|
  @google_page.search(string)
end

Then("there should be results") do
  expect(@google_page.results.size).to be >= 1
end
