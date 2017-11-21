class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    case
    when @hand1 == 'scissors' && @hand2 == 'paper'
      return @hand1
    when @hand1 == 'paper' && @hand2 == 'rock'
      return @hand1
    when @hand1 == 'rock' && @hand2 == 'scissors'
      return @hand1
    when @hand1 == 'paper' && @hand2 == 'scissors'
      return @hand2
    when @hand1 == 'rock' && @hand2 == 'paper'
      return @hand2
    when @hand1 == 'scissors' && @hand2 == 'rock'
      return @hand2
    when @hand1 == @hand2
      return "neither. It's a draw!!"
    else
      return "neither. It's an invalid entry"
    end
  end

end
