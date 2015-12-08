require_relative 'human_player'
require_relative 'chess_board'

class ChessGame

attr_reader :display
attr_accessor :current_player, :previous_player

  def initialize(board)
    @board = board
    @current_player = HumanPlayer.new("Player 1", board)
    @previous_player = HumanPlayer.new("Player 2", board)

  end

  def play
    until game_over?
      current_player.get_move
      switch_players!
    end
  end

  def switch_players!
    current_player, previous_player = previous_player, current_player
  end

  def game_over?
    board.checkmate(current_player.color)
  end

end

if __FILE__ == $PROGRAM_NAME

game = ChessGame(Board.new)

end
