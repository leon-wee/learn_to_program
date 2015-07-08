#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
def shuffle arr
  shuffled = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |check|
      if curr_index == rand_index
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

all_music = shuffle(Dir['/Users/leonwee/Music/Library_Music/*.mp3'])

File.open 'Leon\'s_Songs.m3u', 'w' do |f|
  all_music.each do |mp3|
    f.write mp3+"\n"
  end
end

puts 'Done!'















