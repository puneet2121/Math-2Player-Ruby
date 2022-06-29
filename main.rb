require './Game'
require './Players'

player1 = Players.new('Alice')
player2 = Players.new('bob')
game = Game.new(player1,player2)
