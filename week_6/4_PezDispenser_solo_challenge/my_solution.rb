# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# 1)create initialize method taking in flavors as an array and create instance of array
# 2)create see_all_pez method which will return array
# 3)create add_pez which takes string argument and pushes to array
# 4)create pezz pez_count method which returns array size
# 5)create get_pez method which returns the first pez in the array and also removes it


# 3. Initial Solution

# class PezDispenser
# 	def initialize(array)
# 		@array = array
# 	end
# 	def see_all_pez
# 		@array
# 	end
# 	def add_pez(str)
# 		@array << str
# 	end
# 	def pez_count
# 		@array.size
# 	end
# 	def get_pez
# 		@array.shift
# 	end
# end
 


# 4. Refactored Solution

class PezDispenser
	def initialize(array)
		@array = array
	end
	def see_all_pez
		@array
	end
	def add_pez(str="purple")
		@array << str
	end
	def pez_count
		@array.size
	end
	def get_pez
		@array.shift
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
	raise ArgumentError.new("assertion error") unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
# puts "Here's a look inside the dispenser:"  
# puts super_mario.see_all_pez 
# puts "Adding a purple pez."
# super_mario.add_pez("purple")   # mmmmm, purple flavor
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"
# assert {super_mario.size=}
assert {super_mario.pez_count == flavors.count}
assert {super_mario.see_all_pez.size == flavors.count}
assert {super_mario.add_pez.size == flavors.count}
assert {super_mario.pez_count == flavors.count}
assert {super_mario.get_pez.is_a? String}
assert {flavors.class == Array}
assert {super_mario.pez_count == flavors.count}

# 5. Reflection 

# this challenge was simple in the sense that all that needed to be done was create each method. 
# each method for the class was simple enough because everything could be done in one line of code.
# Overall it was a nice challenge to remind us that we need to create methods for the classes that 
# we create. I did not like translating user stories into psuedocode, but what made it easier was the
# driver tests that were included.




