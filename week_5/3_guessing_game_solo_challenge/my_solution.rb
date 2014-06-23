# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself

# 2. Pseudocode

# Input: 
# 		1.take in initial integer (answer)
# 		2.take in additional int (guess) 
# Output:
#		1. returns symbol :high if guess > answer
#		2. returns symbol :low if guess < answer
#		3. returns boolean true if answer == guess
# 		4. returns boolean false if answer != guess
# 		5. returns symbol :correct if guess == answer
# 		6.
# Steps:
# 		1.the intialize method define instance variables 
# 		2.define geuess method.
# 		3.store arg in instance
# 		4. return corresponding results
# 		5.define solved?
# 		6.unless guess & answer are the same return false



# 3. Initial Solution

# class GuessingGame
#   	def initialize(answer)
#   		@answer = answer
#    	end

#   	def guess(guess)
#   		@guess = guess
#       if @guess == @answer
#         return :correct
#       elsif @guess > @answer
#         return :high
#       else
#         return :low
#       end
# 	end

# 	def solved?
# 		return true if @guess == @answer
# 		return false if @guess != @answer
# 	end
# end




# 4. Refactored Solution
class GuessingGame
  	def initialize(answer)
  		@answer = answer
   	end

  	def guess(guess)
  		@guess = guess   
  		return :high if @guess > @answer
  		return :low if @guess < @answer
  		return :correct if @guess == @answer
	end

	def solved?
		@guess == @answer
	end
end


# 1. DRIVER TESTS GO BELOW THIS LINE


# p game = GuessingGame.new(10)
# p game.solved?   # => false

# p game.guess(5)  # => :low
# p game.guess(20) # => :high
# p game.solved?   # => false
 
# p game.guess(10) # => :correct
# p game.solved?   # => true

# game = GuessingGame.new rand(100)
# last_guess  = nil
# last_result = nil

# until game.solved?
#   unless last_guess.nil?
#     puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
#     puts ""
#   end

#   print "Enter your guess: "
#   last_guess  = gets.chomp.to_i
#   last_result = game.guess(last_guess)
# end

# puts "#{last_guess} was correct!"

# 5. Reflection 
# This challenge was fairly easy as well, I did run in to some problems with rspec, but it passes all the driver code.
# the problems that I had was that my code kept saying that my guess and solved? methods were not defined
# but they clearly are. I Like that this weeks challenges are not so bombarding, and that we are learning
# just a few new things to use over and over again.