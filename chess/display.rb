class Display
  include Cursorable

  attr_accessor :selected

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
  end

  def build_grid
    @board.grid.map.with_index do |row, i|
      build_row(row, i)
    end
  end

  def build_row(row, i)
    row.map.with_index do |piece, j|
      color_options = colors_for(i, j)
      space_string = " " + piece.class.to_s.slice(0,2) + " "
      space_string = "    " if space_string == " Ni "
      space_string.colorize(color_options)
    end
  end

  def colors_for(i, j)
    if [i, j] == @cursor_pos
      bg = :light_red
    elsif (i + j).odd?
      bg = :light_blue
    else
      bg = :blue
    end
    unless @board[[i, j]].nil?
      if @board[[i, j]].color == :w
        col = :white
      else
        col = :black
      end
    end
    { background: bg, color: col }
  end

  def render(current_player)
    system("clear")
    puts "Current Player: #{current_player.name}, #{current_player.color}"
    puts "Arrow keys, WASD, or vim to move, space or enter to confirm."
    build_grid.each { |row| puts row.join }
  end

  def move(current_player)
    result = nil
    until result
      render(current_player)
      result = get_input
    end
    result
  end
end
