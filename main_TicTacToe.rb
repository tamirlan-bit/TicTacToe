require_relative 'board'
require_relative 'play'
require_relative 'endGame'

board = Board.new
board.display
play = Play.new(board)
end_game = EndGame.new(board)

loop do
  play.player_turn("X")
  board.clear_screen
  board.display
  end_game.check_game_end("X", end_game, play)

  play.player_turn("O")
  board.clear_screen
  board.display
  end_game.check_game_end("O", end_game, play)  
end
