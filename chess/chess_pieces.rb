require_relative "chess_board"
require 'byebug'

class Piece

  attr_accessor :board, :position
  attr_reader :color

  def initialize(board, color, position)
    @board = board
    @color = color
    @position = position
  end

  def moves
  end

  def is_black?
    color == :b
  end

  def is_opponent?(opp_color)
    return opp_color == self.color ? false : true
  end

  def valid_moves
    possible_moves = self.moves
    possible_moves.reject! { |move| move_into_check?(move) }
    possible_moves
  end

  def move_into_check?(new_position)
    new_board = self.board.board_dup
    new_board.in_check?(self.color)
  end
end
