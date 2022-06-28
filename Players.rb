class Players
  attr_accessor :name :turn :life
  def initialize(name)
    self.turn = false
    self.name = name
    self.life = life
  end
  def decrease_life
    life -= 1
  end
end