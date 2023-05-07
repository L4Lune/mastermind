require_relative 'text_prompts'

class Game
  # include Icons
  include TextPrompts

  attr_reader :human, :computer
  attr_accessor :rounds

  def initialize
    @human = Player.new
    @computer = CompPlayer.new
    @rounds = 12
  end

  def play
    while rounds.positive?
      if rounds == 1 
        last_turn
      end
      human.guess=()
      self.rounds -= 1
      p rounds
      break if computer.code_correct?(human.guess)
    end
  end
end