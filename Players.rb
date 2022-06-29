class Players
  attr_accessor :name, :turn, :lives
  def initialize(name)
    self.turn = false
    self.name = name
    self.lives = 3
  end
  def decrease_lives
    if self.lives > 1
      self.lives -= 1
    else
      self.lives = 0
    end
  end
end