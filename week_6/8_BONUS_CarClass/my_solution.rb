require_relative '../assert.rb'
# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# I want to be able to create a new car and set it's model and color so I can customize it in the video game.
# I need to be able to define a distance to drive so I can follow directions appropriately.
# I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
# I want to be able to turn left or right so I can navigate a city and follow directions.
# I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# I want to be able to stop the car so I can follow traffic signs and signals.
# I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.

# 2. Pseudocode

# Class car takes a model and color as a strings.

# car initialize sets @model = model, @color = color, @speed = 0, @distance = 0

# car drive method takes a distance and speed argument as floating point numbers
# and puts a string to tell you how far you have driven and how fast.  It also
# increments @distance the distance traveled and sets @speed to the inputed speed.

# car accelerate method takes a speed and adds it to the @speed variable

# car decelerate method takes a speed and subtracts it from the @speed variable. If
# this evaluates to less than zero then we set @speed to 0.

# car speed method puts how fast you are driving

# car stop sets @speed to 0 and puts You stopped moving

# car turn method takes a direction as a string and puts the direction you turned

# cat tot_distance method puts the @distance variable.


# 3. Initial Solution




# 4. Refactored Solution
class Car
    attr_accessor :model, :color, :distance, :speed
    
    def initialize(model, color)
      @model = model
      @color = color
      @speed = 0.0
      @distance = 0.0
    end
    
    def drive(distance=0.0,speed=0.0)
      	@speed = speed
      	@distance += distance
     		s = "you are driving #{distance} miles at #{@speed} mph"
     		p s
     		s
    end

    def accelerate(num)
      	@speed+=num
    end

    def decelerate(num)
      if num >= @speed
        stop
      else
        @speed-= num 
        speed
      end
    end
    
    def speed
      puts "you are traveling at #{@speed} mph"
      p @speed
      @speed
    end
    
    def stop
      @speed = 0
      s = "You stopped moving"
      p s
      s
    end
    
    def turn(direction)
      d = "you made a #{direction} turn"
      p d
      d
    end
    
    def tot_distance
      td = "you've driven #{@distance} miles total"
      p td
      td
    end
end







# 1. DRIVER TESTS GO BELOW THIS LINE

c = Car.new("Honda", "Black")
assert(1){c.drive(10,50).class 	== String}
assert(2){c.turn("left").class 	== String}
assert(3){c.drive(10,50).class 	== String}
assert(4){c.speed								== 50}
assert(5){c.turn('right').class == String}
assert(6){c.distance     				== 20}
assert(7){c.decelerate(15) 			== 35}
assert(8){c.decelerate(40)			== "You stopped moving"}




# 5. Reflection 