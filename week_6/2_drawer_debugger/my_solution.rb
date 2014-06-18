# U2.W6: Drawer Debugger


# I worked on this challenge with Yohan Yi.


# 2. Original Code
class Drawer
  attr_accessor :contents

# Are there any more methods needed in this class?
  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
    puts "#{item.type} added"
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
    puts "#{item.type} removed"
    return item
  end

  def dump  # what should this method return?
    @contents.clear
    puts "Your drawer is empty."
  end

  def view_contents
      puts "The drawer contains:"
      @contents.each {|silverware| puts "- " + silverware.type }
  end
end


class Silverware
  attr_accessor(:type, :clean)

# Are there any more methods needed in this class?
  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
  	puts "silverware cleaned"
    @clean = true
  end
end

knife1 = Silverware.new("knife")
fork = Silverware.new("fork")
silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.view_contents
silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents
removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 
silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?
silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat
#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

 def assert
   raise "Assertion failed!" unless yield
 end

 assert {knife1.class == Silverware}
 assert {removed_knife.eat == false}
 assert {silverware_drawer.dump == nil}
 assert {fork.class == Silverware} 
 assert {silverware_drawer.class == Drawer}




# 5. Reflection 

# this challenge was annoying because when we were trying to get the code to run the error
# we kept getting could only be solved by changing the driver code. I felt like this challenge
# was good practice for debugging, but could be improved if the directions were more clear on
# whether we are allowed to change the driver code or not. 








