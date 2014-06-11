# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# the input will be a minimum size non negative integer and an optional pad value
# What is the output? (i.e. What should the code return?)
# the output will be an array padded with the pad value up to the minimum size
# What are the steps needed to solve the problem?
# define pad method nested inside of class Array
# write loop that compares number of items in array to minimum int value
# if number of items in array is less than min int value, add padded value
# return array



# 2. Initial Solution

# class Array
# 	def pad(int, value=nil)
# 		until self.count >= int
# 			self << value
# 		end
# 		self
# 	end
# end

# p [1,2,3].pad(5) # => [1,2,3,nil,nil]
# p [1,2,3].pad(5, 'apple')	# =>  [1,2,3,'apple', 'apple']
 
# 3. Refactored Solution

class Array
	def pad(int, value=nil)
		a = self.clone
		while a > self.count
			a << value
		end
		a
	end
	def pad!(int, value=nil)
		while int > self.count
			self << value
		end
		self
	end
end

# p [1,2,3].pad(5) # => [1,2,3,nil,nil]
# p [1,2,3].pad(5, 'apple')	# =>  [1,2,3,'apple', 'apple']

# p [1,2,3].pad!(5) # => [1,2,3,nil,nil]
# p [1,2,3].pad!(5, 'apple')	# =>  [1,2,3,'apple', 'apple']
# 4. Reflection 
# 
# I enjoyed working on this challenge, but it was very confusing at first. In the beginnning
# I didnt realize that I needed to specify I would be creating a method for the class itself.
# I thought that this was really cool that I could make a new method that could be used for the
# class throughout the project. It took some time and a lot of research but It was very satisfying.
# 
# 
# 

