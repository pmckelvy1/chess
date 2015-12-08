class Piece

  attr_accessor :position, :board
  attr_reader :color, :unicode_string

  def initialize(board, color, position, unicode_string)
    @board = board
    @color = color
    @position = position
    @unicode_string = unicode_string
  end

  def moves
  end

  def black?
    color == :b
  end

  def opponent?(opp_color)
    opp_color != self.color
  end

  def move_into_check?(new_position)
    new_board = self.board.board_dup
    new_board.move!(self.position, new_position)
    new_board.in_check?(self.color)
  end
end
