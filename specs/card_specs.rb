
require_relative 'spec_helper.rb'
require_relative '../card'

#what does a card have ?
#suite & number or value

describe Card do

  before do
    @card = Card.new(:hearts, 11)
  end

  # the it block is the test case

  #test case 1
  describe "Checking Card Value" do
    it "has value of 11" do
      @card.value.must_equal 11
      #test case 5
    end
    it "Errors out if given an invalid value" do
      proc  {Card.new( :hearts, 14 )}.must_raise ArgumentError
    end
  end


  #test case 2
  describe "Checking Card Suite" do
    it "has suite of hearts" do
      @card.suite.must_equal :hearts
    end
    #test case 3
    it "Errors out if given an invalid suit" do
      proc  {Card.new( :pokemon, 11 )}.must_raise ArgumentError
    end
  end

  # #test case 4
  # describe "Checking Card Suite" do
  #   it "has suite of hearts" do
  #
  #     @card.suite.must_equal :hearts
  #
  #   end
  #
  #
  #
  # end

end
