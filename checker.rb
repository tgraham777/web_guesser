class Checker
  def self.check_guess(number, guess)
    if guess - number > 5
      "way too high!"
    elsif guess - number < -5
      "way too low!"
    elsif guess > number
      "too high!"
    elsif guess < number
      "too low!"
    else
      "correct!"
    end
  end

  def self.check_win(number, guess)
    if number == guess
      "You got it right! The SECRET NUMBER was #{number}"
    end
  end
end
