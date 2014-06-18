# U2.W4: Cipher Challenge


# I worked on this challenge with: Tommy Dugger.

# 1. Solution


# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)        # => defines the method 
#   input = coded_message.downcase.split("")    # => creates variable whihc is the message converted to lowercase and split into an array
#   decoded_sentence = []                       # => sets up an array for the decoded decoded_sentence
#   cipher = {"e" => "a",                       # => defines the cipher as a hash
#             "f" => "b",   
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # takes the input array, loops through each item in the list and prepares to perform a block on it
#     found_match = false  # =>  this is unnecessary, but it simply verifies that a character has been found. it stays false until it is true
#     cipher.each_key do |y| # each key takes only the key from the hash, and prepares to perform a block of
#       if x == y  # x is the char from the input, and y is the char from the cipher
#         puts "I am comparing x and y. X is #{x} and Y is #{y}." 
#         decoded_sentence << cipher[y]             # => adds the corresponding cipher letter to the new array
#         found_match = true             
#         break  # usually it would be so that the rest of the code doesnt have to run but in this case it is not needed
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" # => this simply looks for those symbols listed. if found, they correspond to a space.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # (0..9).to_a makes an array that is inclusive of all numbers from 0 to 9.
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # this is saying that if found_match is still false then add the character to the end of the array anyway
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")

#   if decoded_sentence.match(/\d+/) #this is looking for any multiple digits as a regular expression.
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # divides the number by 100
#   end  
#   return decoded_sentence # returns the decoded sentence after joining the array.      
# end

# Your Refactored Solution

def cipher(char)
  alphabet = ("a".."z").to_a
  index = alphabet.index(char)
  return alphabet[index - 4] if char =~ /[a-z]/
  return " " if char =~ /[@#$%^&*]/
  return char
end

def north_korean_cipher(coded_message)
  decoded_sentence = coded_message.each_char.map{ |i| cipher(i) }.join("")
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence       
end



<<<<<<< HEAD
# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

=======
# Driver Test Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver test code as well. Driver test code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")
>>>>>>> upstream/master

# Reflection
# This challenge was not difficult, but I was super impressed when my partner began refactoring the code.
# My refactored version was not nearly as clean as his, but he explained hwo everything worked and I began
#to understand. It's eye opening how the way oen thinks affects performance in this field.
#
#
#
#
#
 