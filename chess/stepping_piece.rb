class SteppingPiece < Piece
  def moves
    possible_moves = self.move_dirs.map do |direction|
      [@position[0] + direction[0], @position[1] + direction[1]]
    end

    possible_moves.select! do |move|
      board.in_bounds?(move) && (board.empty?(move) || board[move].opponent?(self.color))
    end

    possible_moves
  end
end
