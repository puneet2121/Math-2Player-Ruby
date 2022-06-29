require './Players'
class Game
  attr_accessor :player1, :player2
  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    self.player1.turn = true
    # selfRunGame
    self.run_game
  end
  # Run Game
  def run_game
    if self.player1.lives == 0
      puts  "#{self.player2.name} wins with a score of #{self.player2.lives}/3\n-----GAME OVER-----\nGood Bye!"
      exit(0)
    end
    if self.player2.lives == 0
      puts  "#{self.player1.name} wins with a score of #{self.player1.lives}/3\n-----GAME OVER-----\nGood Bye!"
      exit(0)
    end
    if self.player1.turn
      puts "#{self.player1.name} turn"
      self.question(player1)
    else
      puts "#{self.player2.name} turn"
      self.question(player2)
    end
  end

  def next_turn
    if self.player1.turn
      self.player1.turn = false
      self.player2.turn = true
      puts '----new turn---------'
     #self.rungame
     self.run_game
    end
    if self.player2.turn
      self.player2.turn = false
      self.player1.turn = true
      # self.rungame
      self.run_game
    end
  end

  def current_score
    puts "#{self.player1.name}: #{self.player1.lives}/3  vs #{self.player2.name}: #{self.player2.lives}/3"
  end
   
  # current score(player1,player2) P1: 2/3 
  # 
  def question(player)
    @num1 = (rand(20).ceil) +1
    @num2 = (rand(20).ceil) +1
    puts "what does #{@num1} plus #{@num2} equal?"
    sum = @num1 + @num2
    input_sum = gets.chomp
    if input_sum.to_i == sum
      puts 'yes you are correct'
      self.current_score
      self.next_turn
    else
      puts 'you are not correct'
        player.decrease_lives
        self.current_score
        self.next_turn
    end
  end
end
