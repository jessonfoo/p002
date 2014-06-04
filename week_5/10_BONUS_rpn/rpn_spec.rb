require_relative 'my_solution.rb'

describe RPNCalculator do
  let(:rpn) { RPNCalculator.new }

  describe '#evaluate' do
    it "expects 1 argument" do
      expect(RPNCalculator.instance_method(:evaluate).arity).to eq 1
    end
    
    it "correctly evaluates '0'" do
      expect(rpn.evaluate('0')).to be_zero
    end

    it "correctly evaluates '-1'" do
      expect(rpn.evaluate('-1')).to eq -1
    end

    it "supports addition" do
      expect(rpn.evaluate('1 1 +')).to eq (1 + 1)
    end
    
    it "adds negative numbers" do
      expect(rpn.evaluate('1 -1 +')).to be_zero
    end

    it "supports multiplication" do
      expect(rpn.evaluate('2 2 *')).to eq (2 * 2)
    end
    
    it "subtracts in the correct order" do
      expect(rpn.evaluate('5 10 -')).to eq (5 - 10)
    end

    it "handles multiple operators in a row" do
      expect(rpn.evaluate('1 2 3 4 + + +')).to eq (1 + 2 + 3 + 4)
    end

    it "correctly combines addition and multiplication" do
      expect(rpn.evaluate('1 2 + 3 4 + *')).to eq ((2 + 1) * (4 + 3))
    end

    it "correctly combines multiplication, addition, and subtraction" do
      expect(rpn.evaluate('20 10 5 4 + * -')).to eq (20 - 10*(5 + 4))
    end

    it "handles arbitrary input" do
      a, b, c = Array.new(3) { rand(100) }
      
      expect(rpn.evaluate("#{a} #{b} - #{c} *")).to eq (a-b)*c
    end
  end
end