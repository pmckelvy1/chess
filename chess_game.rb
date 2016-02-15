require_relative 'requirements'

class ChessGame

attr_reader :display, :board
attr_accessor :current_player, :previous_player

  def initialize(board)
    @board = board
    @display = Display.new(board)
    @current_player = HumanPlayer.new("Player 1", board, :w, @display)
    @previous_player = HumanPlayer.new("Player 2", board, :b, @display)
  end

  def play
    until game_over?
      begin
        move_positions = current_player.get_move
        board.move(move_positions[:start], move_positions[:finish], current_player.color)
      rescue ChessError => e
        puts e.message
        sleep(1)
        retry
      end
      break if game_over?
      current_player.display.render(@current_player)
      switch_players!
    end

    puts "GAME OVER! WINNER: #{@previous_player.name}"
  end

  def switch_players!
    @current_player, @previous_player = @previous_player, @current_player
  end

  def game_over?
    board.checkmate?(current_player.color)
  end
end

if __FILE__ == $PROGRAM_NAME

game = ChessGame.new(Board.new)
game.play

end
