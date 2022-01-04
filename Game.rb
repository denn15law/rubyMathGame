class Game 
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def set_current_player
    if @p1.turn == @p2.turn && @p1.turn == false
      @p1.turn = true
    elsif @p1.turn == true
      @p1.turn = false
      @p2.turn = true
    else
      @p1.turn = true
      @p2.turn = false
    end
  end

  def turn(p1, p2, q)
    puts "----- NEW TURN -----"
    if p1.turn 
      puts "#{p1.name}: #{q}"
      attempt = gets.chomp.to_i
      if q.check_answer(attempt)
        puts "#{p1.name}: YES! You are correct."
      else
        puts "#{p1.name}: Seriously? NO!"
        p1.wrong_answer
      end
    else
      puts "#{p2.name}: #{q}"
      attempt = gets.chomp.to_i
      if q.check_answer(attempt)
        puts "#{p2.name}: YES! You are correct."
      else
        puts "#{p2.name}: Seriously? NO!"
        p2.wrong_answer
      end
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
end