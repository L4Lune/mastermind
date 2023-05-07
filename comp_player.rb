class CompPlayer
  attr_reader :code

  def initialize
    @code = (4.times.map { rand(1..6) }).map(&:to_s)
  end

  def code_correct?(user_guess)
    if user_guess == code
      true
    elsif user_guess != code
      false
    end
  end

  def display_code
    p "The code to break was: #{code}."
  end

  # def transform_code
  #   code.map(&:to_s)
  # end
end