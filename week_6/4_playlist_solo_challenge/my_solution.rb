require_relative "../assert.rb"
# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
# 1) create song class
# 2) initialize song and artist song class
# 3) create method play for class song
# 4) create class Playlist
# 5) initialize songs with splat operator
# 6) create method add to add arguments to array songs
# 7) create method num_of_tracks to count number of songs in array
# 8) create method remove to remove song in argument
# 9) create method play_all to call play method on each song
# 10) create method includes? check for song in array
# 11) create method display display all songs in array
# 12) add attribute accessors



# Initial Solution
# class Song
# 	attr_accessor :song, :artist
# 	def initialize(song,artist)
# 		@song = song
# 		@artist = artist
# 	end
# 	def play 
# 		puts "#{@song} - #{@artist}"
# 	end
# end

# class Playlist
#   	attr_accessor(:songs)

#   	def initialize(*songs)
#     		@songs = songs
#   	end

#   	def add(*songs)
#     		songs.each { |song| @songs << song }
#   	end

#   	def num_of_tracks
#     		@songs.size
#   	end

#   	def remove(song)
#     		@songs.delete(song)
#   	end

#   	def play_all
#     		@songs.each { |song| song.play }
#   	end

#   	def includes?(song)
#     		@songs.include? song 
#   	end

#   	def display
#     	@songs.each { |item| puts item.song }
#   	end
# end 


# Refactored Solution
class Song
	attr_accessor :song, :artist
	def initialize(song,artist)
		@song = song
		@artist = artist
	end
	def play 
		puts "#{@song} - #{@artist}"
	end
end

class Playlist
  	attr_accessor :songs 

  	def initialize(*songs)
    	@songs = songs
  	end

  	def add(*songs)
    	songs.each { |song| @songs << song }
  	end

  	def num_of_tracks
    	@songs.size
  	end

  	def remove(song)
    	@songs.delete(song)
  	end

  	def play_all
    	@songs.each { |song| song.play}
  	end

  	def includes?(song)
    	@songs.include? song
  	end

  	def display
    	@songs.each { |item| puts item.song }
  	end
end 





# DRIVER TESTS GO BELOW THIS LINE

one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
my_playlist.add(lying_from_you, angels)

assert{my_playlist.num_of_tracks == 5}
my_playlist.remove(angels)

assert{my_playlist.num_of_tracks == 4}
assert{my_playlist.includes?(lying_from_you) == true}
# my_playlist.play_all
# my_playlist.display
assert{one_by_one.class == Song}




# Reflection 

# This challenge took me a good amount of time because for a long time my include? method
# was not returning true because I had forgotten to include the attribute accessor. Also I spent 
# a good deal of time trying to make my playlist a hash. This challenge was definitely the hardest
# so far for this week's challenges. I feel the most important thing that I gained from this was
# a reminder that I need to include an attribute accessor.

