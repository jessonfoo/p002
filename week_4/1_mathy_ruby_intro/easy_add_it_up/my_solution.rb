# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with yohan yi.

# 1. Pseudocode

# What is the input?
# The input is Arr
# What is the output? (i.e. What should the code return?)
# the output should return the total of Arr
# What are the steps needed to solve the problem?
# I will define the function total to take in Array and return x


# 2. Initial Solution

# def total(arr)
# 	x = nil
# 	@array = arr
# 	for i in @array
# 		x += @array[i]
# 	end
# 	return x
# end

# def sentence_maker(arr)
# 	x = nil
# 	@array = arr
# 	for i in @array
# 		x += @array[i]
# 	end
# 	return x
# end

# 3. Refactored Solution
def total(arr)
	arr.inject(0) { |x, y| x + y }
end

def sentence_maker(arr)
	arr.join(" ").capitalize + "."
end

# 4. Reflection 
# This challenge was a good refresher course on ruby since I haven't touched it in a while.
# My initial solution was not working so I resorted to looking through the ruby api and i came accross the inject method
# I had more trouble with the sum creator than wthe sentence maker. this was a fairly good challenge.
#
#

