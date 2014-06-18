[Week 5 Home](../)

# U2.W5: Die Class 1: Numeric


## Learning Competencies
- Break down problems into implementable pseudocode 
- Implement a basic Ruby class and identify when to use instance variables
- Use if/else statements, string methods, while/until loops, Enumerable#each methods
- Find and use built-in Ruby methods to solve challenges
- Explain how instance variables and methods represent the characteristics and actions of an object

## Summary
Before starting this challenge, you will want to read a bit about classes and ruby objects. Try these: [Writing our own Class in Ruby](http://rubylearning.com/satishtalim/writing_our_own_class_in_ruby.html), [Ruby Classes and Objects](http://www.tutorialspoint.com/ruby/ruby_classes.htm), or read about classes in [The Well-Grounded Rubyist (Book)](http://www.manning.com/black2/). You definitely want to research this before you try it. Classes are a different thing altogether and may be difficult to understand at first. Don't worry, you'll get lots of practice this week! You may also want to get a head-start on Object-Oriented Design by reading [Practical Object Oriented Design in Ruby (Book)](http://www.poodr.com/)(affectionately known as POODR). 

Implement a basic `Die` class which can be initialized with some number of sides.  We can then roll the die, returning a random number.  It should work like this:

```ruby
die = Die.new(6)
die.sides # returns 6
die.roll # returns a random number between 1 and 6
```

If we pass `Die.new` a number less than `1`, we should raise an `ArgumentError`.  This is done using the `raise` keyword.  See the [ArgumentError documentation](http://apidock.com/ruby/ArgumentError) for how to do this.

Use the [Ruby Docs](http://www.ruby-doc.org/) to see how to return a random number. 

## Release 0: Run the Tests
 
## Release 1: Translate the tests
Translate at least 3 of the tests into [Driver Test Code](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/driver_code.md) and include it in the driver test code section. If the tests are failing to catch a problem, try writing your own driver test code for it. 

## Release 2: [Pseudocode](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/pseudocode.md)

## Release 3: [Initial Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/initial_solution.md)

## Release 4: [Refactored Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/refactoring.md)

## Release 5: [Reflect](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/reflection_guidelines.md)

## Release 6: Push your solution to Github

## Release 7: [Review](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/review.md)