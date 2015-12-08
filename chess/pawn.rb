class Pawn < Piece

  def moves
    possible_moves = []

    direction = self.black? ? 1 : -1

    new_pos = [@position[0] + direction, @position[1]]
    if board.in_bounds?(new_pos)
      possible_moves << new_pos if board[new_pos].nil?
    end

    #if if opponent is at -1, 1, [1, 1] opponent?
    new_pos = [@position[0] + direction, @position[1] + 1]
    unless board.empty?(new_pos)
      possible_moves << new_pos if board[new_pos].opponent?(self.color)
    end

    new_pos = [@position[0] + direction, @position[1] - 1]
    unless board.empty?(new_pos)
      possible_moves << new_pos if board[new_pos].opponent?(self.color)
    end

    #if starting point - y = 1 or 6 and on board
    if self.first_move?
      new_pos = [@position[0] + (2 * direction), @position[1]]
      possible_moves << new_pos if board[new_pos].nil?
    end

    possible_moves
  end

  def first_move?
    if self.position[0] == 1 && self.color == :b
      return true
    elsif self.position[0] == 6 && self.color == :w
      return true
    end
    false
  end

end
