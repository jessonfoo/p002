[Week 4 Home](../)

#U2.W4: Group Challenge: Research Methods

## Learning Objectives
- Find and use built-in Ruby methods to solve challenges
- Iterate through data structures and manipulate the content
- Explain how to use an existing ruby method

## Summary
I'm sure many of you have looked through the [Ruby Docs](http://ruby-doc.org/) and had some
difficulty trying to figure out what methods do and how they work. You have probably also 
seen some people using methods you didn't know existed when you looked through other solutions.
In this challenge, you will practice reading through the docs to find existing enumerable methods and 
use them on `Array`s and `Hash`es. 

Research and test these methods out thoroughly. You may want to play around with them in IRB to 
figure out exactly how they work before you can implement them properly. 

## Release 0:
Refer to your accountability group spreadsheet to find your role. 

Each person has a challenge to solve. This does not need to be done in any order. *(NOTE: the driver code 
needs each method in order to be correct, however).*

Using the [Ruby Docs](http://ruby-doc.org/) find one method you can use
on both an array and a hash, and use it on the two structures to complete the goal.

Once you complete your challenge, Identify and describe the ruby method you implemented. Teach your 
accountability group how to use them. 

Each person will be working with the following `Array` and `Hash`: 
```ruby
i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2, ":(." ]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
  "Annabelle" => 0, "Ditto" => 3}
```

#### Person 1: Find Matching Data
Create a method `my_array_finding_method` that takes an `Array` and a letter as arguments
and returns the words that contain that letter.

For example:
```ruby
my_array_finding_method(i_want_pets, "t") #=> should return ["want","pets","but"]
```

Create a method `my_hash_finding_method` that takes a `Hash` and number as arguments and 
returns a list of pet names by age. 
Ex. 
```ruby
my_hash_finding_method(my_family_pets_ages, 3) #=> should return ["Hoobie", "Ditto"]
```

#### Person 2: Modify Existing Data
Two years have passed since I made these, so they need to be updated. **HINT: the actual 
data structures need to be modified**
I recently got a new pet, but I still want another!
Create a `my_array_modification_method` that takes an array and number to be added to all
internal numbers. (Because you can never have too many pets!) For example:

```ruby
my_array_modification_method(i_want_pets, 1) 
#=> ["I", "want", 4, "pets", "but", "I", "only", "have", 3, ":(." ] 
```

Then create a method that updates the ages in the hash. For Example:

```ruby
my_hash_modification_method(my_family_pets_ages, 2) 
#=> {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
```

#### Person 3: Sort Data
I want to create a sorting method that alphabetizes an array. I also want to create a sorting method that arranges
the data in my hash by age (starting with the youngest first). This should not modify the existing data structure.

```ruby
my_array_sorting_method(i_want_pets, "pets") #=>
["3", "4", "I", "but", "have", "only", "pets", "want"]

my_hash_sorting_method(my_family_pets_ages, age) #=>
[["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
```

#### Person 4: Delete Matching Data
Sometimes you no longer need data that matches something. Create a `my_array_deletion_method` that takes an array
and a letter, and deletes all the strings that contain that letter. This should modify the existing structure.
For example: 
```ruby 
my_deletion_method(i_want_pets, "a") 
#=> ["I", 4, "pets", "but", "I", "only", 3, ":(." ]
```

Poor George passed away. He had a good life, but I need to remove him from my list. 

```ruby
my_deletion_method(my_family_pets_ages, "George") 
#=> {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
```

## Release 1: Push your solutions and grab others!
Push your solutions to your repo on GitHub, then find your accountability groups' solutions. Review them. 
Which existing methods did they use? Try to use them based on the instructions your group-mate included. 

## Release 2: Reflect
Use the [reflection guidelines](https://github.com/Devbootcamp/phase_0_handbook/blob/master/coding_references/reflection_guidelines.md) and also discuss the following in the reflection section of the [my_solution](my_solution.rb) file:
What did you learn about researching and explaining your research to others?

