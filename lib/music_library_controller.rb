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
      
      case user_input
        when "list songs"
          list_songs
        when "list artists"
          list_artists
        when "list genres"
          list_genres
        when "list artist"
          list_songs_by_artist
        when "list genre"
          list_songs_by_genre
        when "play song"
          play_song
      end
    end 
  end
  
  def list_songs
    Song.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do  |a, i| 
      puts "#{i}. #{a.artist.name} - #{a.name} - #{a.genre.name}"
    end
  end
  
  def list_artists
    Artist.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |a, i|
      puts "#{i}. #{a.name}"
    end
  end
  
  def list_genres
    Genre.all.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |a, i|
      puts "#{i}. #{a.name}"
    end
  end
  
  def list_songs_by_artist
    puts "Please enter the name of an artist:"
    input = gets.strip
    artist = Artist.find_by_name(input)
    if artist 
      artist.songs.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |a, i|
        puts "#{i}. #{a.name} - #{a.genre.name}"
      end
    end
  end
  
  def list_songs_by_genre
    puts "Please enter the name of a genre:"
    input = gets.strip
    genre = Genre.find_by_name(input)
    if genre 
      genre.songs.sort {|a, b| a.name <=> b.name}.each.with_index(1) do |a, i|
        puts "#{i}. #{a.artist.name} - #{a.name}"
      end
    end
  end
  
  def play_song(song)
    puts "Please choose a song"
    input = gets.strip
  end
  
  def list_genre(genre)
  end
  
  def play_song(song)
  end
end