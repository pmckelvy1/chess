class SlidingPiece < Piece
# loop do
#   break if edge of board
#   if new_pos not empty?
#     << if opponent
#     break
#   end
# end

  def moves
    possible_moves = []
    self.move_dirs.each do |direction|
      new_pos = [@position[0] + direction[0], @position[1] + direction[1]]
      while board.in_bounds?(new_pos) && board.empty?(new_pos)
        possible_moves << new_pos
        new_pos = [new_pos[0] + direction[0], new_pos[1] + direction[1]]
      end
      possible_moves << new_pos if board.in_bounds?(new_pos) && board[new_pos].opponent?(self.color)
    end
    possible_moves
  end
end
