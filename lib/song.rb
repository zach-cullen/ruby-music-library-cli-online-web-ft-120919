class Song
  attr_accessor :name
  attr_reader :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end
  
  def save
    @@all << self
  end
  
  #class methods
  
  def self.create(name)
    obj = self.new(name)
    obj.save
    obj
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    self.all.find {|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    song ? song : self.create(name)
  end
  
  def self.new_from_filename(file_name)
    arr = file_name.split(" - ")
    name = arr[1]
    artist = Artist.find_or_create_by_name(arr[0])
    genre = Genre.find_or_create_by_name(arr[2].gsub(".mp3", ""))
    new(name, artist, genre)
  end
  
  def self.create_from_filename(file_name)
    song = self.new_from_filename(file_name)
    song.save
  end
  
  def self.destroy_all
    @@all = []
  end
end