class Board

  attr_accessor :grid
  def initialize()
    @grid = Array.new(8) { Array.new(8) { nil }}
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



end
