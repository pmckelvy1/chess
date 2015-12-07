require_relative 'display'
require_relative 'chess_pieces'

class ChessError < StandardError
  def message
    puts "This is a Chess Error!"
  end
end


class Board

  attr_accessor :grid
  def initialize()
    @grid = Array.new(8) { Array.new(8) { " " }}
    populate_board
  end

  def populate_board
    i = 0
    while i < 8
      j = 0
      while j < 8
        if i == 1
          @grid[i][j] = Pawn.new(self, true, [i, j])
        end
        if i == 6
          @grid[i][j] = Pawn.new(self, false, [i, j])
        end
        if i == 0
          @grid[i][j] = Rook.new(self, true, [i, j]) if j == 0 || j == 7
          @grid[i][j] = Knight.new(self, true, [i, j]) if j == 1 || j == 6
          @grid[i][j] = Bishop.new(self, true, [i, j]) if j == 2 || j == 5
          @grid[i][j] = Queen.new(self, true, [i, j]) if j == 3
          @grid[i][j] = King.new(self, true, [i, j]) if j == 4
        end
        if i == 7
          @grid[i][j] = Rook.new(self, false, [i, j]) if j == 0 || j == 7
          @grid[i][j] = Knight.new(self, false, [i, j]) if j == 1 || j == 6
          @grid[i][j] = Bishop.new(self, false, [i, j]) if j == 2 || j == 5
          @grid[i][j] = Queen.new(self, false, [i, j]) if j == 3
          @grid[i][j] = King.new(self, false, [i, j]) if j == 4
        end
        j+= 1
        # @grid[i][j] = "rook"
        # j += 1
      end
      i += 1
    end
  end

  def []=(x, y, piece)
    @grid[x][y] = piece
  end

  def [](x, y)
    @grid[x][y]
  end

  def move(start, end_pos)
      raise ChessError if self[*start].nil?
      piece = self[*start]
      self[*start] = nil

      raise ChessError unless self[*end_pos].nil?
      self[*end_pos] = piece
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end
end

if __FILE__ == $PROGRAM_NAME

  b = Board.new
  d = Display.new(b)
  while true
    d.render
    d.move
  end
end
