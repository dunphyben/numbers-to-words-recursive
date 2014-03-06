def calculator(originalString)

  operators = {"plus" => :+, "minus" => :-, "divided" => :/, "times" => :*, "power" => :**} 
  #originalString=originalString.sub!(/[^a-zA-Z0-9_\s.]/, "")
  questions=originalString.split("?")
  answer=[]
  calculations = []
  words = []

  questions.each do |question|
    words=question.split
      words.each do |word|
        if operators.include? word
            calculations.push(operators[word])
        elsif /[0-9]/.match(word) 
            calculations.push(word.to_f)
        else 
            calculations = calculations
        end
      end 
      #puts "#{calculations}"
     answer.push(eval(calculations.join)) 
     calculations=[]
  end   
  #puts "#{answer}"
  answer.join(",")
end
