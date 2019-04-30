class Artist

  @@songs = []

  attr_accessor
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def songs
    @@songs
  end

  def add_song(song)
    @@songs << song
  end

end
