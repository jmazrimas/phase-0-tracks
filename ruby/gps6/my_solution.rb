# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require uses looks for the class/file you're attempt to access relative to the directory that you are running the calling code from
# require_relative looks for the class/file you're attempting to access relative to the directory where the calling code resides

require_relative 'state_data'

class VirusPredictor

# The initialize method runs when a new instance of VirusPredictor is created, and it populates the instance variables with data from
#   'state_data'

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# This method calls two other methods to return the text output to the user. This method is called below right after each instance is initialized

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# added these two methods to simplify calculating the rates of death and speed of spread
def death_rate
    case 
    when @population_density >= 200 then 0.4
    when @population_density >= 150 then 0.3
    when @population_density >= 100 then 0.2
    when @population_density >= 50 then 0.1
    else 0.05 
    end 
end

def spread_rate
    case 
    when @population_density >= 200 then 0.5
    when @population_density >= 150 then 1
    when @population_density >= 100 then 1.5
    when @population_density >= 50 then 2
    else 2.5 
    end 
end

# This method uses the data in the instance variable to do a basic calculation of how many deaths might occur based on the population density
  def predicted_deaths
    number_of_deaths = (@population * death_rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

# This method uses the data in the instance variables to do a basic calculation of speed of outbreak based on population density

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = spread_rate

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{spread_rate} months.\n\n"

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

STATE_DATA.each do |state, data_hash|
  new_predictor = VirusPredictor.new(state, data_hash[:population_density], data_hash[:population])
  new_predictor.virus_effects
end

#=======================================================================
# Reflection Section