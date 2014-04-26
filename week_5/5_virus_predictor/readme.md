[Week 5 Home](../)

# U2.W5: Virus Predictor 


## Learning Competencies
- Identify and explain what code is doing
- Create, access, and traverse nested data structures
- Automate repetitive tasks using loops
- Define a method's responsiblity
- Identify and rewrite repetitive code
- Explain `private` and discuss when it would be used

## Summary

The C.D.C. (Centers for Disease Control) is concerned about a recent form of deadly influenza. They've implemented the following program to predict the effect of the virus by state. Eventually they want to predict the spread of the virus, which is why that data is included.

The initial program is not very D.R.Y., but the program designer went on vacation and your boss needs the model to work efficiently so researchers can use it. You've been brought in to make the code more efficient and expandable for later features such as incorporating demographic data. 


## Release 0: Run the code 
Look at the output. Look at the input (it's in the other file). Explain what the program is doing.

## Release 1: `require_relative`
Write a comment explaining the require_relative statement - You should be somewhat familiar with this by now - it's in every `spec.rb` file.

## Release 2: Analyze `state_data`
Take a look at the `state_data` file. What is going on with this hash? What does it have in it? (HINT: There are two different syntax used for hashes here. What's the difference?)

## Release 3: Comment each method
Comment each method (above the method) and define it's responsibility.

## Release 4: Implement a new feature!
Create a report for all 50 states, not just the 4 listed below.  Is there a DRY way of doing this?

## Release 5: Refactor `virus_effects`
ONLY look at `virus_effects` (not the two methods in it). HINT: what is the scope of instance variables? What is being passed in? Does it make sense?

## Release 6: Private
What is the purpose of "private". What happens if you move it elsewhere in the class?

## Release 7: Refactor!
Refactor the private methods predicted_deaths and speed_of_spread.  How can you make them more DRY?
