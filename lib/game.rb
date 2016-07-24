class Game
MOVE_LIST = %w( Rock Paper Scissors Spock Lizard )

  attr_reader :current_move, :computers_move, :game_logic

  def initialize(move, computer_move = MOVE_LIST.sample)
    @current_move = move
    @computers_move = computer_move
  end

  def results
    game_logic[@current_move.downcase.to_sym][@computers_move.downcase.to_sym]
  end


  private

    def game_logic
      {
        :rock     => { :rock => "Draw", :paper => "Lose", :scissors => "Win",  :spock => "Lose", :lizard => "Win"  },
        :paper    => { :rock => "Win",  :paper => "Draw", :scissors => "Lose", :spock => "Win",  :lizard => "Lose" },
        :scissors => { :rock => "Lose", :paper => "Win",  :scissors => "Draw", :spock => "Lose", :lizard => "Win"  },
        :spock    => { :rock => "Win",  :paper => "Lose", :scissors => "Win",  :spock => "Draw", :lizard => "Lose" },
        :lizard   => { :rock => "Lose", :paper => "Win",  :scissors => "Lose", :spock => "Win",  :lizard => "Draw" },
      }
    end
end
