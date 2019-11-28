# Add your code here
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, idx| puts "#{(idx + 1)}. #{song}" }
end

def find_song_by_name(user_input, songs)
  songs.each { |song| user_input == song }
end

def find_song_by_number(user_input, songs)
  songs.each { |song| user_input == song }
end

def return_song(user_input, songs)
  songs.each_with_index do |song, idx|
    if user_input == song
      return song
    else
      return song
    end
  end

end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip

  if find_song_by_name(user_input, songs) || find_song_by_number(user_input, songs)
    puts "Playing #{return_song(user_input, songs)}"
  end
end
