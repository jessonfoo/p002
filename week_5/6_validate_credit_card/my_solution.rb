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
# class CreditCard

#     def initialize(num)
#         @num = num.to_s.split('').map{|x| x.to_i}
#         raise ArgumentError.new('number must be 16 digits') unless @num.size == 16
#     end


#     def check_card
#     	@num.each_with_index do |item, index|
#             if index % 2 == 0
#                 @num[index] += @num[index]
#             end
#         end
#        @num = @num.join.split('').map{|x| x.to_i}.reduce(:+)
#        @num %10 == 0
#     end
# end

# p a = CreditCard.new(4408041234567893)
# p a.check_card


# 4. Refactored Solution

class CreditCard

    def initialize(num)
        @num = num.to_s.split('').map{|x| x.to_i}
        raise ArgumentError.new('number must be 16 digits') unless @num.size == 16
    end

    def check_card
       @num.each_with_index { |item,index| @num[index] += @num[index] if index % 2 == 0 }
       @num = @num.join.split('').map{|x| x.to_i}.reduce(:+)
       @num %10 == 0
    end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

p a = CreditCard.new(4408041234567893)
p a.check_card == true

b = CreditCard.new(4408041234567892)
p b.check_card == false


# 5. Reflection 
