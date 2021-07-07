require 'pry'

class Artist
  
  attr_accessor :name, :songs
  
  @@counter = 0 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    # binding.pry 
    @songs << song
    song.artist = self
    @@counter += 1 
  end 
  
  def add_song_by_name(song_name)
     #binding.pry
    song = Song.new(song_name)
    @songs << song 
    song.artist = self
    @@counter += 1 
  end 
  
  def self.song_count
   # binding.pry
     @@counter  
  end 
  
end 