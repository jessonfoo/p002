require_relative "my_solution"

describe 'total' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }

  it "is defined as a method" do
    defined?(total).should eq 'method'
  end

  it "requires a single argument" do
    method(:total).arity.should eq 1
  end

  it "returns the correct total of array 1" do
    total(array_1).should eq 27
  end

  it "returns the correct total of array 2" do
    total(array_2).should eq 43
  end
end

describe 'sentence_maker' do
  let(:first_sentence) {["all", "my", "socks", "are", "dirty"]}
  let(:second_sentence) {["alaska", "has", "over", 586, "thousand", "miles"]}

  it "is defined as a method" do
    defined?(sentence_maker).should eq 'method'
  end

  it "requires a single argument" do
    method(:sentence_maker).arity.should eq 1
  end

  it "returns the grammatically correct sentence of the first sentence" do
    sentence_maker(first_sentence).should eq "All my socks are dirty."
  end

  it "returns the grammatically correct sentence of the second sentence" do
    sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
  end
end
