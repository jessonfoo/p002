# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# 1)create class BoggleBoard with initialize method that 
# takes an array & creates and instance of that array
# 2)copy code from previous boggleboard solution and integrate into class
# 3)create method create_word


# 3. Initial Solution
# class BoggleBoard
# 	def initialize(array)
#  		@array = array
# 	end
# 	def get_row(row)
#         return @array[row]
#     end
#     def get_col(col)
# 		arr = []
#     	@array.each do |x| 
#     		arr << x[col]
#     	end
#     	return arr
# 	end
# 	def get_char(x,y)
# 		char = get_col(y)
# 		char[x]
# 	end
# 	def create_word(*cords)
# 		word = []
# 		cords.each {|x,y| word << get_char(x,y)}
# 		word.join
# 	end
# end
 


# 4. Refactored Solution
class BoggleBoard < Array
	def get_row(row)
        self[row]
    end
    def get_col(col)
		arr = []
    	self.each do |x| 
    		arr << x[col]
    	end
    	return arr
	end
	def get_char(x,y)
		char = get_col(y)
		char[x]
	end
	def create_word(*cords)
		word = []
 		cords.each {|x,y| word << get_char(x,y)}
 		word.join
	end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:  [[1,2], [1,1], [2,1], [3,2]]
def assert
 raise "assertion failed" unless yield
 puts true
end

dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)
assert{boggle_board.get_char(1,2) == "d"}
assert{boggle_board.get_char(1,1) == "o"}
assert{boggle_board.get_char(2,1) == "c"}
assert{boggle_board.get_char(3,2) == "k"}
assert{boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"}
assert{boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  == "code" } 
assert{boggle_board.create_word([0,1], [0,2], [1,2])  == "rad"}

col = []		
4.times{|i| col << boggle_board.get_col(i).join}
row = []
4.times{|i| row << boggle_board.get_row(i).join}
assert{ col.size == 4}
assert{ row.size == 4}
# # 5. Reflection 

# I enjoyed this challenge because it got me thinking about how I could access items if they were
# positioned in the style of a grid. although I realize the actual boggle board array would not print
# the way that I would like it to as done above, it was still fun. 


