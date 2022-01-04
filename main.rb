require './Player'
require './Question'
require './Game'


def start
  p1 = Player.new('Player 1')
  p2 = Player.new('Player 2')
  game = Game.new(p1, p2)

  while p1.lives > 0 && p2.lives > 0
    game.set_current_player
    q = Question.new
    game.turn(p1, p2, q)
    game.check_score(p1, p2)
  end
end

start


