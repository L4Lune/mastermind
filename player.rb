class Player
  attr_reader :guess

  def initialize
    @guess = nil
  end

  def guess=(*)
    puts 'Enter your code guess: '
    @guess = gets.chomp.split('')
    p guess
  end 
end
