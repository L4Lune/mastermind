module TextPrompts
  def incorrect_guess(user_guess, game_rounds)
    if game_rounds < 12
      print "#{user_guess} is not the code. Please try again."
    elsif game_rounds == 12
      print "#{user_guess} is not the code."
    end
  end

  def last_turn
    p 'This is the last chance to guess the code! Good luck!'
  end
end
