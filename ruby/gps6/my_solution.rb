# Virus Predictor

# I worked on this challenge [by myself, with: Ethan].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# Access files is within the same directory
#'Require' can access files in any location just needs entire file path
require_relative 'state_data'

class VirusPredictor

   # Initializes each instance of a class with included instance variables/attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Method for accessing private methods and information within
  # Returns nil
  # def virus_effects
  #   predicted_deaths
  #   speed_of_spread
  # end

  #method that prints predicted_deaths and speed of spread methods values in a more meaningful way. 
  def to_s
    "#{@state} will lose #{predicted_deaths} people in this outbreak " + 
    "and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

  # Uses conditional statements to evaluate population density
  # If population is of a certain size, number of deaths is set equal to population size multiplied by decimal
  # Float value is rounded down with the .floor method
  # Printing a string using interpolation to call the state and the number of deaths 
  # Returns nil
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death = 0.4
    elsif @population_density >= 150
      death = 0.3
    elsif @population_density >= 100
      death = 0.2
    elsif @population_density >= 50
      death = 0.1
    else
      death = 0.05
    end

    number_of_deaths = (@population * death).floor

  end

   # Conditional statement that evaluates population density 
  # Using a speed variable set to zero, based on the size of the population
  # The speed increases as population decreases
  # Returns nil

  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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

    speed

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_hash|
  states = VirusPredictor.new(state, pop_hash[:population_density], pop_hash[:population])
  puts states.to_s
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

