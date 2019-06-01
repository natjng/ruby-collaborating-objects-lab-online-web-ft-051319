require 'pry'

class Song
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def artist_name=(artist)
    artist_obj = Artist.find_or_create_by_name(artist)
    self.artist = artist_obj
    artist_obj.add_song(self)
  end
  
  def self.new_by_filename(filename)
    filename_arr = filename.split(" - ")
    # song_name = filename_arr[1]
    # artist = filename_arr[0]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end

end