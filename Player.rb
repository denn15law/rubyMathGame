class Player
  attr_accessor :lives, :name
  def initialize(name)
    @lives = 3
    @name = name
  end
  def wrong_answer
    @lives -= 1
  end
end
