class Checker
  def self.check_guess(secret_number, guess)
    if guess - secret_number > 5
      "way too high!"
    elsif guess - secret_number < -5
      "way too low!"
    elsif guess > secret_number
      "too high!"
    elsif guess < secret_number
      "too low!"
    else
      "correct!"
    end
  end

  def self.check_win(secret_number, guess)
    if secret_number == guess
      "You got it right! The SECRET NUMBER was #{secret_number}"
    end
  end
end
