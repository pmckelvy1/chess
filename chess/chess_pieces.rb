class Piece

  attr_accessor :position, :board
  attr_reader :color

  def initialize(board, color, position)
    @board = board
    @color = color
    @position = position
  end

  def moves
  end

  def black?
    color == :b
  end

  def opponent?(opp_color)
    opp_color != self.color
  end

  def valid_moves
    possible_moves = self.moves
    #possible_moves.reject! { |move| move_into_check?(move) }
    possible_moves
  end

  def move_into_check?(new_position)
    new_board = self.board.board_dup
    new_board.move!(self.position, new_position)
    new_board.in_check?(self.color)
  end
end
