require 'pry'

class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  # def artist=(artist_name)
  #   # artist = Artist.new(@artist_name)
    
  #   # if (self.artist.nil?)
  #   #   self.artist = Artist.new(name)
  #   # else
  #   #   self.artist.name = name
  #   # end
  #   # filename_arr = filename.split(".mp3").join.split(" - ")
  #   # artist_name = filename_arr[0]
  #   artist = Artist.find_or_create_by_name(artist_name)
  #   song = Artist.add_song(self.name)
  # end
  
  def artist_name=(artist)
    artist_obj = Artist.find_or_create_by_name(artist)
    self.artist = artist_obj
    artist_obj.add_song(self)
  end
  
  def self.new_by_filename(filename)
    
    filename_arr = filename.split(" - ")
    song_name = filename_arr[1]
    artist = filename_arr[0]
    song = self.new(song_name)
    song.artist_name = artist
    song
    
    # file_array = filename.split(" - ")
    # new_song = Song.new(file_array[1])

    # artist = Artist.find_or_create_by_name(file_array[0])
    
    # new_song.artist = artist
    # new_song
  end

end