require_relative "../assert.rb"
# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution
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



# Refactored Solution
class CreditCard

    def initialize(num)
        @num = num.to_s.split('').map{|x| x.to_i}
        raise ArgumentError.new('number must be 16 digits') unless @num.size == 16
    end


    def double
        @num.each_index do |index|
            if index % 2 == 0
                @num[index] *= 2
            end
        end
    end

    def split
        @num = @num.join.split('')
    end

    def check_card
        double
        split
        @num = @num.map{|x| x.to_i}.reduce(:+)
        @num %10 == 0
    end
end


# DRIVER TESTS GO BELOW THIS LINE

a = CreditCard.new(4408041234567893)
b = CreditCard.new(4408041234567892)
assert{b.check_card == false}
assert{a.check_card == true}

begin
 CreditCard.new(1412093847102398471209374)
rescue => e
 assert{e.class == ArgumentError}
end


# Reflection 
# this challenge was eye opening for me because for all of the challenges, I had been trying to chain
# methods together to make my refactored code as short as possible in terms of lines. I hadn't thought 
# that refactored code should be easier to read. I think that this challenge will affect the way that I
# refactor my code from now on. I was suprised at how confusing my code could be to someone else.
# I think I will need to work on making my code more understandable to everyone. 