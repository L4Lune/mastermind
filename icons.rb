module Icons
  def display_guess(user_guess)
    user_guess.each { |num| print num + " " }
    puts " "
  end

  def display_feedback
    print '  Clues: '
    puts " "
end