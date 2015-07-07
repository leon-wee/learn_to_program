#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
def dictionary_sort arr
  rec_dic_sort arr, []
end

def rec_dic_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |item|
    if item.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = item
    else
      still_unsorted.push item
    end
  end

  sorted.push smallest
  rec_dic_sort still_unsorted, sorted
end

puts dictionary_sort ['Apple','alligator','football','Fire','Zebra']

  # Sorted
  # Unsorted
  # Downcase everything because capitals don't matter
  # Smallest push to sorted