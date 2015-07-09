#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
def shuffle arr
  shuffled = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |check|
      if curr_index == rand_index   # it seems we can refer to each individual array by its number when we do the do method and end
        shuffled.push check
      else
        new_arr.push check
      end
      curr_index = curr_index + 1
    end

    arr = new_arr
  end

  shuffled
end


puts shuffle [1,2,3,4,5,6,7,8,9, 'For', 4.0]

