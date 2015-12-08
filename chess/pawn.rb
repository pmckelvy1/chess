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
