class Play
  attr_accessor :cell

  def initialize(board)
    @board = board
  end

  def replay
    puts "Would you like Another Game?\nPress 'Y' for Yes and 'N' for No"
    re = gets.chomp.downcase
    if re == 'y' || re =='yes'  
      @board.reset
      @board.display
    else
      puts "\n(ノಠ益ಠ)ノ彡┻━┻\n\n"
      exit
    end
  end

  def player_turn(symbol)
  print "#{symbol} is your turn: "
  loop do
    move = gets.chomp.to_i
    if move < 1 || move > 9
      puts "Wrong number, you can only enter 1-9"
    elsif @board.cell[move] == "_"
        @board.make_move(move, symbol)      
      break
    elsif %w[X O].include?(@board.cell[move])
      puts "It's already filled, choose another one"
    else
      puts "Invalid input, try again"
    end
  end
end
end
