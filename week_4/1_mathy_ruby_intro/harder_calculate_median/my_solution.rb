# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def median(array)
	n = array.sort
	m = n[n.length/2.0]
	if n.length%2 == 1
		return m
	else
		return (m + n[(n.length/2.0)-1])/2.0
	end
end


# 3. Refactored Solution
def median(array)
	n = array.sort
	m = n[n.length/2.0]
	if n.length%2 == 1
		return m
	else
		return (m + n[(n.length/2.0)-1])/2.0
	end
end


# 4. Reflection 