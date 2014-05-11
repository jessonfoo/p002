[Week 4 Home](./)

# U2.W4: Homework Cheater!

## Learning Competencies
- Translate a user story into driver code and solutions
- Create methods that take arguments to modify the output
- Use if/else statements, string methods, while/until loops, Enumerable#each methods
- Differentiate between and produce destructive and non-destructive methods


## Summary
I'm sure you had times in school where you forgot you had a response assignment due and you didn't start it yet. Did you quickly throw something together during lunch? (I sure did.) 

In this challenge, you will create a program that will output something to "turn in" to your teacher. Think of this as academic mad lib. It doesn't have to be good (as evidenced by the example below), and it can be as easy or challenging as you design it to be. Have fun and challenge yourself!

You will have to create your own tests for this challenge as well. 

For example:

```ruby
def essay_writer(title, topic, date, thesis_statment, pronoun)
  # Your awesome code here!
end

essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", male) 

#=> My Award-Winning Essay (or maybe "D"-worthy)!
# The First Shogun

# Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. 
# His most important contribution to history is that he founded the Tokugawa period, a peaceful 
# time that lasted over 200 years. Tokugawa's contribution is important.

```

## Release 0: Create a Template
You will want to use a single template to do at least three different responses on three different subjects.

### User Stories: 
As a user, I want to
- Create a generic template
- Use the generic template (without overwriting it)
- Input a title into the template
- Identify and pass in a person/place/topic into the template
- Input an important date into the template
- Input my thesis statement into the template
- Output my finished template onto the screen

 
## Release 1: Write [Driver Test Code](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/driver_code.md) 
  - First, write your generic template (store in a variable)
  - Then identify the three topics and write out your ideal paragraph using your generic template. Store these in variables. 
  
## Release 2: [Pseudocode](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/pseudocode.md)
## Release 3: [Initial Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/initial_solution.md)
## Release 4: [Refactored Solution](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/refactoring.md)
## Release 5: [Reflect](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/reflection_guidelines.md)
## Release 6: Push your solution to Github
## Release 7: [Review](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/review.md)

##Optimize your Learning! (Optional)
- Use the appropriate pronoun for a person (male or female), place, or thing (HINT: this may be a good place to try creating an object...)
- Modify singular and plural nouns based on basic rules. (ie. you probably don't want to bother with something as crazy as "fish")
- Refer to a person by the last name after the first use of their name

