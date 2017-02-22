


class Card

  attr_reader :suite, :value

  def initialize(suite, value)
    if [:hearts, :diamons, :clubs, :spades].include?(suite)
      @suite = suite
    else
      #need to add .new after ArgumentError
      raise ArgumentError.new "The suit must be one of :hearts, :diamons, :clubs, :spades "
    end


    if (1..13).include?(value)
      @value = value
    else
      #need to add .new after ArgumentError
      raise ArgumentError.new "The value must be between 1-13 "
    end
  end

end




#Card.new(:hearts, 11)
