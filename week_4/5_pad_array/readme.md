[Week 4 Home](../)

# U2.W4: Create a Method to Pad an Array


## Learning Objectives
- Use tests to guide development
- Break down problems into implementable pseudocode 
- Differentiate between and produce destructive and non-destructive methods
- Find and use built-in Ruby methods to solve challenges

## Directions

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


###1. Run the tests
In your terminal, navigate to the directory that corresponds to this challenge in your forked 
`p0_unit1_submission` repo. Type `rspec` followed by the spec file name. ex. `rspec array_total_spec.rb`
Each test should fail. Read the output in your terminal to see what is making the tests fail.


###2. Pseudocode
Based on the tests, you should have an idea of what your method(s) need(s) to accomplish.
In the pseudocode section of your `my_solution.rb` file, identify the input and output. 
Then write specific step-by-step ideas in code-like English to pass each test. 
Each line should be something you can easily translate into code. 
For help with writing pseudocode, take a look at this [pseudocode standard](http://users.csc.calpoly.edu/~jdalbey/SWE/pdl_std.html) example.

*NOTE: Make sure your pseudocode is broken down to easily implementable steps.*

###3. Initial Solution
Translate your pseudocode into code. If your pseudocode 
is not easy to implement, modify it, and re-attempt to code it. 

When you think your code should pass the first failing test, run the spec file again 
using the `rspec` command. If it passes, work on translating the next bit of pseudocode
to pass the next test. If it fails, try to figure out why it's still failing and modify
your code accordingly.

When you've passed each test, give yourself a pat on the back! Then take a break before 
trying to refactor. It's good to give your eyes a rest so they can more easily see places 
to improve.

###4. Refactored Solution
When you return to your solution. Ask yourself:
- Are the variable names you've chosen clear? (see [Tips for Naming Variables](http://www.makinggoodsoftware.com/2009/05/04/71-tips-for-naming-variables/))
- Is the code concise (but readable)? See [Code Smells](http://blog.codinghorror.com/code-smells/) FYI: When he refers to "shorter methods" think of them 
  as not necessarily short in terms of lines, but having a single thing to do. Avoid chaining too many methods together or having too much logic on one line.
- Is the code [D.R.Y](http://programmer.97things.oreilly.com/wiki/index.php/Don't_Repeat_Yourself)? 

If you can't think of a way to improve your code, write why you think it's great instead. Do not simply copy the initial solution or leave this section blank.


###5. Reflect
Include your reflection in the appropriate section in you `my_solution` file. Use the [reflection guidelines](../week_2/reflection_guidelines.md) to guide your reflection. ***NOTE: Reflections are mandatory!***

###6. Push your solution
When you feel confident with your solution, sync your changes through the GitHub desktop app with your repo on GitHub. 
If you have done this successfully, you should be able to see your new code on your repo on [github.com](https://github.com).