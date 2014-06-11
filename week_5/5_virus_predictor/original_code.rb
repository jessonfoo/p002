# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# => require relative basically says that this code will only run properly if the file stated
#in the string is present, and working.
require_relative 'state_data'

class VirusPredictor
# initialize takes 5 arguments, and creates instances of each.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
#virus effects calls on two other methods, predicted deaths which takes 3 arguments and speed of spread
# which takes two.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
                      # the scope of an instance variable, or the benefit of using an instance variable
                      # is that it is constant throughout the class unless changed.
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
           #private signifies that methods written below will not be accessible by other methods in other classes.
           # if it were placed at the top of virus_effects, not much would change since nothing there are no other methods
           # that are trying to use any of the methods within this class. However if there were, methods outside of the class
           # would not be able to access them.


   #Predicted deaths is a private method, it predicts the number of deaths by looking at the population density
   # depending on the density, the size of the population that will die by multiplying it by a number and then rounding down.        
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #speed of spread starts with an initial variable speed of 0 and increases by 0.5 for each level of population density
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key,value|
  key = VirusPredictor.new("#{key}", value[:population_density], value[:population], value[:region], value[:regional_spread])
  key.virus_effects
end