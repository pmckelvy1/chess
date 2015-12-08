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




class SlidingPiece < Piece

  def moves
    possible_moves = []
    self.move_dirs.each do |direction|
      new_pos = [@position[0] + direction[0], @position[1] + direction[1]]
      while board.in_bounds?(new_pos) && board[*new_pos].nil?
        possible_moves << new_pos
        new_pos = [new_pos[0] + direction[0], new_pos[1] + direction[1]]
      end
      possible_moves << new_pos if board.in_bounds?(new_pos) && board[*new_pos].is_opponent?(self.color)
    end
    possible_moves
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
  def moves
    possible_moves = []
    self.move_dirs.each do |direction|
      new_pos = [@position[0] + direction[0], @position[1] + direction[1]]
      if board.in_bounds?(new_pos)
        possible_moves << new_pos if board[*new_pos].nil? || board[*new_pos].is_opponent?(self.color)
      end
    end
    possible_moves
  end

end


class Knight < SteppingPiece
  def move_dirs
    [[-2, -1], [-2,  1], [-1, -2], [-1,  2], [ 1, -2], [ 1,  2], [ 2, -1], [ 2,  1]]
  end
end


class King < SteppingPiece
  def move_dirs
    [[-1, 1], [-1, -1], [1, -1], [1, 1], [1, 0], [0, 1], [0, -1], [-1, 0]]
  end
end






class Pawn < Piece

  def moves
    # if board[new_pos].is_opponent?
    possible_moves = []

    #if black - move [1, 0] if in_bounds and nil
    if self.is_black?
      new_pos = [@position[0] + 1, @position[1]]
      if board.in_bounds?(new_pos)
        possible_moves << new_pos if board[*new_pos].nil?
      end

      #if if opponent is at -1, 1, [1, 1] is_opponent?
      new_pos = [@position[0] + 1, @position[1] + 1]
      unless board[*new_pos].nil?
        possible_moves << new_pos if board[*new_pos].is_opponent?(self.color)
      end

      new_pos = [@position[0] + 1, @position[1] - 1]
      unless board[*new_pos].nil?
        possible_moves << new_pos if board[*new_pos].is_opponent?(self.color)
      end

    #if white
    elsif !(self.is_black?)
      new_pos = [@position[0] - 1, @position[1]]
      if board.in_bounds?(new_pos)
        possible_moves << new_pos if board[*new_pos].nil?
      end

      #if if opponent is at -1, 1, [1, 1] is_opponent?
      new_pos = [@position[0] - 1, @position[1] + 1]
      unless board[*new_pos].nil?
        possible_moves << new_pos if board[*new_pos].is_opponent?(self.color)
      end

      new_pos = [@position[0] - 1, @position[1] - 1]
      unless board[*new_pos].nil?
        possible_moves << new_pos if board[*new_pos].is_opponent?(self.color)
      end
    end


    #if starting point - y = 1 or 6 and on board
    if self.is_black? && @position[0] == 1
      new_pos = [@position[0] + 2, @position[1]]
      possible_moves << new_pos if board[*new_pos].nil?
    elsif !(self.is_black?) && @position[0] == 6
      new_pos = [@position[0] - 2, @position[1]]
      possible_moves << new_pos if board[*new_pos].nil?
    end

    possible_moves
  end

end
