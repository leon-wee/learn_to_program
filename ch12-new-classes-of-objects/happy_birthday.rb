#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
# Asked my sister next to me born on September 19th 1996

# Find her age specifically!

time_now = Time.new
birthday = Time.gm(1996, 9, 19)

age_in_seconds = time_now - birthday

# to convert from seconds > minutes (60) > hours (60) > (days) (24) > years (365)
# put answers in float for specificity

age_in_years = age_in_seconds / (60*60*24*365.0)

puts age_in_years

# I can't spank my sister that is just wrong!




