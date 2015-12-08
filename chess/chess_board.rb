class ChessError < StandardError
end


class Board
  BOARD_SIZE = 8
  PIECES = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
  BLACK_UNICODE = ["\u265c", "\u265e", "\u265d", "\u265b", "\u265a", "\u265d", "\u265e", "\u265c"]
  WHITE_UNICODE = ["\u2656", "\u2658", "\u2657", "\u2655", "\u2654", "\u2657", "\u2658", "\u2656"]
  PAWN_BLACK_UNICODE = "\u265f"
  PAWN_WHITE_UNICODE = "\u2659"

  attr_accessor :grid

  def initialize()
    @grid = Array.new(BOARD_SIZE) { Array.new(BOARD_SIZE) { nil } }
    populate_board
  end

  def populate_board
      PIECES.each_with_index do |piece, idx|
        @grid[0][idx] = piece.new(self, :b, [0, idx], BLACK_UNICODE[idx])
        @grid[1][idx] = Pawn.new(self, :b, [1, idx], PAWN_BLACK_UNICODE)
        @grid[7][idx] = piece.new(self, :w, [7, idx], WHITE_UNICODE[idx])
        @grid[6][idx] = Pawn.new(self, :w, [6, idx], PAWN_WHITE_UNICODE)
      end
  end

  def []=(pos, piece)
    @grid[pos[0]][pos[1]] = piece
  end

  def [](pos)
    @grid[pos[0]][pos[1]]
  end

  def move(start, end_pos, current_color)
    if empty?(start)
      raise ChessError.new("NO PIECE SELECTED!")
    end
    if self[start].opponent?(current_color)
      raise ChessError.new("WRONG PIECE SELECTED!")
    end

    piece = self[start]

    if piece.moves.include?(end_pos)
      unless empty?(end_pos) || self[end_pos].opponent?(piece.color)
        raise ChessError.new("INVALID MOVE, POSITION FILLED")
      end

      if piece.move_into_check?(end_pos)
        raise ChessError.new("CAN'T MOVE INTO CHECK")
      end

      self[start] = nil
      self[end_pos] = piece
      piece.position = end_pos
    else
      raise ChessError
    end
  end

  def move!(start, end_pos)
    raise ChessError.new("NO PIECE SELECTED") if empty?(start)
    piece = self[start]
    raise ChessError.new("INVALID MOVE, POSITION FILLED") unless empty?(end_pos)
    self[start] = nil

    self[end_pos] = piece
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end

#not working
  def in_check?(color)
    king_pos = find_king(color)

    pieces.each do |piece|
      if piece.color != color && piece.moves.include?(king_pos)
        return true
      end
    end

    false
  end

  def checkmate?(color)
    if in_check?(color)
      pieces.each do |piece|
        if piece.color == color && piece.valid_moves.empty?
          return true
        end
      end
    end

    false
  end

  def find_king(color)
    pieces.each do |piece|
        return piece.position if piece.is_a?(King) && piece.color == color
    end
  end

  def board_dup
    new_grid = Array.new(8) { Array.new(8) { nil } }
    pieces = self.pieces

    pieces.each do |piece|
      new_pos = piece.position.dup
      new_piece = piece.dup
      new_piece.position = new_pos
      new_grid[new_pos[0]][new_pos[1]] = new_piece
    end

    new_board = Board.new
    new_board.grid = new_grid
    new_pieces = new_board.pieces

    new_pieces.each do |piece|
      piece.board = new_board
    end

    new_board
  end

  def empty?(position)
    self[position].nil?
  end

  def pieces
    pieces = []
    @grid.each do |row|
      row.each do |piece|
        pieces << piece
      end
    end

    pieces.compact!
  end

  def inspect
    "board"
  end
end
