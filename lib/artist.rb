require 'pry'

class Artist 

  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
    @songs = []
  end 
  
  def add_song(new_song)
    @songs << new_song
    new_song.artist = self  
  end 
  
  def add_song_by_name(new_song)

    song = Song.new(new_song)
    @songs << song
    song.artist = self
  end 

  def self.song_count
    Song.all.count
  end 
  
end 