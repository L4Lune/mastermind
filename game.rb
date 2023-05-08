require_relative 'text_prompts'
require_relative 'icons'

class Game
  include Icons
  include TextPrompts

  attr_reader :human, :computer 
  attr_accessor :rounds, :exact_number, :same_number

  def initialize
    @human = Player.new
    @computer = CompPlayer.new
    @rounds = 1
    @exact_number = 0
    @same_number = 0
    @user_guess_clone = []
    @master = []
  end

  def determine_exact_matches(user_guess, computer_code)
    self.exact_number = 0
    computer_code.each_with_index do |item, index|
      next unless item == user_guess[index]

      # computer_code[index] = '*'
      # user_guess[index]  = '*'
      self.exact_number += 1
    end
    exact_number
  end

  def right_numbers(user_guess, computer_code)
    self.same_number = 0
    user_guess.each_index do |index|
      next unless user_guess[index] != computer_code[index] && computer_code.include?(user_guess[index])

      self.same_number += 1
      remove = computer_code.find_index(user_guess[index])
      # computer_code[remove] = '?'
      # user_guess[index] = '?'
    end
    same_number
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
      determine_exact_matches(human.guess, computer.code)
      right_numbers(human.guess, computer.code)
      display_feedback(exact_number, same_number)
      self.rounds += 1
    end
    computer.display_code
  end
end