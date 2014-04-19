require_relative "my_solution"

describe 'median' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }
  let(:array_3) { [7, 4, 3, 5, 6, 2, 6, 4] }
  let(:array_4) { ["apple", "cherry", "banana"]}

  it "is defined as a method" do
    defined?(median).should eq 'method'
  end

  it "requires a single argument" do
    method(:median).arity.should eq 1
  end

  it "returns the correct median of an odd-length array" do
    median(array_1).should eq 4
  end

  it "returns the correct median of an even-length array" do
    median(array_2).should eq 5.5
  end
  
  it "returns the correct median for an unsorted array" do
    median(array_3).should eq 4.5
  end

  it "returns the correct median for an array filled with strings **BONUS**" do
    median(array_4).should eq "banana"
  end

end