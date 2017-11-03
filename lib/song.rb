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

  def self.find_by_name(name_of_song)
    self.all.find {|x| x.name==name_of_song}
  end

  def self.find_or_create_by_name(name_of_song)

    if self.find_by_name(name_of_song)==nil
      self.create_by_name(name_of_song)
    else
      self.find_by_name(name_of_song)
    end

  end

  def self.alphabetical
    self.all.sort_by{|x| x.name}
  end

  def self.new_from_filename(song_name)
    song = self.new
    artist = song_name.split(/[^a-zA-Z\s]|\s-\s/)[0]
    song = song_name.split(/[^a-zA-Z\s]|\s-\s/)[1]
    song.name = song
    song.artist_name = artist
    song.save

end
#binding.pry
