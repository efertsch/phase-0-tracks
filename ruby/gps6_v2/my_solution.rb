# Virus Predictor

# I worked on this challenge [by myself, with: Aimee Gonzalez ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative suggests relative file path for file in same directory
# if require only, complete file path needed
require_relative 'state_data'

class VirusPredictor

  # Initializes state, population, and population density instances variables for each instance of VirusPredictor 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Is passed information from predicted deaths and speed of spread instance methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Easier to refactor 
  # More control 
  private

  # Calculates predicted deaths based on population density and population per state 
  # Prints statement with number of deaths per state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4 
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end
    number_of_deaths = (@population * factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates speed of spread of the virus based on population density conditionals
  # Prints how fast
  # Puts statement with speed of spread per state
  def speed_of_spread #in months
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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects



STATE_DATA.each do |state, pop_data|
  state_instance = VirusPredictor.new(state, pop_data[:population_density], pop_data[:population])
  state_instance.virus_effects 
end 


#=======================================================================
# Reflection Section