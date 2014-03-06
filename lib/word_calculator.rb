def calculator(originalString)

  operators = {"plus" => :+, "minus" => :-, "divided" => :/, "times" => :*, "power"=> :**} 
  originalString=originalString.sub!(/[^a-zA-Z0-9_\s.]/, "")
  words=originalString.split
  answer=0
  calculations = []

  puts "#{calculations}"

  words.each do |word|
    if operators.include? word
        calculations.push(operators[word])
    elsif /[0-9]/.match(word) 
        calculations.push(word.to_f)
    else 
        calculations = calculations
    end
  end

  calculations = eval(calculations.join)
end
