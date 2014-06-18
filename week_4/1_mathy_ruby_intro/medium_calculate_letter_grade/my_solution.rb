# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# the input will be a list of grades 
# What is the output? (i.e. What should the code return?)
# the output will be a letter grade 
# What are the steps needed to solve the problem?
# first I will define a method that will calculate the sum of the array.
# my next step will be to divide the array's sum by the length of the array.
# finally, I will define a loop that will return a corresponding letter grade.

# 2. Initial Solution
<<<<<<< HEAD
# def get_grade(list)
# 	if list.inject(0) {|x,y| x + y}/list.length >= 90
# 		return "A"
# 	elsif list.inject(0) {|x,y| x + y}/list.length >= 80
# 		return "B"
# 	elsif list.inject(0) {|x,y| x + y}/list.length >= 70
# 		return "C"
# 	elsif list.inject(0) {|x,y| x + y}/list.length >= 60
# 		return "D"
# 	else return "F"
# 	end
# end
=======

  

>>>>>>> upstream/master
# 3. Refactored Solution
def get_grade(list)
	avg = list.inject(0) {|x,y| x + y}/list.length
	if avg >= 90
		return "A"
	elsif avg >= 80
		return "B"
	elsif avg >= 70
		return "C"
	elsif avg >= 60
		return "D"
	else return "F"
	end
end



# 4. Reflection 
# this challenge was fairly straight forward. Initially I forgot that I could create an object 
# whose definition was the average. I used this for my refactored code and made looped the same
# average through.
#
