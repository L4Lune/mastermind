class Game
  # include Icons
  attr_reader :human, :computer
  attr_accessor :rounds

  def initialize
    @human = Player.new
    @computer = CompPlayer.new
    @rounds = 12
  end

  def play
    while self.rounds.positive?
      human.guess=()
      self.rounds -= 1
      rounds
    end
  end
end