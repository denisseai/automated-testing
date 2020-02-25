VALID_SUIT = [:hearts, :diamonds, :clubs, :spades]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    raise ArgumentError.new("Value must be (1-13)") if (value < 1 || value > 13)
    raise ArgumentError.new("Not a valid suit") unless VALID_SUIT.include?(suit)

  end

  def to_s(value, suit)
    if value = 1 
      return "Ace"
    elsif value > 1 || value < 11
      return value
    elsif value == 11
      return "Jack"
    elsif value == 12
      return "Queen"
    elsif value == 13
      return "King"
    end
    return "#{value} of #{VALID_SUIT(suit.to_s)}"
  end
end
