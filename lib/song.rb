class Song
  @@all = []

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    artist.nil? ? nil : self.artist.name
  end
end
