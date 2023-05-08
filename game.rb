require_relative 'text_prompts'
require_relative 'icons'

class Game
  include Icons
  include TextPrompts

  attr_reader :human, :computer
  attr_accessor :rounds

  def initialize
    @human = Player.new
    @computer = CompPlayer.new
    @rounds = 1
  end

  def generate_feedback(user_guess, computer_code)
    i =0
    exact_matches = 0
    same_matches = 0
    for i in user_guess.length do
      if user_guess[i] == computer_code[i]
        exact += 1
      elsif user_guess[i].include?(computer_code)
        same += 1
      end
    end
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
      display_guess(human.guess)
      generate_feedback(human.guess, computer.code)
      display_feedback(human.guess, computer.code)
      self.rounds += 1
    end
    computer.display_code
  end
end