class Player
  attr_accessor :lives, :name, :turn
  def initialize(name)
    @lives = 3
    @name = name
    @turn = false
  end
  def wrong_answer
    @lives -= 1
  end
end
