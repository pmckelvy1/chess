class SteppingPiece < Piece
  def moves
    possible_moves = []
    self.move_dirs.each do |direction|
      new_pos = [@position[0] + direction[0], @position[1] + direction[1]]
      if board.in_bounds?(new_pos)
        possible_moves << new_pos if board[new_pos].nil? || board[new_pos].opponent?(self.color)
      end
    end
    possible_moves
  end
end
