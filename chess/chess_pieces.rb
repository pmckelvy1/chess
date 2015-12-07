require_relative "chess_board"

class Piece(board)

  attr_accessor :board, :postion

  def initialize(position)
    @position = position
  end

  def moves
  end
end



class SlidingPiece < Piece


  def moves
    possible_moves = []
    self.move_dirs.each do |direction|
      new_pos = [@position[0] + direction[0], @position[1] + direction[1]]
      while board[new_pos].nil? && board.in_bounds(new_pos)
        possible_moves << new_pos
        new_pos = [new_pos[0] + direction[0], new_pos[1] + direction[1]]
      end
      possible_moves << new_pos if board[new_pos].is_opponent? #take the opponent piece
      end
    end
  end

end


class Bishop < SlidingPiece
  def move_dirs
    [[-1, 1], [-1, -1], [1, -1], [1, 1]]
  end
end


class Rook < SlidingPiece
  def move_dirs
    [[1, 0], [0, 1], [0, -1], [-1, 0]]
  end
end


class Queen < SlidingPiece
  def move_dirs
    [[-1, 1], [-1, -1], [1, -1], [1, 1], [1, 0], [0, 1], [0, -1], [-1, 0]]
  end
end





class SteppingPiece < Piece

end


class Pawn < Piece

end
