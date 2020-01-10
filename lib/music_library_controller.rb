class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call
    puts "Welcome to your music library!"
    user_input = nil
    
    until user_input == "exit"
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      user_input = gets.strip
    end 
    
    case user_input
      when "list artists"
        puts "listing artists"
      when "list songs"
        puts "listing songs"
      when "list genres"
        puts "listing genres"
      when "list artist"
        puts "listing artist"
      when "list genre"
        puts "listing genre"
    end
    
  end
end