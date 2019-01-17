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
     
    this_song = Song.new(name, self, genre)
    @songs << this_song
    
  end
  
  def genres 
    songs.collect { |song| song.genre }.uniq 
  end 
  
end 
binding.pry
jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)