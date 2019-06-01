require 'pry'

class MP3Importer
  attr_accessor :path, :files, :filename
  
  #binding.pry
  
  def initialize(path)
    @path = path
  end
  
  def files
    # Dir.glob("./spec/fixtures/mp3s/*.mp3")

    @files ||= Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }

    # @path = Dir.glob("./**/*.mp3")
    # @file = @path.join.split("./spec/fixtures/mp3s/").reject(&:empty?)
  end
  
  def import
    files.collect {|filename| Song.new_by_filename(filename)}
  end
end