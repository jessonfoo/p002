[Week 5 Home](../)

# U2.W5: A Nested Array to Model a Boggle Board


## Learning Competencies
- Break down problems into implementable pseudocode 
- Create, access, and traverse nested data structures
- Explain how data structures and classes can model a real-world object
- Explain how instance variables and methods represent the characteristics and actions of an object

## Summary

We've already worked with hashes and arrays as data structures.  They are handy ways of collecting and organizing data, and ideal for modeling a group of objects.  

In this challenge, we're going to model a grid or a board that has coordinates for each of it's cells.  A logical way of modeling a board is to use a nested array, where a row and column are its coordinates.

Let's explore a boggle board as an example.

```ruby
boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
```

If we wanted to access the "r" character in the first row, we'd use the syntax below because "r" is in row 0 and under column 1. (Remember that arrays start counting from 0).

In boggle, you can spell out words by collecting letters that are immediately next to one another (up, down, across, or diagonally).  One of the words possible in the above boggle board is "code." Below is a simple method that takes a group of coordinates and returns a string of the corresponding `boggle board` elements. 

  ```ruby
  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?
  ```
### This challenge has 2 Parts. For each section, follow the steps in the releases. 

#### Part 1: Write a method that takes a row number and returns all the elements in the row.  

```ruby
def get_row(row)
    # your code here
end

get_row(1) #=>  ["i", "o", "d", "t"]
```


#### Part 2: Now write a method that takes a column number and returns all the elements in the column.

```ruby
def get_col(col)
    # your code here
end

get_col(1)  #=>  ["r", "o", "c", "a"]
```


```ruby 
puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false
```


## Release 0: [Pseudocode](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/pseudocode.md)

## Release 1: [Initial Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/initial_solution.md)

## Release 2: [Refactored Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/refactoring.md)

## Release 3: [Reflect](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/reflection_guidelines.md)

## Release 4: Push your solution to Github

## Release 5: [Review](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/review.md)


## External Resources
* [Boggle on Wikipedia](http://en.wikipedia.org/wiki/Boggle)
* [Play Boggle online](http://www.wordplays.com/boggle)
