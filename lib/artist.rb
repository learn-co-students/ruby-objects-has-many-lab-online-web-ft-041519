class Artist
  attr_accessor :name, :songs
  
  @@counter = 0   #need to start at zero, needs to ve available to other methods- @@
  @@songs = []
  
  def initialize(name)
    @name = name
  end
  
  def songs
    @@songs
  end

  def add_song(songs)   
   @@songs << songs
   songs.artist = self   #assocaites song with artist by telling the song it belongs to tht artist
   @@counter += 1         #everytime a song is added to @@songs array add 1
  end
  
  def add_song_by_name(song)
  new_song = Song.new(song)   #creates new song with (song) calling the Song class
  @@songs << new_song         #push it into the array
  new_song.artist = self        #associate the new song with the artist (attr acces or Song)
  @@counter += 1                #add 1 to counter every time new_song is added to songs array
  end
  
  def self.song_count     #class method - self
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
