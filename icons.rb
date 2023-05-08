module Icons
  def colors(user_guess)
    {
      '1' => "\e[101m  1  \e[0m ",
      '2' => "\e[43m  2  \e[0m ",
      '3' => "\e[44m  3  \e[0m ",
      '4' => "\e[45m  4  \e[0m ",
      '5' => "\e[46m  5  \e[0m ",
      '6' => "\e[41m  6  \e[0m ",
    }[user_guess]
  end
  
  def display_guess(user_guess)
    user_guess.each { |num| print colors num }
    puts ''
  end

  def feedback_icons(user_guess)
    {
      '*' => "\e[91m\u25CF\e[0m",
      '?' => "\e[37m\u25CB\e[0m"
    }[user_guess]
  end

  def display_feedback(exact, same)
    print '  Feedback: '
    exact.times { print feedback_icons('*') }
    same.times { print feedback_icons('?') }
    puts ''
  end


end