# U2.W4: Refactor Cipher Solution

# I worked on this challenge with Yohan Yi

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

#method that takes input sentence, outputs a encoded sentence
def translate_to_cipher(sentence)
    #create array of alphabet
    alphabet = ('a'..'z').to_a
    #create hash that groups alphabet letter to the letter rotated by x amount
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    #array of special character named space
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    #lower cases every letter in sentence
    original_sentence = sentence.downcase
    #create empty array original_sentence , to later push encoded sentence into
    encoded_sentence = []
    #loop through each character in original_sentence, and for each character do
    original_sentence.each_char do |element|
      #if the character is found in the cipher
      if cipher.include?(element)
        #push the value of the matching cipher character
        encoded_sentence << cipher[element]
        #if the character is a blank space
      elsif element == ' '
        #push a random character in the array spaces into the array encoded_sentence
        encoded_sentence << spaces.sample
      else 
        #if neither character is included in cipher, or blank space, push the char 
        #directly into encoded_sentence
        encoded_sentence << element
      end
     end
    #return the encoded sentence joined to form a real sentence
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? 
#
#    Changing the range of letters into an array.
#
# 2. How does the rotate method work? What does it work on? 
#
#    The method rotates the array by the inputted number. It also can be negative. Works on arrays.
#
# 3. What is `each_char` doing?
#
#    each_char is going through each character in the 
#    original_sentence and running the block of code that follows for every character.
#
# 4. What does `sample` do?
#
#    Array#sample chooses a random element from the array.
#
# 5. Are there any other methods you want to understand better? 
#
#    I thought the .zip method was a bit difficult
#
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
#   
#    This version of the code looks a bit longer than my refactored cipher. It is longer,
#    but it's readibility is far better. I think my code probably would have looked very
#    similar to this if Tommmy(my partner for the cypher challenge) had not been so 
#    experienced in working with programming.
#    
# 7. Is this good code? What makes it good? What makes it bad?
#
#    This code is good in my opinion because it is understandable. I think it could be more organized.
#    The way that Tommy suggested that we do this was with two seperate methods, one for the cypher, and
#    one to decode the message.



# Questions:
# 1. What is the .to_a method doing?
# => changes the class of the element to an array
# 2. How does the rotate method work? What does it work on?
# => the rotate method rotates the array from the front to the end of the array
# 3. What is `each_char` doing?
# => the each_char goes through each character and compares it to the cypher. The cypher
# => adds the corresponding character from the original string to the encoded string
# 4. What does `sample` do?
# => sample takes a random number from the array, or multiple numbers depending on 
# 5. Are there any other methods you want to understand better?
# => I had no trouble with this challenge, I felt comortable with all the methods in this 
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# => I feel like this code is not as good as our original cipher code, just because tommy was so
#    good at refactoring. His code left me in awe because of its genius, but this one is still good
# => because of its readibility.
# 7. Is this good code? What makes it good? What makes it bad?
#    I think it is good becaause it is easily understood,
#    However, I'm sure someone else could have made it cleaner.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 


#I thought this was an easy challenge. With ruby it feels like you can definitely write a program, but
#what can make it better or worse is how much time you spend on refactoring and making it readable.
#It was pretty straight forward and more of a reasearch based challenge. over all it was lax.
#
#
#
#
#
#

