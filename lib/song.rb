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

  def create
    song = self.new
    @@all << song
    self.all
  end

end
#binding.pry
