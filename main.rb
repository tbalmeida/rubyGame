require "./match"
require "./player"

nro_lives = 3

# player1 = Player.new(nro_lives)
# player2 = Player.new(nro_lives)

game = Match.new(3)

game.play

# # executes until one of the players dies
# # until !player1.alive || !player2.alive
#  thisResponse = game.ask
#  game.evaluate(thisResponse, )
# end