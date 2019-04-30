class Song

  @@all = []

  attr_accessor :artist, :name, :genre, :artist_name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if defined? artist.name
      artist.name
    else
      nil
    end
  end

end
