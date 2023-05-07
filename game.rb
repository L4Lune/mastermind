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

  def play
    while rounds <= 12
      p "Round ##{rounds}: "
      if rounds == 12
        last_turn
      end
      human.guess=()
      break if computer.code_correct?(human.guess)

      incorrect_guess(human.guess, rounds)
      self.rounds += 1
    end
    computer.display_code
  end
end