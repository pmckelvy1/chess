require_relative 'display'

class HumanPlayer

  attr_reader :name, display

  def initialize(name , board)
    @name = name
    @display = Display.new(board)
  end

  def play_turn
    prompt_user

    result_position = nil
    until display.selected
      display.render
      display.move
      result_position = display.get_input
    end

    while display.selected
      display.render
      display.move
      result_position = display.get_input
    end

    result_position
  end

  def prompt_user
    puts "PLEASE MAKE A MOVE"
  end



end
