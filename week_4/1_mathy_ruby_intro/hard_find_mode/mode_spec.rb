require_relative "my_solution"

describe 'mode' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7, 5] }
  let(:array_3) { ["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]}

  it "is defined" do
    defined?(mode).should eq 'method'
  end

  it "requires a single argument" do
    method(:mode).arity.should eq 1
  end

  it "returns the correct mode when mode is a unique integer" do
    mode(array_1).should eq [5]
  end

  it "returns the correct mode when mode is not a unique integer" do
    mode(array_2).should eq [5,6]
  end

  it "returns the correct mode for strings" do
    mode(array_3).should eq ["banana", "cherry"]
  end
end