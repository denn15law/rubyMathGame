require './Player'
require './Question'

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')

def new_turn(player)
  puts "----- NEW TURN -----"
  q = Question.new
  puts "#{player.name}: #{q}"
  attempt = gets.chomp
  if q.check_answer(attempt)
    puts "#{player.name}: YES! You are correct."
  else
    puts "#{player.name}: Seriously? NO!"
    player.wrong_answer
  end
end

def check_score(p1,p2)
  if p1.lives == 0 
    puts "#{p2.name} wins with a score of #{p2.lives}/3"
    puts "----- GAME OVER -----"
  elsif p2.lives == 0
    puts "#{p1.name} wins with a score of #{p1.lives}/3"
    puts "----- GAME OVER -----"
  else
    puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3" 
  end
end

new_turn(p1)
check_score(p1,p2)
new_turn(p2)
check_score(p1,p2)

new_turn(p1)
check_score(p1,p2)
new_turn(p2)
check_score(p1,p2)

new_turn(p1)
check_score(p1,p2)
new_turn(p2)
check_score(p1,p2)


