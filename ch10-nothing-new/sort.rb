#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |sorting|
    if sorting < smallest
      still_unsorted.push smallest
      smallest = sorting
    else
      still_unsorted.push sorting
    end
  end

  sorted.push smallest
  rec_sort still_unsorted, sorted
end

puts (sort(['Apple', 'Dawn', 'Fox']))
puts sort ['Fire', 'Feet', 'Godzilla', 'Makers', 'Academy']
  # First I will list a bunch of words in arrays
  # Second find the smallest word and stick it to the already-sorted list
  # Third do the same thing but now use the still_unsorted_words