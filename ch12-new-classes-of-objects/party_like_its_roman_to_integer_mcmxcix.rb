#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby

def roman_to_integer roman
  # Hash class probably the best way to organize this challenge
  digit_vals = {'i' =>    1,
                'v' =>    5,
                'x' =>   10,
                'l' =>   50,
                'c' =>  100,
                'd' =>  500,
                'm' => 1000}

  total = 0       # starting value
  prev = 0        # I don't know what this is suppose to do
  index = roman.length - 1 # to refer to the specific letter later

  while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = digit_vals[c]

    if !val   # we did not learn !val guessing invalid value
      puts 'This is not a valid roman numeral!'
      return
    end

# think of 'mcmxcix' as an example
    if val < prev       # I don't get this code at all seems like there's no increment for the prev value that means val < prev will always hold since prev = 0 and val = 1, 5, ... , 1000.
      val = val * -1
    else
      prev = val
    end

    total = total + val
  end

  total
end


puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))


















