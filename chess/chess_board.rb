class ChessError < StandardError
end


class Board
  attr_accessor :grid

  def initialize()
    @grid = Array.new(8) { Array.new(8) { nil } }
    populate_board
  end

  def populate_board
    # [Rook, Knight, Bishop...]
    i = 0
    while i < 8
      j = 0
      while j < 8
        if i == 1
          @grid[i][j] = Pawn.new(self, :b, [i, j])
        end
        if i == 6
          @grid[i][j] = Pawn.new(self, :w, [i, j])
        end
        if i == 0
          @grid[i][j] = Rook.new(self, :b, [i, j]) if j == 0 || j == 7
          @grid[i][j] = Knight.new(self, :b, [i, j]) if j == 1 || j == 6
          @grid[i][j] = Bishop.new(self, :b, [i, j]) if j == 2 || j == 5
          @grid[i][j] = Queen.new(self, :b, [i, j]) if j == 3
          @grid[i][j] = King.new(self, :b, [i, j]) if j == 4
        end
        if i == 7
          @grid[i][j] = Rook.new(self, :w, [i, j]) if j == 0 || j == 7
          @grid[i][j] = Knight.new(self, :w, [i, j]) if j == 1 || j == 6
          @grid[i][j] = Bishop.new(self, :w, [i, j]) if j == 2 || j == 5
          @grid[i][j] = Queen.new(self, :w, [i, j]) if j == 3
          @grid[i][j] = King.new(self, :w, [i, j]) if j == 4
        end
        j+= 1
        # @grid[i][j] = "rook"
        # j += 1
      end
      i += 1
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
