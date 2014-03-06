require('rspec')
require('word_calculator.rb')

describe('calculator') do 
  it('returns 2 when given the string "What is 1 plus 1"') do
    calculator("What is 1 plus 1?").should(eq(2))
  end
end
