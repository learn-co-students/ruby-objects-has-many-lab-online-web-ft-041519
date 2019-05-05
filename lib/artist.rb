class Artist
  attr_accessor :name, :songs
  
  @@counter = 0
  @@songs = []
  
  def initialize(name)
    @name = name
  end
  
  def songs
    @@songs
  end

  def add_song(songs)
   @@songs << songs
   songs.artist = self
   @@counter += 1
  end
  
  def add_song_by_name(song)
  new_song = Song.new(song)
  @@songs << new_song
  new_song.artist = self
  @@counter += 1
  end
  
  def self.song_count
    @@counter
  end
end


  


#     describe "#add_song" do
#       it "takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist" do
#         hello = Song.new("Hello")
#         adele.add_song(hello)
#         expect(adele.songs).to include(hello)
#         expect(hello.artist).to eq(adele)

#     describe "#add_song_by_name" do
#       it "takes in an argument of a song name, creates a new song with it and associates the song and artist" do
#         adele.add_song_by_name("Rolling in the Deep")
#         expect(adele.songs.last.name).to eq("Rolling in the Deep")
#         expect(adele.songs.last.artist).to eq(adele)

#     describe ".song_count" do
#       it "is a class method that returns the total number of songs associated to all existing artists" do
#         expect(Artist.song_count).to eq(2)
