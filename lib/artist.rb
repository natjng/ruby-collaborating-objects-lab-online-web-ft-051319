require 'pry'

class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)

    # if @@all.detect{|artist| artist.name != name} 
    #   Artist.new(name)
    # else
    #   @@all.detect{|artist| artist.name == name
    # end  
    
    # self.new(name) if @@all.detect{|artist| artist.name != name}
    

    found_arist = @@all.find{ |artist| artist.name == name}
    if found_arist == nil
      new_artist = self.new(name)
      new_artist.save
    else
      found_arist
    end

  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end

end