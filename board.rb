class Board
  attr_accessor :cell

  def initialize
    reset 
    puts <<~Board
       ___ ___ ___ 
      |_7_|_8_|_9_|
      |_4_|_5_|_6_|
      |_1_|_2_|_3_|

    Board
  end

  def reset
  clear_screen
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

def clear_screen
    system("clear") || system("cls")
end

end
