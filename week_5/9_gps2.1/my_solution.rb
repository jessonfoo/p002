# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 






# Our Refactored Solution
# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Jesson
# 2)Nina 

 # This is the file you should end up editing. 
 #takes an input of number of people as an integer and a type of baked good and outputs a string 
def bakery_num(num_of_people, fav_food) 
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #creates a hash with pie, cake, and cookies
  pie_qty = 0 #sets the object of pie quantity = 0
  cake_qty = 0 #sets the object of cake quantity = 0
  cookie_qty = 0 #sets the object of cookie quantity = 0

  unless my_list.has_key?(fav_food) raise ArgumentError.new("You can't make that food")
      
     fav_food_qty = my_list[fav_food]
  if num_of_people % fav_food_qty == 0  
      num_of_food = num_of_people / fav_food_qty #holds amount of each food type needed
      return "You need to make #{num_of_food} #{fav_food}(s)."
  else num_of_people % fav_food_qty != 0
       while num_of_people > 0 #needs to stop the method from running once there are no people left
       #following looks at number of people and tells you how much more you need to make (if necessary)
        if num_of_people / my_list["pie"] > 0
            pie_qty = num_of_people / my_list["pie"]
            num_of_people = num_of_people % my_list["pie"]
        elsif num_of_people / my_list["cake"] > 0
            cake_qty = num_of_people / my_list["cake"]
            num_of_people = num_of_people % my_list["cake"]
        else
                cookie_qty = num_of_people
            num_of_people = 0
        end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
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
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver test code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 


#  Reflection 



