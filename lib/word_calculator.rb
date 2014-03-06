def calculator(originalString)
answer=0
  if originalString.include? 'plus'
    words=originalString.split
    words.each do |word|
      #find the numbers in the array of words
      if word.to_i > 0
        answer += word.to_i
      end
    end
  end  
  answer
end
