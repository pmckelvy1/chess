require_relative 'display'

class HumanPlayer

  attr_reader :name, :display, :color

  def initialize(name , board , color)
    @name = name
    @display = Display.new(board)
    @color = color
  end

  def get_move
    prompt_user

    position_moves = []
    position_moves << get_position
    position_moves << get_position
    position_moves
  end

  def get_position
    position = nil
    until position
      display.render
      display.move
      position = display.get_input
    end

    position
  end



  def prompt_user
    puts "PLEASE MAKE A MOVE #{name}"
  end



end
