class Song 
  
  attr_accessor :name, :artist 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new 
    song = Song.new 
    @@all << song 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    if self.artist.nil? 
      nil
    else 
      self.artist.name 
    end 
  end 
end 