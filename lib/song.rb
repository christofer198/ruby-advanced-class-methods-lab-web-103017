require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end


  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    song
    #self.all
  end

  def self.new_by_name(name_of_song)
    song = self.new
    song.name = name_of_song
    @@all << song
    song
  end

  def self.create_by_name(name_of_song)
    song = self.new
    song.name = name_of_song
    song.save
    song
  end

end
#binding.pry
