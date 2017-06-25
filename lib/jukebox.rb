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

def play(songs)
    puts  "Please enter a song name or number:"
    songs.each do |title|
    if gets.chomp == title
     puts "Playing #{title}"
    elsif gets.chomp < "10"
    puts "#{songs}"
    else
    puts "Invalid input, please try again"
        end
    end
end

def list(songs)
    songs.each_with_index do |index, title|
        puts "#{index}. #{title}"
    end
end

def exit_jukebox
    puts "Goodbye"
end


def run(songs)
help
while true
    puts "Please enter a command:"
    command = gets.chomp
    case command
        when "list"
            list(songs)
        when "play"
            play(songs)
        when "help"
            help
        when "exit"
            exit_jukebox
        break
        else
        help
        end
    end
end
