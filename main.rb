require_relative 'comp_player'
require_relative 'player'
require_relative 'game'
require 'pry-byebug'

game = Game.new
code = CompPlayer.new

p code.code
binding.pry
game.play
