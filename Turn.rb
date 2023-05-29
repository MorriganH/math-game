class Turn
  attr_reader :val1, :val2, :sum, :player, :answer

  def initialize(player)
    @val1 = rand(20) + 1
    @val2 = rand(20) + 1
    @sum = self.val1 + self.val2  
    @player = player
    puts "----- NEW TURN -----"
  end

  def ask_question
    puts "#{self.player}: What does #{self.val1} plus #{self.val2} equal?"
    @answer = gets.chomp.to_i
  end
  
  def judge_answer
    if self.answer == self.sum
      puts "#{self.player}: Yes! That's correct!"
      return true
    else
      puts "#{self.player}: Seriously? No!"
      return false
    end
  end
end