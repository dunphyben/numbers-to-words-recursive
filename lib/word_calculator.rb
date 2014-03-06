def calculator(originalString)

  operators = {"plus" => :+, "minus" => :-, "divided" => :/, "times" => :*}
  originalString=originalString.sub!(/[^a-zA-Z0-9_\s]/, "")
  words=originalString.split
  answer=0
  calculations = []

  words.each do |word|
    if operators.include? word
        calculations.push(operators[word])
    elsif /[0-9]/.match(word) 
        calculations.push(word)
    else 
        calculations = calculations
    end
  end

  calculations = eval(calculations.join)
end
