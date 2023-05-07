module Icons
  def display_guess(user_guess)
    user_guess.each { |num| print num + " " }
    puts " "
  end
end