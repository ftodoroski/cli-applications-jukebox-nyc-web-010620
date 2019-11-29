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
  songs.each { |song| return true if user_input == song }

  false
end

def find_song_by_number(user_input, songs)
  user_input_num = user_input.to_i

  songs.each_with_index { |song, idx| return true if user_input_num == (idx + 1) }

  false
end

def return_song(user_input, songs)
  songs.each_with_index do |song, idx|
    if user_input == song
      return song
    elsif user_input.to_i == (idx + 1)
      return song
    end
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip

  if find_song_by_name(user_input, songs) || find_song_by_number(user_input, songs)
    puts "Playing #{return_song(user_input, songs)}"
  else
    puts "Invalid input, please try again"
  end
end
# maybe ill be needing a loop here

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # puts "Please enter a command:"
  # user_input = gets.strip
  iteration = true

  while iteration
    puts "Please enter a command:"
    user_input = gets.strip

    iteration = false

    case user_input
    when "help"
      iteration = true
      help
    when "list"
      iteration = true
      list(songs)
    when "play"
      iteration = true
      play(songs)
    when "exit"
      iteration = false
      exit_jukebox
    end
  end
end
