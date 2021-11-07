if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [$stdin, $stdout].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'lib/console_interface'
require_relative 'lib/game'

# Greetings
puts 'Всем привет!'

# Upload sample word from file
word = File.readlines("#{__dir__}/data/words.txt", encoding: 'UTF-8', chomp: true).sample
game = Game.new(word)
console_interface = ConsoleInterface.new(game)

# While game not over
until game.over?
  # Display the next state of the game
  console_interface.print_out
  # Ask for the next letter
  letter = console_interface.get_input
  # Refresh game state
  game.play!(letter)
end

# Display the final state of the game
console_interface.print_out
