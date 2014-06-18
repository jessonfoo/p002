# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: rpn expression
# Output: evaluation
# Steps:
# 1) write initialize method
# 2) create instance variable of arg
#
#
#
#
#


# 3. Initial Solution

class RPNCalculator
	def initialize(str)
		@arr = []
		@str = str.split('')
		@str.each do |x| 
			if x.match(/\d/)
				@arr << x
				
		end

	end
	def sum(arr)
		@sum = sum.map{|x| }
	end
	def product(arr)

	end
	def difference(arr)

	end
	def evaluate(str)
	
	end
end

calc = RPNCalculator.new
calc.sum([])


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new

calc.evaluate('1 2 +')   # => 3
calc.evaluate('2 5 *')   # => 10
calc.evaluate('50 20 -') # => 30

# The general rule is that 'A B op' is the same as 'A op B'
# i.e., 5 4 - is 5 - 4.
calc.evaluate('70 10 4 + 5 * -') # => 0





# 5. Reflection 
