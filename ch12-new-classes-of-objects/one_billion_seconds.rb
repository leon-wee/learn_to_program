#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby

# Find our the exact second you were born (if you can)
# Split into 2 parts. Part A) and Part B)


# Part A) Find out my age in seconds

time_now = Time.new

# July 2nd 1994, 3:33 pm
birthday = Time.new(1994, 7, 2, 15, 33)
my_age_in_seconds = time_now - birthday


# Part B) Figure our when you will turn one billion seconds old

time_to_be_aged_1_billion = 1000000000 - my_age_in_seconds

puts time_to_be_aged_1_billion # time in seconds I need to convert to years, months and days to mark it on my calendar!










