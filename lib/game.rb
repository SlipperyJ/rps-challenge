class Game

  attr_reader :move_list, :current_move, :computers_move, :game_logic

  def initialize(move)
    @move_list = ["Rock", "Paper", "Scissors"]
    @current_move = move
  end

  def computer_turn
    @computers_move = @move_list.sample
  end

  def results
    game_logic[@current_move.downcase.to_sym][@computers_move.downcase.to_sym]
  end

  def game_logic
    {
      :rock     => { :rock => "Draw", :paper => "Lose", :scissors => "Win"  },
      :paper    => { :rock => "Win",  :paper => "Draw", :scissors => "Lose" },
      :scissors => { :rock => "Lose", :paper => "Win", :scissors => "Draw",}
    }
  end
end
