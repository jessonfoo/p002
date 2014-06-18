require_relative "my_solution"

describe 'median' do
  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }
  let(:array_3) { [7, 4, 3, 5, 6, 2, 6, 4] }
  let(:array_4) { ["apple", "cherry", "banana"]}

  it "is defined as a method" do
    expect(defined? median).to eq 'method'
  end

  it "requires a single argument" do
    expect(method(:median).arity).to eq 1
 end

  it "returns the correct median of an odd-length array" do
    expect(median(array_1)).to eq 4
  end

  it "returns the correct median of an even-length array" do
    expect(median(array_2)).to eq 5.5
  end
  
  it "returns the correct median for an unsorted array" do
    expect(median(array_3)).to eq 4.5
  end

  it "returns the correct median for an array filled with strings **BONUS**" do
    expect(median(array_4)).to eq "banana"
  end

end