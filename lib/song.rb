class Song
  attr_accessor :name, :artist

  @@all = []
  
  def initialize(name, artist = nil)    #must set artist initialize = to nil as default/ opt arg
   @name = name
   @artist = artist       #assigns local variable artist so it may be called below in #artist_name
   @@all << self                  #shovels new SONG instances intialized into the array
end

def self.all
  @@all.flatten           #must flatten or will receive [song],[song],[song]
end

def artist_name
    if self.artist      #if the SONG has artist then SONG.artist.name, 
      self.artist.name
    else                        #nil implicitly assumed
    end
  end
end
