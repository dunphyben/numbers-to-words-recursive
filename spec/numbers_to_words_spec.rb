require('rspec')
require('numbers_to_words.rb')

describe("num_alpha") do
  it("takes any number from 0-99 and returns its alpha equivalent") do
    num_alpha(11).should(eq("eleven"))
  end

  it("takes any number from 100-999 and returns its alpha equivalent") do
    num_alpha(999).should(eq("nine hundred ninety nine"))
  end
end


