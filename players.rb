class Player
  attr_reader :name
  attr_accessor :score
  def initialize(name)
    @name = name
    @score = 0
  end
  def welcome
    puts "Welcome player #{name}!"
  end
  def congrats
    puts "Well done player #{name}, you win!"
  end
  def add_point
    self.score += 1
  end
  def lose
    puts "Hard luck player #{name}, you lose!"
  end
end