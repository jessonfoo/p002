# U2.W4: Create Accountability Groups



# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: list of students
# Output: array containing other arrays of 4 students
# Steps: 
# => create variable for list of students
# => figure out if the number of students can be evenly divided into groups of 4
# => if it can, randomize the list of students
# => randomize students and seperate into fours
# => join sets of 4 students into strings
# => print



# 3. Initial Solution
# list = ["Alex Birdsall", "Andres Saavedra", "Antonio Dangond", "Aurelio Garcia", 
# 	"Brooks Roley", "Cassidy Clawson", "Danielle Sublett", "Eric Kennedy", 
# 	"Erick Kawala", "Evan Simoni", "Frank Shaw", "Gunnari Auvinen", "Ian Bui", 
# 	"Igor Gaelzer", "Jessica Tung", "Jesson Foo", "Katia Bazzi", "Matthew Chan", 
# 	"Melissa McCoy", "Michael Teevan", "Nina Church", "Ori Jonathan Pleban", 
# 	"PATRICK MENZEL", "Patrick Lauer", "Patrick San Juan", "Stephens Xu", "Tommy Dugger",
# 	"Vladislav Abacumov", "Whitney O'Banner", "Xang Thao", "Yen Tran", "Yohan Yi"]
# 	def grouper(list)	
# 	n = list.count/4
# 	l = list.shuffle.each_slice(4).to_a.map { |e| e.join(',')  }
# 	for i in 0...n
# 	p "Group" + (i+1).to_s + ":" + l[i]
# 	end
# 	end
# 	grouper(list)
# 4. Refactored Solution


list = ["Alex Birdsall", "Andres Saavedra", "Antonio Dangond", "Aurelio Garcia", 
	"Brooks Roley", "Cassidy Clawson", "Danielle Sublett", "Eric Kennedy", 
	"Erick Kawala", "Evan Simoni", "Frank Shaw", "Gunnari Auvinen", "Ian Bui", 
	"Igor Gaelzer", "Jessica Tung", "Jesson Foo", "Katia Bazzi", "Matthew Chan", 
	"Melissa McCoy", "Michael Teevan", "Nina Church", "Ori Jonathan Pleban", 
	"Patrick Menzel", "Patrick Lauer", "Patrick San Juan", "Stephens Xu", "Tommy Dugger",
	"Vladislav Abacumov", "Whitney O'Banner", "Xang Thao","Yen Tran", "Yohan Yi"]
	

def grouper(arr)
	for i in 1..3
		@arr = arr.shuffle
		if @arr.count % 4 == 0
			r_groups = []
				r_groups[6] = @arr.pop(3)
				r_groups[7] = @arr.pop(3)
				r_groups[8] = @arr.pop(3)
		
		end
			@arr.shuffle.each_slice(4).to_a.map { |e| e.join(',')  }  
			p "Unit: " + i.to_s
				for i in 0..((arr.count/4.0)-1)
					p "Group " + (i+1).to_s + ":" + r_groups[i].to_s
				end
	end

end

grouper(list)


# 1. DRIVER TESTS GO BELOW THIS LINE



# 5. Reflection 
# I've been having trouble figuring out how to do driver test code. I found this unit to be a little
# more stressful that usual. I think it was because my ruby was rusty, and I may have relied too much on
# my partners. I plan on brushing up on my ruby skills, and setting strictire timelines.
# 
# 
# 
# 
# 

