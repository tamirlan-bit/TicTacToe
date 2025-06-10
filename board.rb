class Board
  attr_accessor :cell

  def initialize
    puts 'Tic Tac Toe Game Start!' 
    @cell = ["","1","2","3","4","5","6","7","8","9"]
    display
    reset    
  end

  def reset
  @cell = ["","_","_","_","_","_","_","_","_","_"]
  end

  def display
  puts <<~Board
   ___ ___ ___ 
  |_#{@cell[7]}_|_#{@cell[8]}_|_#{@cell[9]}_|
  |_#{@cell[4]}_|_#{@cell[5]}_|_#{@cell[6]}_|
  |_#{@cell[1]}_|_#{@cell[2]}_|_#{@cell[3]}_|

Board
  end

  def make_move(index, symbol)
  @cell[index] = symbol
  end

end
