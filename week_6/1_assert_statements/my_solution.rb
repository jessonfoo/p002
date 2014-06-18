# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
 raise "assertion failed" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }


# 2. Pseudocode what happens when the code above runs

# the assert method will raise the run time error 
# assertion unless the block of code passed
# to the assert method returns true.


# 3. Copy your selected challenge here
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



# 4. Convert your driver test code from that challenge into Assert Statements
assert{CreditCard.new(4408041234567893).check_card == true}
assert{CreditCard.new(4408041234567892).check_card == false}
assert{CreditCard.new(4408041234567892).check_card == true}



# 5. Reflection

# this challenge seemed very straight forward, I feel that it was a good introductiion to the yield
# method. I felt that my assertion method could be refactored so I may come back to it to see if I
# can do anything else. As a challenge it seems like there could have been more to do but and but I 
# did not do anything else because the instructions did not imply that I needed to, or they were vague.
