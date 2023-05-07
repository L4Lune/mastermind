module TextPrompts
  def incorrect_guess(user_guess)
    print " #{user_guess} is not the code. Please try again."
  end

  def last_turn
    p 'This is the last chance to guess the code! Good luck!'
  end
end
