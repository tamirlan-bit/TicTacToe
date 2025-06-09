class EndGame

  def initialize(board)
    @board = board    
  end

  # It's a draw if there are no empty cells left
  def draw?
    !@board.cell.include?("_")
  end

  def win?
    winning_lines = [
      [1, 2, 3], [4, 5, 6], [7, 8, 9], # rows
      [1, 4, 7], [2, 5, 8], [3, 6, 9], # columns
      [1, 5, 9], [7, 5, 3] # diagonal
      ]
      # Go through each possible winning line
    winning_lines.each do |line|
    pos1 = line[0]
    pos2 = line[1]
    pos3 = line[2]
    val1 = @board.cell[pos1]
    val2 = @board.cell[pos2]
    val3 = @board.cell[pos3] 
    # Check if all three are the same and not "_"
    return true if val1 != "_" && val1 == val2 && val2 == val3
    end
  end
  false
end
