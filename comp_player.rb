class CompPlayer
  attr_reader :code

  def initialize
    @code = (4.times.map { rand(1..6) }).map(&:to_s)
  end

  def code_correct?(user_guess)
    if user_guess == code
      return true
    elsif user_guess != code
      return false
    end
  end

  # def transform_code
  #   code.map(&:to_s)
  # end
end