#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
def english_number number
  if number < 0
    return 'Please enter a number that is non-negative'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']

# numbers represent the number of 00s behind the numbers
  zillions = [['hundred',            2],
              ['thousand',           3],
              ['million',            6],
              ['billion',            9],
              ['trillion',          12],
              ['quadrillion',       15],
              ['quintillion',       18],
              ['sextillion',        21],
              ['octillion',         27],
              ['nonillion',         30],
              ['decillion',         33],
              ['undecillion',       36],
              ['duodecillion',      39],
              ['tredecillion',      42],
              ['quattuordecillion', 45],
              ['quindecillion',     48],
              ['sexdecillion',      51],
              ['septendecillion',   54],
              ['octodecillion',     57],
              ['novemdecillion',    60],
              ['vigintillion',      63],
              ['googol',           100]]

  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1] # because zil_pair[1] is the number of zeros this effectively gives us the crazy large googol number

    write = left/zil_base  # this will give our number (supposedly really  big number) divided by googol to see how many zillions are there left

    left = left - write*zil_base # now we're getting the remainder of those zillions

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 # how many 10s left?
  left = left - write*10 # subtract off the 10s

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left # how many ones left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end

  num_string
end

start = 9999

while start > 2
  puts (puts english_number start).to_s + "bottles of beer on the wall, "
  puts (puts english_number start).to_s + "bottles of beer."
  puts "Take one down and pass it around, "
  start = start - 1
  puts (puts english_number start).to_s + "bottles of beer on the wall."
end

puts "Two bottles of beer on the wall, two bottles of beer"
puts "Take one down and pass it around, one bottle of beer on the wall."
puts "One bottle of beer on the wall, One bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."





