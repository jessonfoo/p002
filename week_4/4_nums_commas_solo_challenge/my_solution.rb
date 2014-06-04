# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# the input will be an integer
# What is the output? (i.e. What should the code return?)
# the output will be a comma separated integer as a string
# What are the steps needed to solve the problem?
# define method separate_comma(int)
# convert int to str
# if string.length is less than 4 return str
# if string.length is greater than 4 convert str to array
# reverse the array
# separate array into sets of 3
# join each array into a string
# place comma's in between strings
# reverse str again
# return str


# # 2. Initial Solution

# def separate_comma(int)
# 	num = int.to_s
# 	if num.length < 4
# 		puts num
# 	else 
# 		a = num.split('')
# 		a = a.reverse
# 		b = a.each_slice(3).map { |e| e.join('')  }
# 		c = b.join(",")
# 		p c.reverse
# 	end
# end







# 3. Refactored Solution
def separate_comma(int)
	n = int.to_s.split('').reverse.each_slice(3).map { |e| e.join('')  }.join(",").reverse
	return n
end

# p separate_comma(100)			#=> 100
# p separate_comma(1000)		#=> 1,000
# p separate_comma(100000)		#=> 100,000
# p separate_comma(12345678) 	#=> 12,345,678

# 4. Reflection 

# This challenge was fairly difficult. I had to look through the ruby api to find methods
# that I could apply to this problem. At first, I worked on each step of psuedocode thinking
# I should use conditional statements but when I refactored I realized it was unnecessary. My
# initial solution was very split up because of numerous trial and error attempts. I concatenated
# each line until I ended up with a single line of code. The final product can still be slimmed 
# down by simply returning the value of num and removing the key and the puts num command.
# 


