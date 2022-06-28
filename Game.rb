require './Players'
require './Question'

class Game
  attr_accessor :player1 :player2
  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    self.player1.turn = true
    # selfRunGame
  end
  # Run Game
  def next_turn
    if self.player1.turn
      self.player1.turn = false
      self.player2.turn = true
      puts '----new turn---------'
     #self.rungame
    end
    if self.player2.turn
      self.player2.turn = false
      self.player1.turn = true
      # self.rungame
    end
  end

  def current_score
    puts '#{player1}: '

   
  # current score(player1,player2) P1: 2/3 
  # 
  def start_game
  end
  def winner
  end
  def final_score
  end
end