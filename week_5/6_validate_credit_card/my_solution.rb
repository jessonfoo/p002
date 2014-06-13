# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a 16 digit credit card number
# Output: return true or false
# Steps:
# => seperate into array using split
# with iterate  
#


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(num)
		@num = num.to_s.split('').map{|x| x.to_i}
		raise ArgumentError.new('number must be 16 digits') unless @num.size == 16
	end

	def check_card
		@num.each do |x|
			if x %2 == 0
				@num[x] += num[x]
			end
		end
	end

end

p a = CreditCard.new(4408041234567893)
p a.check_card


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE




# 5. Reflection 
