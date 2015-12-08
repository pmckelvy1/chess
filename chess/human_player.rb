class HumanPlayer
  attr_reader :name, :display, :color

  def initialize(name , board , color, display)
    @name = name
    @display = display
    @color = color
  end

  def get_move
    prompt_user

    position_moves = {}
    position_moves[:start] = get_position
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
