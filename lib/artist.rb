require 'pry'
class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  def initialize(name)
    @songs = []
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    @songs << new_song
    new_song
  end
  
  def genres 
    songs.collect { |song| song.genre }.uniq 
  end 
  
end 
