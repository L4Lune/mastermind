class CompPlayer
  attr_reader :code
  
  def initialize
    @code = code
  end

  def create_code
    code = (4.times.map { rand(1..6) })
    p code
  end
end