class CompPlayer
  attr_reader :code

  def initialize
    @code = code
  end

  def create_code
    p (4.times.map { rand(1..6) })
  end
end