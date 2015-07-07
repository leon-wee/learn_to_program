#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
def ask question
  while true
    puts question
    answer = gets.chomp.downcase
    if (answer == 'yes' || answer == 'no')
      if answer == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts "Please answer 'yes' or 'no'."
    end
  end
end

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
puts ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas.'
