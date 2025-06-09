require_relative 'board'
require_relative 'play'
require_relative 'endGame'

def check_game_end(symbol, end_game, play)
  if end_game.win? == true
    puts "#{symbol} won \\ (•◡•)/ ! Game Over!\n\n"
    play.replay
  elsif end_game.draw?
    puts "It's a Draw! (；一_一)\nGame Over!\n\n"
    play.replay
  end
end

board = Board.new
board.display
play = Play.new(board)
end_game = EndGame.new(board)

loop do
  play.player_turn("X")
  board.display
  check_game_end("X", end_game, play)

  play.player_turn("O")
  board.display
  check_game_end("O", end_game, play)  
end
