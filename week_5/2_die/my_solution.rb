# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself

# 2. Pseudocode

# Input:
# an array of strings
# Output:
# for die.roll => a random string
# for die.new() is an empty array, raise error
# Steps:
# create instance of labels
# raise argument if array size < 1
# return array size for die.sides
# return random label for die.roll
#


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   @labels = labels
#   	raise ArgumentError.new("Invalid Array") if labels.size < 1
#   end

#   def sides
#   	@labels.size
#   end

#   def roll
#   	@labels.to_a.sample
#   end
# end



# 4. Refactored Solution
class Die
  def initialize(labels)
  @labels = labels
  	raise ArgumentError.new("Invalid Array") if labels.size < 1
  end

  def sides
  	@labels.size
  end

  def roll
  	@labels.to_a.sample
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

p a = Die.new(['a','b','c','d','e'])		# => return die id & instance of array labels
p a.sides									# => 5
p a.roll									# return random string from array


# 5. Reflection 
#
# this exercise was almost exactly the same as the last one except we had to use an array. one section
# that I realized i messed up on was when I was trying to sample from the die i had made but it wasnt working
# I later realized it was because instance onjects are nil class, so I had to convert @labels into an array before
# i could use the sample method. 
#
#
#