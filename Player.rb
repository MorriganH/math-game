class Player
  attr_accessor :lives, :name

  def initialize(n)
    @lives = 3
    @name = n
  end

  def wrong_answer
    self.lives -= 1
  end
end