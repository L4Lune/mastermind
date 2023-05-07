class Game
  inclide Icons
  attr_reader :human, :computer

  def initialize
    @human = Player.new
    @computer = CompPlayer.new
  end
end