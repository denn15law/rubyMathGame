class Question
  attr_accessor :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end
  def check_answer(attempt)
    answer = @num1 + @num2
    if (attempt.to_i == answer)
      return true
    end
    return false
  end
  def to_s 
    "What is #{@num1} plus #{@num2} equal?"
  end
end