# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 


# Our Refactored Solution
# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Jesson Foo
# 2)Nina Church

 # This is the file you should end up editing. 
 
def bakery_num(people, ff)
  inv = {"pie" => 8, "cake" => 6, "cookie" => 1}
  make = {"pie" => 0, "cake" => 0, "cookie" => 0}

  raise ArgumentError.new("You can't make that food") unless inv.include?(ff)
  return "You need to make #{people / inv[ff]} #{ff}(s)." if people % inv[ff] == 0
  case ff
      when "pie"
        make["pie"]    = people / inv[ff]
        make["cake"]   = (people % inv[ff]) / inv["cake"]
        make["cookie"] = (people % inv[ff]) % inv["cake"]
      when "cake"
        make["cake"]   = people / inv[ff]
        make["pie"]    = (people % inv[ff]) / inv["pie"]
        make["cookie"] = (people % inv[ff]) % inv["pie"]
    end
 return "You need to make #{make["pie"]} pie(s), #{make["cake"]} cake(s), and #{make["cookie"]} cookie(s)."
end

#-----------------------------------------------------------------------------------------------------
#DRIVER TEST CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(41, "cake")  == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)."
# p bakery_num(3, "apples") == "You can't make that food"
 
#  Reflection 



