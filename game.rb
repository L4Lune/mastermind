require_relative 'text_prompts'

class Game
  # include Icons
  include TextPrompts

  attr_reader :human, :computer
  attr_accessor :rounds

  def initialize
    @human = Player.new
    @computer = CompPlayer.new
    @rounds = 1
  end

  def display_feedback(user_guess, computer_code)
    user_guess.each { |num| print num + " " }
    print "  Clues: "
    puts " "
  end

  def play
    while rounds <= 12
      p "Round ##{rounds}: "
      if rounds == 12
        last_turn
      end
      human.guess=()
      break if computer.code_correct?(human.guess)

      incorrect_guess(human.guess, rounds)
      display_feedback(human.guess, computer.code)
      self.rounds += 1
    end
    computer.display_code
  end
end