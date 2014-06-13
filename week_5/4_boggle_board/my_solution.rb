# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Write a method that takes a row number and returns all the elements in the row.
# Initial Solution
class Array
	def get_row(row)
    	self[row]
	end
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# need to loop through the array and access the item in the array corresponding to the row
# create a new array with the items from the column and return the new array.
# Initial Solution
# class Array
# 	def get_col(col)
# 		arr = []
#     	self.each do |x| 
#     		arr << x[col]
#     	end
#     	p arr
# 	end
# end
# boggle_board.get_col(1)  #=>  ["r", "o", "c", "a"]

# Refactored Solution
class Array
	def get_col(col)
		arr = []
    	self.each do |x| 
    		arr << x[col]
    	end
    	p arr
	end
end


# DRIVER TESTS GO BELOW THIS LINE
p boggle_board.get_col(1)  ==  ["r", "o", "c", "a"]
p boggle_board.get_row(1) ==  ["i", "o", "d", "t"]
# Reflection 
#
# the first part of the challenge was fairly easy. the second part of the challenge required a bit more thought. 
# My biggest struggle is forgetting to use the self object, but once i remember to, things get a lot easier. all in all
# this challenge was still much easier than the ones we've had in teh past.
#
#
#
#
#
#


