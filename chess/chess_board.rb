require_relative 'display'
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
        if i <= 1 || i >= 6
          @grid[i][j] = "piece"
        end
        j+= 1
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
