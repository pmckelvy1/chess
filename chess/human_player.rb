class HumanPlayer
  attr_reader :name, :display, :color

  def initialize(name , board , color, display)
    @name = name
    @board = board
    @display = display
    @color = color
  end

  def get_move
    prompt_user

    position_moves = {}
    begin
      start_pos = get_position
      if @board[start_pos].nil?
        raise ChessError.new("THERE'S NOTHING THERE!")
      end
      if @board[start_pos].opponent?(self.color)
        raise ChessError.new("YOU CAN'T PICK THAT PIECE UP!")
      end
    rescue ChessError => e
      puts e.message
      sleep(1)
      retry
    end
      position_moves[:start] = start_pos
    position_moves[:finish] = get_position
    position_moves
  end

  def get_position
    position = nil
    until position
      puts "#{self.color}'s turn'"
      display.render(self)
      display.move(self)
      position = display.get_input
    end
    position
  end

  def prompt_user
    puts "PLEASE MAKE A MOVE #{name}"
  end
end
