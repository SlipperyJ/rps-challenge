class Game

  attr_reader :move_list, :current_move

  def initialize
    @move_list = ["Rock", "Paper", "Scissors"]
  end

  def move(move)
    @current_move = move
  end
end
