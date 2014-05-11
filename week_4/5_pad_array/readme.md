[Week 4 Home](../)

# U2.W4: Create a Method to Pad an Array


## Learning Competencies
- Use tests to guide development
- Break down problems into implementable pseudocode 
- Differentiate between and produce destructive and non-destructive methods
- Find and use built-in Ruby methods to solve challenges

## Summary:

Implement `Array#pad` and `Array#pad!`.  Each method accepts a minimum size (non-negative integer) and an optional pad value as arguments.

If the array's length is less than the minimum size, `Array#pad` should return a new array padded with the pad value up to the minimum size.

For example,
```ruby
[1,2,3].pad(5)
```

should return

```ruby
[1,2,3,nil,nil]
```

And
```ruby
[1,2,3].pad(5, 'apple')
```

should return

```ruby
[1,2,3,'apple', 'apple']
```

If the minimum size is less than or equal to the length of the array, it should just return the array.

That is, `[1,2,3].pad(3)` should return `[1,2,3]`.

`my_array.pad(0)` should always return an array equal to `my_array`.  `Array#pad` should always return a new object, i.e., it should be non-destructive.

`Array#pad!` behaves identically to `Array#pad` except that it modifies the underlying array.


##Release 0: Run the tests
In your terminal, navigate to this directory and run the appropriate spec file.
Each test should fail. Read the output in your terminal to see what is making the tests fail.


## Release 1: [Pseudocode](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/pseudocode.md) 
*commit your changes*

## Release 2: [Initial Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/initial_solution.md) 
*commit your changes*

## Release 3: [Refactored Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/refactoring.md) 
*commit your changes*

## Release 4:  [Reflect](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/reflection_guidelines.md) 
Include your reflection in the appropriate section in your `my_solution` file. ***NOTE: Reflections are mandatory!*** Commit your changes!

## Release 5: Commit and Push your changes to Github
When you feel confident with your solution, push your changes through the command line to your repo on GitHub. 
If you have done this successfully, you should be able to see your new code on your repo on [github.com](https://github.com).

## Release 6: [Review](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/review.md)
