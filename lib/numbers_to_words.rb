def num_alpha(integer, index=0)

numbers = {0 => "", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen",
  15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

large_numbers = {2 => "twenty ", 3 => "thirty ", 4 => "forty ", 5 => "fifty ", 6 => "sixty ", 7 => "seventy ", 8 => "eighty ", 9 => "ninety "}

big_numbers = {0 => "", 1 => " thousand ", 2 => " million ", 3 => " billion ", 4 => " trillion "}

results = ""

    if integer > 999
      results += num_alpha(integer/1000, index+1)
       integer = integer%1000

    end

    if integer < 1000 && integer > 99
      results += numbers[integer/100] + " hundred " +num_alpha(integer % 100) + "#{big_numbers[index]}"

    end

    if integer < 100 && integer >19
      results += large_numbers[integer/10] + num_alpha(integer%10) + "#{big_numbers[index]}"

    end

    if integer < 20 && integer > 0
      results += numbers[integer] + "#{big_numbers[index]}"

    end

results
end
 puts num_alpha(10000000)

