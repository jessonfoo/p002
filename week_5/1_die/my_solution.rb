# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself

# 2. Pseudocode

# Input:
# an integer argument
# Output:
# for initialize, needs to raise error if less than 2 sides
# die.sides needs to return the number of sides
# die.roll should return a random number between 1 & sides
# Steps:
# create instance of sides
# create error message
# return instance sides for def sides
# return random number between 1 & sides

# 3. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     raise ArgumentError.new("not enough sides") if sides < 2
#   end
  
#   def sides
#     return @sides
#   end
  
#   def roll
#     return rand(1..sides)
#   end
# end



# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("not enough sides") if sides < 2
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(1..sides)
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE


p a = Die.new(10)	# should return Die id & number of sides
p a.sides			# => 10
p a.roll			# => number in range 1-10



# 5. Reflection 

# This challenge was easy compared to what we have been working on before. The new thing I learned
# was raise ArgumentError. I feel self conscious about my code because in my eyes I dont see it getting
# any simpler, but I feel like someone else might be able to do it.