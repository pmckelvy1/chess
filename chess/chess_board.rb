class ChessError < StandardError
end


class Board
  BOARD_SIZE = 8
  PIECES = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

  attr_accessor :grid

  def initialize()
    @grid = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE) { nil } }
    populate_board
  end

  def populate_board
      PIECES.each_with_index do |piece, idx|
        @grid[0][idx] = piece.new(self, :b, [0, idx])
        @grid[1][idx] = Pawn.new(self, :b, [1, idx])
        @grid[7][idx] = piece.new(self, :w, [7, idx])
        @grid[6][idx] = Pawn.new(self, :w, [6, idx])
      end
  end

  def []=(pos, piece)
    @grid[pos[0]][pos[1]] = piece
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def move(start, end_pos, current_color)
    raise ChessError.new("NO PIECE SELECTED!") if self[start].nil?
    raise ChessError.new("WRONG PIECE SELECTED!") if self[start].color != current_color

    piece = self[start]

    if piece.valid_moves.include?(end_pos)
      raise ChessError.new("INVALID MOVE, POSITION FILLED") unless self[end_pos].nil? || self[end_pos].is_opponent?(piece.color)
      self[start] = nil

      self[end_pos] = piece

      piece.position = end_pos
    else
      raise ChessError
    end
  end

  def move!(start, end_pos)
    raise ChessError.new("NO PIECE SELECTED") if self[start].nil?
    piece = self[start]
    raise ChessError.new("INVALID MOVE, POSITION FILLED") unless self[end_pos].nil?
    self[start] = nil

    self[end_pos] = piece
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end

#not working
  def in_check?(color)
    king_pos = find_king(color)

    grid.each do |row|
      row.each do |piece|
        next if piece.nil?
          #debugger
        if piece.color != color && piece.moves.include?(king_pos)
          return true
        end
      end
    end
    false
  end

  def checkmate?(color)
    if in_check?(color)
      grid.each do |row|
        row.each do |piece|
          next if piece.nil?
          if piece.color == color && piece.valid_moves.empty?
            return true
          end
        end
      end
    end

    false
  end

  def find_king(color)
    grid.each do |row|
      row.each do |piece|
        return piece.position if piece.is_a?(King) && piece.color == color
      end
    end
  end

  def board_dup
    new_grid = Array.new(8) { Array.new(8) { nil } }

    @grid.each do |row|
      row.each do |piece|
        next if piece.nil?
        new_pos = piece.position.dup
        new_piece = piece.dup
        new_piece.position = new_pos
        new_grid[new_pos[0]][new_pos[1]] = new_piece
      end
    end

    new_board = Board.new
    new_board.grid = new_grid

    new_board.grid.each do |row|
      row.each do |piece|
        next if piece.nil?
        piece.board = new_board
      end
    end

    new_board
  end

  def inspect
    "board"
  end
end
