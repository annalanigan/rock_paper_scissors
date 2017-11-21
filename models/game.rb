class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    case
    when @hand1 == 'scissors' && @hand2 == 'paper'
      return 'scissors'
    when @hand1 == 'paper' && @hand2 == 'rock'
      return 'paper'
    when @hand1 == 'rock' && @hand2 == 'scissors'
      return 'rock'
    when @hand1 == 'paper' && @hand2 == 'scissors'
      return 'scissors'
    when @hand1 == 'rock' && @hand2 == 'paper'
      return 'paper'
    when @hand1 == 'scissors' && @hand2 == 'rock'
      return 'rock'
    else @hand1 == @hand2
      return 'draw'
    end
  end

end
