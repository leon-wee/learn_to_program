#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
Dir.chdir('/Users/leonwee/Desktop/Pictures_1') # moves it to this directory

pic_names = Dir['/Users/leonwee/Desktop/Pictures/*.{JPG,jpg}'] # identify where the photos are

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names. each do |name|
  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? new_name
    puts "Check your directory!"
    exit
  else
    File.rename name, new_name
  end

  pic_number = pic_number + 1
end

puts
puts 'Done!'





