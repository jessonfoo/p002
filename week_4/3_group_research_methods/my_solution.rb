# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

end# Person 1's solution (Xang Thao)
def my_array_finding_method(source, thing_to_find)
    match_words = []
    source.each do |word| 
        for i in 0...word.to_s.length
            if thing_to_find === word[i]
            match_words.push(word)
            break
            end
        end
    end
  return match_words
end

def my_hash_finding_method(source, thing_to_find)
    name_match_age = []
    
    source.each do |name, age|
        if age === thing_to_find
            name_match_age.push(name)
        end
        
    end
    return name_match_age 
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2 (Jesson Foo)

# def my_array_modification_method(source, n)
#   for i in 0...source.size
#     if source[i].is_a? Integer
#       source[i] += n
#     end
#   end
#   p source
# end

def my_array_modification_method(source, n)
  source.map{|i| 
    if i.is_a? Integer 
      i += n 
    end 
    i}
  p source
end

my_array_modification_method(i_want_pets, 1) 
#=> ["I", "want", 4, "pets", "but", "I", "only", "have", 3, ":(." ] 

def my_hash_modification_method(source, thing_to_modify)
  source.each do |key, value|
      source[key]+= thing_to_modify
    end
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3 (Tommy Dugger)
def my_array_sorting_method(source)
  source.map{ |x| x.to_s }.sort.uniq
end

def my_hash_sorting_method(source)
    source.sort.sort_by{ |k, v| v }
end

# Identify and describe the ruby method you implemented. 
# 
# For the my_array_sorting_method method, I used 3 methods
# 
# 1. The first is the map method.  This method executes 
# the given block of code once for each item in the array
# I use this method to convert all items to strings.  I 
# do this because there are items in the array that are
# numbers and I can't use the sort method unless all of
# the items are of the same type.  More importantly, the
# tests for the challenge want them to be strings so I
# convert all items in the array to strings with the to_s
# method.
# 
# 2. The second method that I use is the sort method. This
# method sorts the array in alphabetical order because I
# gave it NO block of code.  You can give the sort method
# a block and compare items in the array for sorting.  If
# all the items in the array where numbers then the sort
# method would order them numerically instead.
#
# 3. The third method is use is the uniq method.  This
# method created a new array that contains only the items
# from the original array that where unique.  I do this
# here because the letter "I" appeared twice in the original
# array and the test for this method wanted only one "I"
# 
# For the  my_hash_sorting_method, I used two methods
# 
# 1. The first is the sort method.  The sort method here
# acts just like it did on the array in the first method.
# The notable difference being that it sorts a hash by
# it's keys rather than by the value of each key.  I do
# this because there items in the has that have the same
# value so I have to sort by the key first to make sure
# that when I sort the second time using sort_by on the
# value of the keys, I get the right order to pass the test.
# 
# 2. The second is the sort_by method.  This method takes
# a block of code to use to determine what we will sort
# by.  Since this is a hash, I have to declare a variable
# for both the key and the value at the beginning of my
# block.  I then tell sort_by that I wish to sort by the
# value rather than the key.  In the end, I've sorted the
# hash twice, once by the keys and once by the values.


# Person 4 (Group did individually due to only having 3 members)
def my_array_deletion_method(source, thing_to_delete)
    source.reject!{ |x| x.to_s.include?(thing_to_delete) }
end

def my_hash_deletion_method(source, thing_to_delete)
    source.reject!{ |k, v| k == thing_to_delete }
end
#my_hash_deletion_method(my_family_pets_ages, "George") 
#=> {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}


# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

# p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
# p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
# p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
# p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
# p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
# p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
#  This may be false depending on how your method deals with ordering the animals with the same ages.
# p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
# p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# # Reflect!
# 
# 
# 
# 
# 