class MusicLibraryController
  def initialize(path = './db/mp3s')
    MusicImporter.new(path).import
  end
  
  def call
    puts "Welcome to your music library!"
    user_input = ""
    
    def welcome_message
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
    end
    
    until user_input == "exit"
      welcome_message
      user_input = gets.strip
      
      #case user_input
    end 
  end
  
  def list_songs
    Song.all.sort {|a, b| a. <=> b}.each_with_index(1) do  |song, i| 
      puts "#{i}. #{song.artist} - #{song.name} - #{song.genre}"}
  end
  
  def list_artists
  end
  
  def list_genres
  end
  
  def list_artist(artist)
  end
  
  def list_genre(genre)
  end
  
  def play_song(song)
  end
end