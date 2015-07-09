#!/Users/leonwee/.rvm/rubies/ruby-2.2.1/bin/ruby
def music_shuffle filenames
  # Don't even understand the question so I'm going to analyze Chris Pine's solutions

  # He begins by defining what a 'perfect' shuffle is, which means to shuffle twice and then cut the deck once. When I first read the question I asked myself what a 'perfect' shuffle was and it didn't occur to me to think of it like cards or any other method that is not like the previous shuffling method.

  filenames = filenames.sort
  # Chris Pine is taking it very systematically and wants it to be sorted before shuffling it again
  len = filenames.length

  # Intends to shuffle it twice
  2.times do
    l_idx = 0
    # imagine splitting the pile into two and this is the card
    # on the left
    r_idx = len/2      # index of card on the right pile
    shuf = []

    # NOTE: If we have an odd number of "cards", then the right pile will
    #       be larger. Suppose the music_array has 15 files. On the right
    #       pile the number will then be 7. That means the right pile has
    #       card from 7 to 15, which is obviously larger than the left
    #       pile with just 6 music file.

    while shuf.length < len
      if shuf.length % 2 == 0  #shuffle by taking one card from both piles
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
  end

  # Now Cut the Deck

  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

# Index and cut modulus length will be eventually have to be 1 and then it'll be push to the arr = []. Assume that the music.length file is 15. The reason why idx needs to be incremented is because at the starting point idx = 0 and if cut = rand(len) = 13. The total is just 13 % 15, which will be 0.

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx = idx + 1
  end

  arr
end

songs = ['Howl', 'Dear No One', 'See You Again', 'Madness', 'Dead Inside']

puts music_shuffle songs


