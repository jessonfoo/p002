[Week 4 Home](../../)

# U2.W4: Calculate the Mode


## Learning Objectives
- Use Tests to guide development
- Break down problems into implementable pseudocode
- Iterate through data structures and manipulate the content
- Determine which data structure (arrays or hashes) to use based on challenge requirements
- Use strings, integers, arrays, and/or hashes


## Directions

Write a method `mode` which takes an `Array` of numbers or strings as its input and returns an `Array` of the most frequent values.

If there's only one most-frequent value, it returns a single-element `Array`.

For example,

```ruby
mode([1,2,3,3])         # => [3]
mode([4.5, 0, 0])       # => [0]
mode([1.5, -1, 1, 1.5]) # => [1.5]
mode([1,1,2,2])         # => [1,2]
mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
mode(["who", "what", "where", "who"]) # => "who"
```


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

###7. Review
Review two of your accountability group members' solutions, and give them kind, specific, and actionable feedback. 
Look at [Reviewing Solutions](reviewing_solutions.md) for instructions. 