require_relative "my_solution"

describe Array do
  let!(:empty_array)  { [] }
  let!(:array)        { [1,2,3] }
  let!(:long_array)   { [1,2,3]*10 }
  let!(:random_array) { (1..1+rand(100)).map { rand(10) } }

  let!(:all_arrays)   { [empty_array, array, long_array, random_array] }

  describe "#pad!" do
    it "operates destructively" do
      array.pad!(10).object_id.should eq(array.object_id)
    end
    
    it "doesn't pad a long array" do
      expect {
        long_array.pad!(10)
      }.to_not change(long_array, :length)
    end
  end

  describe "#pad" do
    it "operates non-destructively" do
      all_arrays.each do |array|
        array.pad(0).object_id.should_not eq(array.object_id)
      end
    end

    it "pads elements to the end of an array" do
      all_arrays.each do |array|
        pad_size = 1 + rand(50)

        array.pad(array.length + pad_size, 'apple').should eq(array + Array.new(pad_size, 'apple'))
      end
    end

    it "doesn't pad when minimum size is equal to the array's length" do
      all_arrays.each do |array|
        array.pad(array.length).should eq(array)
      end
    end

    it "doesn't pad when the minimum size is 0" do
      all_arrays.each do |array|
        array.pad(0).should eq(array)
      end
    end

    it "pads with nil by default" do
      empty_array.pad(2).should eq([nil, nil])
    end

    it "can pad with a string" do
      empty_array.pad(2, 'apple').should eq(['apple', 'apple'])
    end

    it "can pad with an object" do
      empty_array.pad(2, {}).should eq([{}, {}])
    end
  end
end