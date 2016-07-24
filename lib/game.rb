class Game
MOVE_LIST = %w( Rock Paper Scissors )

  attr_reader :current_move, :computers_move, :game_logic

  def initialize(move, computer_move = MOVE_LIST.sample)
    @current_move = move
    @computers_move = computer_move
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
